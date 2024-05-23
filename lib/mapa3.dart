import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa3> {
  final MapController _mapController = MapController(); // Adicione um MapController

  // Método para mover o mapa para uma determinada posição
  void _moveToPosition(LatLng position, double zoom) {
    _mapController.move(position, zoom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MAPS 3",
          style: TextStyle(
              color: Colors.purple

          ),),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.place),
            onPressed: () {
              // Função para recentralizar o mapa para a posição do segundo marcador
              _moveToPosition(LatLng(-23.36, -46.36), 13.0);
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController, // Passe o MapController para o FlutterMap
            options: MapOptions(center: LatLng(36.8, -42.9), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png?apikey=ef4ac6f6b2354644ad4f931c27287931',
                userAgentPackageName: 'com.mapa2.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(36.8, -42.9),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.white),
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
