import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as laLng;
import 'package:trip_list/apikey.dart';

class MapPage extends StatefulWidget {

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String _title = "Map Page";
  String APIKey = api_key;
  String URLKey = url_key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: laLng.LatLng(35.681, 139.767),
          zoom: 14.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: URLKey,
            additionalOptions: {
              'accessToken' : APIKey,
              'id' : 'mapbox.satellite'
            },
            attributionBuilder: (_) {
              return Text("© OpenStreetMap contributors");
            },
          ),
          // サークルマーカー設定
          CircleLayerOptions(
            circles: [
              // サークルマーカー1設定
              CircleMarker(
                color: Colors.indigo.withOpacity(0.9),
                radius: 10,
                borderColor: Colors.white.withOpacity(0.9),
                borderStrokeWidth: 3,
                point: laLng.LatLng(35.681, 139.760),
              ),
              // サークルマーカー2設定
              CircleMarker(
                color: Colors.teal.withOpacity(0.5),
                radius: 15,
                borderColor: Colors.white.withOpacity(0.5),
                borderStrokeWidth: 5,
                point: laLng.LatLng(35.675, 139.770),
              ),
              // サークルマーカー3設定
              CircleMarker(
                color: Colors.yellow.withOpacity(0.7),
                radius: 20,
                borderColor: Colors.white.withOpacity(0.7),
                borderStrokeWidth: 6,
                point: laLng.LatLng(35.687, 139.775),
              ),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: laLng.LatLng(35.681, 139.760),
                builder: (ctx) =>
                    Container(
                      child: FlutterLogo(),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
