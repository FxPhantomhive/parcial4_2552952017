import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(Parcial4());
}

final MarkerId carce = MarkerId("arce");
final MarkerId sal = MarkerId("sal");
final MarkerId csoyapa = MarkerId("soyapa");
final MarkerId jaci = MarkerId("sjacinto");

class Parcial4 extends StatefulWidget {
  Parcial4({Key? key}) : super(key: key);

  @override
  State<Parcial4> createState() => _Parcial4State();
}

final Marker Arce = Marker(
    markerId: carce,
    position: LatLng(13.698458005688227, -89.20684174186539),
    infoWindow: InfoWindow(
        title: "MovilSV - Calle Arce",
        snippet: "Visitanos en sucursal de MovilSV, Calle arce"));
final Marker Salmun = Marker(
    markerId: sal,
    position: LatLng(13.701138585452851, -89.22438124954436),
    infoWindow: InfoWindow(
        title: "MovilSV -  El Salvador del Mundo",
        snippet: "Visitanos en sucursal de MovilSV, El Salvador del mundo"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet));

final Marker Csoya = Marker(
    markerId: csoyapa,
    position: LatLng(13.710290825530766, -89.14251157417888),
    infoWindow: InfoWindow(
        title: "MovilSV - Centro de Soyapango",
        snippet: "Visitanos en sucursal de MovilSV, Soyapango"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta));

final Marker CSjacinto = Marker(
    markerId: jaci,
    position: LatLng(13.685999792101782, -89.18822324047413),
    infoWindow: InfoWindow(
        title: "MovilSV - San Jacinto",
        snippet: "Visitanos en sucursal de MovilSV, San Jacinto"),
    onTap: () {},
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue));

final baseSet = <Marker>{Arce, Salmun, Csoya, CSjacinto};
final CameraPosition _pocisionini = CameraPosition(
    //bearing: 192.8334901395799,
    target: LatLng(13.698796890705724, -89.18390301818049),
    //tilt: 59.440717697143555,
    zoom: 11.151926040649414);

class _Parcial4State extends State<Parcial4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("P4 Google Maps API 25-5295-2017"),
        ),
        body: Container(
          width: 360,
          height: 700,
          child: Container(
              child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 500,
                  width: 650,
                  child: GoogleMap(
                    initialCameraPosition: _pocisionini,
                    compassEnabled: true,
                    myLocationButtonEnabled: true,
                    onMapCreated: (GoogleMapController controller) {},
                    markers: Set<Marker>.of(baseSet),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
