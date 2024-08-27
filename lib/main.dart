import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workwise/db/db.dart';
import 'package:workwise/db/schemas.dart';
import 'package:workwise/layouts/appLayout.dart';

void main() {
  db.setConfig(schemaVersion: schemaVersion, schemas: schemas);
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const AppLayout());
}
