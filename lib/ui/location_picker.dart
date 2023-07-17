import 'package:epkl/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

class LocationPicker extends StatelessWidget {
  LocationPicker({super.key, this.currentLocation, this.prevLocation});

  LatLong? currentLocation;
  LatLong? prevLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilih Lokasi"),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: FlutterLocationPicker(
          initPosition: prevLocation != null ? prevLocation! : currentLocation!,
          zoomButtonsColor: whiteColor,
          zoomButtonsBackgroundColor: greenColor,
          locationButtonBackgroundColor: greenColor,
          locationButtonsColor: whiteColor,
          initZoom: 18,
          selectLocationButtonText: "Pilih Lokasi Ini Sebagai Tempat PKL",
          onPicked: (pickedData) {
            Navigator.pop(context, pickedData);
          },
          urlTemplate:
              'https://mt0.google.com/vt/lyrs=m@221097413,&x={x}&y={y}&z={z}',
        ),
      ),
    );
  }
}
