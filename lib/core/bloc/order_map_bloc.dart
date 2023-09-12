import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../utils/utils.dart';
import 'order_map_state.dart';

class OrderMapBloc extends Cubit<OrderMapState> {
  OrderMapBloc() : super(const OrderMapState({}, {}));

  void loadMap() async {
    Set<Polyline> polylines = {};
    var polyline = await _getPolyLine();
    Set<Marker> markersSet = {};
    markersSet.addAll(markers);
    polylines.add(polyline);
    emit(OrderMapState(polylines, markersSet));
  }

  Future<Polyline> _getPolyLine() async {
    PolylineId id = const PolylineId('poly');
    Polyline polyline = Polyline(
      width: 3,
      polylineId: id,
      points: await _getPolylineCoordinates(
        const LatLng(37.42796133580664, -122.085749655962),
        const LatLng(37.42496133180663, -122.081743655960),
      ),
    );
    return polyline;
  }

  Future<List<LatLng>> _getPolylineCoordinates(
      LatLng pickupLatLng, LatLng dropLatLng) async {
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      apiKey,
      PointLatLng(pickupLatLng.latitude, pickupLatLng.longitude),
      PointLatLng(dropLatLng.latitude, dropLatLng.longitude),
    );
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    }
    log(polylineCoordinates.toString());
    return polylineCoordinates;
  }

  List<Marker> markers = [
    Marker(
      markerId: const MarkerId('mark1'),
      position: const LatLng(37.42796133580664, -122.085749655962),
      icon: markerss.first,
    ),
    // Marker(
    //   markerId: MarkerId('mark2'),
    //   position: LatLng(37.42496133180663, -122.081743655960),
    //   icon: markerss[1],
    // ),
    // Marker(
    //   markerId: MarkerId('mark3'),
    //   position: LatLng(37.42196183580660, -122.089743655967),
    //   icon: markerss[2],
    // )
  ];
}
