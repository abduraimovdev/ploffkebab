import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final GeolocatorPlatform _geolocatorPlatform = GeolocatorPlatform.instance;
  bool positionStreamStarted = false;

  final List<MapObject> mapObjects = [];

  final MapObjectId mapObjectId = const MapObjectId('normal_icon_placemark');

  Point point = const Point(latitude: 59.945933, longitude: 30.320045);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: [
                    YandexMap(
                      mapObjects: mapObjects,
                      logoAlignment: const MapAlignment(
                        horizontal: HorizontalAlignment.center,
                        vertical: VerticalAlignment.top,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon: const Icon(
                          Icons.location_pin,
                          color: Colors.orange,
                          size: 32,
                        ),
                        onPressed: () async {
                          final Position position = await getCurrentPosition();
                          // point.latitude = position.latitude;
                        },
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                const Text('Placemark with Assets Icon:'),
                ControlButton(
                    onPressed: () async {
                      if (mapObjects.any((el) => el.mapId == mapObjectId)) {
                        return;
                      }

                      final mapObject = PlacemarkMapObject(
                          mapId: mapObjectId,
                          point: const Point(
                              latitude: 59.945933, longitude: 30.320045),
                          onTap: (self, point) => print('Tapped me at $point'),
                          opacity: 0.7,
                          direction: 90,
                          isDraggable: true,
                          onDragStart: (_) => print('Drag start'),
                          onDrag: (_, point) => print('Drag at point $point'),
                          onDragEnd: (_) => print('Drag end'),
                          icon: PlacemarkIcon.single(
                            PlacemarkIconStyle(
                                image: BitmapDescriptor.fromAssetImage(
                                    'lib/assets/place.png'),
                                rotationType: RotationType.rotate),
                          ),
                          text: const PlacemarkText(
                              text: 'Point',
                              style: PlacemarkTextStyle(
                                  placement: TextStylePlacement.top,
                                  color: Colors.amber,
                                  outlineColor: Colors.black)));

                      setState(() {
                        mapObjects.add(mapObject);
                      });
                    },
                    title: 'Add'),
              ])))
            ]),
      );

  Future getCurrentPosition() async {
    final hasPermission = await _handlePermission();

    if (!hasPermission) {
      return;
    }

    final position = await _geolocatorPlatform.getCurrentPosition();
    return position;
  }

  Future<bool> _handlePermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await _geolocatorPlatform.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.

      return false;
    }

    permission = await _geolocatorPlatform.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.

        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.

      return false;
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.

    return true;
  }
}

class ControlButton extends StatelessWidget {
  const ControlButton(
      {super.key, required this.onPressed, required this.title});

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(title, textAlign: TextAlign.center),
        ),
      );
}
