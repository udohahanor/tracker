import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    GoogleMapController _controller;
    final CameraPosition _initialPosition =
        CameraPosition(target: LatLng(6.5425171, 3.3210291), zoom: 10);

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.hybrid,
        onMapCreated: (GoogleMapController controller) {
          setState(() {
            _controller = controller;
          });
        },
        onTap: (cordinate) {
          _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
        },
        markers: {
          chivitaMarker,
        },
      ),
    );
  }

  Marker chivitaMarker = Marker(
    markerId: MarkerId('chivita'),
    position: LatLng(6.541578, 3.320793),
    infoWindow: InfoWindow(title: 'Chivita'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
}
