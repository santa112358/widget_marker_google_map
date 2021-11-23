import 'package:flutter/material.dart';
import 'package:widget_marker_google_map/widget_marker_google_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const shibuya = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(35.6598003, 139.7023894),
    zoom: 15.151926040649414,
  );

  static const cafePosition = LatLng(35.659172, 139.7023894);
  static const clothesShopPosition = LatLng(35.659528, 139.698723);
  static const hamburgerShopPosition = LatLng(35.6604027, 139.6984333);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetMarkerGoogleMap(
        initialCameraPosition: shibuya,
        widgetMarkers: [
          WidgetMarker(
            position: cafePosition,
            markerId: 'cafe',
            widget: const _MarkerContent(
              backgroundColor: Colors.brown,
              icon: Icons.coffee,
            ),
          ),
          WidgetMarker(
            position: clothesShopPosition,
            markerId: 'clothes',
            widget: const _MarkerContent(
              backgroundColor: Colors.black,
              icon: Icons.shopping_cart_rounded,
            ),
          ),
          WidgetMarker(
            position: hamburgerShopPosition,
            markerId: 'hamburger',
            widget: const _MarkerContent(
              backgroundColor: Colors.red,
              icon: Icons.fastfood_rounded,
            ),
          ),
        ],
      ),
    );
  }
}

class _MarkerContent extends StatelessWidget {
  const _MarkerContent({
    Key? key,
    required this.backgroundColor,
    required this.icon,
  }) : super(key: key);

  final Color backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
