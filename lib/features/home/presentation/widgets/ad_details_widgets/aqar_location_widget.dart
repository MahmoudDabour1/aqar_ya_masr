import 'dart:collection';

import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class AqarLocationWidget extends StatefulWidget {
  final AdDetailsModel adModel;

  const AqarLocationWidget({super.key, required this.adModel});

  @override
  State<AqarLocationWidget> createState() => _AqarLocationWidgetState();
}

class _AqarLocationWidgetState extends State<AqarLocationWidget> {
  var myMarkers = HashSet<Marker>();
  late BitmapDescriptor customMarker;

  getCustomMarker() async {
    customMarker = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty,
      'assets/images/map_pin.png',
      mipmaps: true,
      bundle: rootBundle,
    );
  }

  @override
  void initState() {
    super.initState();
    getCustomMarker();
  }

  void _openInGoogleMaps(double lat, double lng) async {
    final url =
        Uri.parse("https://www.google.com/maps/search/?api=1&query=$lat,$lng");
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not launch Google Maps')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double lat = double.tryParse(
            widget.adModel.adDetailsData?.ad?.lat.toString() ?? '') ??
        0.0;
    final double lng = double.tryParse(
            widget.adModel.adDetailsData?.ad?.lng.toString() ?? '') ??
        0.0;
    return Stack(
      children: [
        SizedBox(
          height: 250.h,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(lat, lng),
              zoom: 18.4746,
            ),
            onMapCreated: (controller) {
              setState(() {
                myMarkers.add(
                  Marker(
                    markerId: const MarkerId("1"),
                    position: LatLng(lat, lng),
                    infoWindow: InfoWindow(
                      title: widget.adModel.adDetailsData?.ad?.title,
                    ),
                    icon: customMarker,
                  ),
                );
              });
            },
            markers: myMarkers,
            zoomGesturesEnabled: false,
            scrollGesturesEnabled: false,
            rotateGesturesEnabled: false,
            tiltGesturesEnabled: false,
            myLocationEnabled: false,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
          ),
        ),
        SizedBox(height: 10.h),
        Positioned(
          bottom: 8.h,
          right: 8.w,
          child: ElevatedButton.icon(
            onPressed: () => _openInGoogleMaps(lat, lng),
            icon: SvgPicture.asset(
              "assets/images/full_size.svg",
              width: 25.w,
              height: 25.h,
            ),
            label: Text(
              "أعرض الموقع فى خرائط جوجل",
              style: AppStyles.font18BlackMedium,
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              backgroundColor: AppColors.fillColor
            ),
          ),
        ),
      ],
    );
  }
}
