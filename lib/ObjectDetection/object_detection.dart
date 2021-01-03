import 'package:flutter/material.dart';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

Size screenSize;
List<CameraDescription> cameras;

class ObjectDetection extends StatefulWidget {
  ObjectDetection(List<CameraDescription> cameras) {
    cameras = cameras;
  }

  @override
  _ObjectDetectionState createState() => _ObjectDetectionState();
}

class _ObjectDetectionState extends State<ObjectDetection> {
  File _image;
  List _recognitions;
  bool _busy;
  double _imageWidth, _imageHeight;

  final imagePicker = ImagePicker();

  loadTfModel() async {
    await Tflite.loadModel(
      model: "assets/models/ssd_mobilenet.tflite",
      labels: "assets/models/labels.txt",
    );
  }

  detectObject(File image) async {
    var recognitions = await Tflite.detectObjectOnImage(
        path: image.path,
        model: "SSDMobileNet",
        imageMean: 127.5,
        imageStd: 127.5,
        threshold: 0.4,
        numResultsPerClass: 10,
        asynch: true
    );
    FileImage(image)
        .resolve(ImageConfiguration())
        .addListener((ImageStreamListener((ImageInfo info, bool _) {
      setState(() {
        _imageWidth = info.image.width.toDouble();
        _imageHeight = info.image.height.toDouble();
      });
    })));
    setState(() {
      _recognitions = recognitions;
    });
  }

  @override
  void initState() {
    super.initState();
    _busy = true;
    loadTfModel().then((val) {{
      setState(() {
        _busy = false;
      });
    }});
  }

  List<Widget> renderBoxes(Size screen) {
    if (_recognitions == null) return [];
    if (_imageWidth == null || _imageHeight == null) return [];

    double factorX = screen.width;
    double factorY = _imageHeight / _imageHeight * screen.width;

    Color pink = Colors.pinkAccent[700];

    return _recognitions.map((re) {
      return Container(
        child: Positioned(
          left: re["rect"]["x"] * factorX,
          top: re["rect"]["y"] * factorY,
          width: re["rect"]["w"] * factorX,
          height: re["rect"]["h"] * factorY,
          child: ((re["confidenceInClass"] > 0.50))? Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: pink,
                  width: 3,
                )
            ),
            child: Text(
              "${re["detectedClass"]} ${(re["confidenceInClass"] * 100).toStringAsFixed(0)}%",
              style: TextStyle(
                background: Paint()..color = pink,
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ) : Container(),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;

    List<Widget> stackChildren = [];

    stackChildren.add(
        Positioned(
          child: _image == null ?
          getImageFromCamera()
              :
          Container(
              child:Image.file(_image)
          ),
        )
    );

    stackChildren.addAll(renderBoxes(screenSize));

    if (_busy) {
      stackChildren.add(
          Center(
            child: CircularProgressIndicator(),
          )
      );
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: screenSize.width * 0.06,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: stackChildren,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future getImageFromCamera() async {
    final pickedFile = await imagePicker.getImage(
      source: ImageSource.camera,
      maxWidth: screenSize.width,
      maxHeight: screenSize.height * 0.7,
    );

    setState(() {
      if(pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("No image Selected");
      }
    });
    detectObject(_image);
  }

  Future getImageFromGallery() async {
    final pickedFile = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      if(pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("No image Selected");
      }
    });
    detectObject(_image);
  }
}