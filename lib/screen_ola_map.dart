import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ola_map_flutter/ola_map_flutter.dart';

class ScreenOlaMap extends StatefulWidget {
  const ScreenOlaMap({super.key});

  @override
  State<ScreenOlaMap> createState() => _ScreenOlaMapState();
}

class _ScreenOlaMapState extends State<ScreenOlaMap> {
  final Completer<OlaMapController> olaController = Completer<OlaMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Ola Map'),
      ),
      body: SafeArea(
        child: OlaMap(
          apiKey: "tg0Yv3TCHhVR-xK1W3a6SUgsFe",
          showCurrentLocation: true,
          showZoomControls: true,
          showMyLocationButton: true,
          onPlatformViewCreated: (OlaMapController controller) {
            olaController.complete(controller);
          },
        ),
      ),
    );
  }
}
