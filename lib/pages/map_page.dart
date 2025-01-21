import 'package:bolt_clone_app/pages/search_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  final VoidCallback onDrawerPressed;

  MapPage({required this.onDrawerPressed});

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController? mapController;
  final LatLng _center = const LatLng(-6.776012, 39.178326);

  @override
  void initState() {
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 14.0,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, bottom: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SearchRoute(),
                                          ),
                                        );
                                      },
                                      child: TextField(
                                        enabled: false,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Where to?',
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: widget.onDrawerPressed,
                                    icon:
                                        Icon(Icons.schedule, color: Colors.red),
                                    label: Text(
                                      "Schedule",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.red,
                                      backgroundColor: Colors.white,
                                      elevation: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.access_time, color: Colors.grey),
                      title: Text("Paaking Street"),
                      subtitle: Text("Dar es Salaam"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.access_time, color: Colors.grey),
                      title: Text("Dar es Salaam"),
                      subtitle: Text("Tanzania"),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.location_pin, color: Colors.grey),
                      title: Text("Makumbusho bus stand"),
                      subtitle: Text("Dar es Salaam"),
                      onTap: () {},
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
