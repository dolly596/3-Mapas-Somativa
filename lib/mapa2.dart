import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa2 extends StatefulWidget {
  const Mapa2({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa2> {
  final MapController _mapController = MapController(); // Adicione um MapController

  // Método para mover o mapa para uma determinada posição
  void _moveToPosition(LatLng position, double zoom) {
    _mapController.move(position, zoom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MAPS 2",
          style: TextStyle(
              color: Colors.lightBlue

          ),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.place),
            onPressed: () {
              // Função para recentralizar o mapa para a posição do segundo marcador
              _moveToPosition(LatLng(1.19, 6.00), 13.0);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController, // Passe o MapController para o FlutterMap
            options: MapOptions(center: LatLng(1.19, 6.00), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=ef4ac6f6b2354644ad4f931c27287931',
                userAgentPackageName: 'com.mapa2.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(1.19,  6.00),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
