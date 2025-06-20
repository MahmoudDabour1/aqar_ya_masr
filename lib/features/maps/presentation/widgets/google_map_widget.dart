import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../../home/data/models/ad_details_model.dart';
import '../../logic/maps_cubit.dart';

class GoogleMapWidget extends StatefulWidget {
  final LocationData locationData;
  final AdDetailsModel? selectedAd;
  final HashSet<Marker> myMarkers;
  final Function(GoogleMapController) onMapCreated;
  final Function()? onClearSelectedAd;

  const GoogleMapWidget({
    super.key,
    required this.locationData,
    required this.selectedAd,
    required this.myMarkers,
    required this.onMapCreated, this.onClearSelectedAd,
  });

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  LatLng? _lastRequestedPosition;
  LatLng? currentTarget;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: LatLng(
            widget.locationData.latitude!, widget.locationData.longitude!),
        zoom: 12,
      ),
      markers: widget.myMarkers,
      onMapCreated: (controller) {
        widget.onMapCreated(controller);
      },
      onCameraMove: (position) {
        currentTarget = position.target;
      },
      onCameraIdle: () {
        if (currentTarget != null && _hasMovedSignificantly(currentTarget!)) {
          _lastRequestedPosition = currentTarget;
          context.read<MapsCubit>().getMapsData(
                currentTarget!.latitude,
                currentTarget!.longitude,
              );
        }
        setState(() {});
      },
      onTap: (LatLng position) {
        if (widget.onClearSelectedAd != null) {
          widget.onClearSelectedAd!();
        }
      },
      zoomControlsEnabled: false,
    );
  }

  bool _hasMovedSignificantly(LatLng newPosition) {
    if (_lastRequestedPosition == null) return true;
    const threshold = 0.03; // You can adjust this value as needed

    final latDiff =
        (newPosition.latitude - _lastRequestedPosition!.latitude).abs();
    final lngDiff =
        (newPosition.longitude - _lastRequestedPosition!.longitude).abs();

    return latDiff > threshold || lngDiff > threshold;
  }
}
