import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
Future<BitmapDescriptor> createCustomMarker(String price) async {
  final pictureRecorder = PictureRecorder();
  final canvas = Canvas(pictureRecorder);
  final size = Size(300.w, 100.h); // size of marker

  final paint = Paint()..color = Colors.deepPurple;
  final rrect = RRect.fromRectAndRadius(
    Rect.fromLTWH(0, 0, size.width, size.height),
    Radius.circular(12),
  );

  canvas.drawRRect(rrect, paint);

  final textPainter = TextPainter(
    textDirection: TextDirection.ltr,
  );

  textPainter.text = TextSpan(
    text: price,
    style: TextStyle(
        color: Colors.white, fontSize: 40.sp, fontWeight: FontWeight.bold),
  );

  textPainter.layout(
    minWidth: 0,
    maxWidth: size.width,
  );

  final offset = Offset(
    (size.width - textPainter.width) / 2,
    (size.height - textPainter.height) / 2,
  );

  textPainter.paint(canvas, offset);

  final image = await pictureRecorder.endRecording().toImage(
    size.width.toInt(),
    size.height.toInt(),
  );

  final byteData = await image.toByteData(format: ImageByteFormat.png);
  final bytes = byteData!.buffer.asUint8List();

  return BitmapDescriptor.fromBytes(bytes);
}
