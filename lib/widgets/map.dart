import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Map extends StatefulWidget {
  @override
  State<Map> createState() => MapState();
}

class MapState extends State<Map> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _currentPosition = CameraPosition(
    target: LatLng(-12.1363018, -76.9807325),
    zoom: 17.9, // 14.4746
  );

  @override
  void initState() {
    super.initState();
    _setDefaults();
  }

  Future<void> _setDefaults() async {
    var location = await _getCurrentLocation();
    setState(() {
      _currentPosition = CameraPosition(
        target: LatLng(location.latitude, location.longitude),
        zoom: 17.9, // 14.4746
      );
    });
  }

  Future<LocationData> _getCurrentLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return null;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }

    _locationData = await location.getLocation();

    return _locationData ?? null;
  }

  Future<void> _goToMyPosition() async {
    LocationData currentLocation = await _getCurrentLocation();

    if (currentLocation != null) {
      var myPosition = CameraPosition(
        target: LatLng(currentLocation.latitude, currentLocation.longitude),
        zoom: 17.9, // 14.4746
      );

      setState(() {
        _currentPosition = myPosition;
      });
      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(myPosition));
    }
  }

  @override
  Widget build(BuildContext context) {
    final map = GoogleMap(
      minMaxZoomPreference: MinMaxZoomPreference(0, 20),
      zoomControlsEnabled: false,
      mapType: MapType.normal,
      initialCameraPosition: _currentPosition,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );

    final searchInput = Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        textColor: Colors.black54,
        elevation: 6.0,
        color: Colors.white,
        onPressed: () => print("Buscando destino"
            "..."),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.purple[400]),
          borderRadius: BorderRadius.circular(44.0),
        ),
        child: Row(children: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              '¿A dónde vas?',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
            ),
          )
        ],)),
    );

    final currentLocationButton = FloatingActionButton(
      onPressed: _goToMyPosition,
      child: Icon(Icons.my_location),
    );

    return new Scaffold(
      body: Stack(
        children: <Widget>[
          map,
          Align(
            alignment: Alignment(0, -0.85),
            child: searchInput,
          ),
        ],
      ),
      floatingActionButton: currentLocationButton,
    );
  }
}
