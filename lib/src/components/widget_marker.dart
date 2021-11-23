import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WidgetMarker {
  WidgetMarker({
    required this.position,
    required this.markerId,
    required this.widget,
  }) : assert(markerId.isNotEmpty);

  final LatLng position;

  /// This has to be unique,otherwise it will not be shown.
  final String markerId;

  final Widget widget;
}
