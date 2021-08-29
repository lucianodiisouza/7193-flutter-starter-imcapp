import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:imcflutter/ui/android/material.app.dart';
import 'package:imcflutter/ui/ios/cupertino-app.dart';

void main() =>
    Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());
