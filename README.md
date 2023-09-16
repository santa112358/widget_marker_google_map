# widget_marker_google_map
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

[![pub package](https://img.shields.io/pub/v/widget_marker_google_map.svg)](https://pub.dev/packages/widget_marker_google_map) <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>

Google map with widget markers.

<img src="https://user-images.githubusercontent.com/43510799/142984717-853a7686-503e-4e2c-b090-9767e25fb8d3.png" width=330>

## Set up
Follow the steps on [google_maps_flutter document.](https://pub.dev/packages/google_maps_flutter#getting-started)

## Usage

Same as google_maps_flutter except for `widgetMarkers`.

```dart
 WidgetMarkerGoogleMap(
    initialCameraPosition: shibuya,
    mapType: MapType.normal,
    widgetMarkers: [
      WidgetMarker(
        position: cafePosition,
        markerId: 'cafe',
        widget: Container(
          color: Colors.brown,
          padding: const EdgeInsets.all(2),
          child: const Icon(
            Icons.coffee,
            color: Colors.white,
            size: 64,
          ),
        ),
      ),
      WidgetMarker(
        position: clothesShopPosition,
        markerId: 'clothes',
        widget: Container(
          color: Colors.green,
          padding: const EdgeInsets.all(4),
          child: const Text(
            'shop',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
      ),
      WidgetMarker(
        position: hamburgerShopPosition,
        markerId: 'hamburger',
        widget: Container(
          color: Colors.red,
          padding: const EdgeInsets.all(2),
          child: const Icon(
            Icons.fastfood,
            color: Colors.yellow,
            size: 64,
          ),
        ),
      ),
    ],
  ),
```

### WidgetMarker

You need to insert the list of `WidgetMarker` to use widget markers.
 
Make sure that you still need to use `onTap` method when you use gestures.

```widget_marker.dart
class WidgetMarker {
  WidgetMarker({
    required this.position,
    required this.markerId,
    required this.widget,
    this.onTap,
  }) : assert(markerId.isNotEmpty);

  final LatLng position;

  /// Keep this unique, otherwise it will not appear.
  final String markerId;

  /// Gestures of widget is disabled.
  /// Use this callback instead.
  final VoidCallback? onTap;

  final Widget widget;
}
```

If you have any requests or questions, feel free to ask on [github](https://github.com/santa112358/widget_marker_google_map/issues).

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/davey06"><img src="https://avatars.githubusercontent.com/u/32833275?v=4?s=100" width="100px;" alt="Devin"/><br /><sub><b>Devin</b></sub></a><br /><a href="https://github.com/santa112358/widget_marker_google_map/commits?author=davey06" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!