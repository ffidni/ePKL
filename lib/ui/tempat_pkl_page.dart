import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:epkl/shared/theme.dart';
import 'package:epkl/ui/location_picker.dart';
import 'package:epkl/widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoding/geocoding.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class TempatPKLPage extends StatefulWidget {
  TempatPKLPage({super.key});

  @override
  State<TempatPKLPage> createState() => _TempatPKLPageState();
}

class _TempatPKLPageState extends State<TempatPKLPage> {
  Map<String, dynamic>? dataPkl = {
    "id": 2,
    "users_id": 1,
    "nama_tempat": 'Gamelab',
    "latitude": 37.7749,
    "longitude": -122.4194,
    "created_at": "2023-06-21T16:23:19.000000Z",
    "updated_at": "2023-06-21T16:24:00.000000Z"
  };

  List<Map<String, dynamic>> dataTempatMap = [
    {
      "nama_tempat": "Neo Santara",
      "latitude": 37.7749,
      "longitude": -122.4194,
    },
    {
      "nama_tempat": "Gamelab",
      "latitude": 37.7749,
      "longitude": -122.4194,
    },
  ];

  List<String> dataTempatString = [
    "Neo Santara",
    "Gamelab",
  ];

  final TextEditingController _nameC = TextEditingController();
  GlobalKey<AutoCompleteTextFieldState<Map<String, dynamic>>> key = GlobalKey();

  PickedData? pickedLocation;
  late LatLong? currentLocation;

  void requestLocationPermission() async {
    PermissionStatus permissionStatus = await Permission.location.request();
    if (permissionStatus.isGranted) {
      getCurrentLocation();
    } else if (permissionStatus.isDenied) {
      print('Location permission denied');
    } else if (permissionStatus.isPermanentlyDenied) {
      print('Location permission permanently denied');
    }
  }

  Future<LatLng?> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (serviceEnabled) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        setState(() {
          currentLocation = LatLong(position.latitude, position.longitude);
        });
      } catch (e) {
        print(e);
        return null;
      }
    } else {
      requestLocationPermission();
    }
  }

  void _fillForm() async {
    LatLong latlong = LatLong(dataPkl!['latitude'], dataPkl!['longitude']);
    String address =
        await getAddressFromCoordinates(latlong.latitude, latlong.longitude);
    setState(() {
      _nameC.text = dataPkl!['nama_tempat'];
      pickedLocation = PickedData(latlong, address, {});
    });
  }

  @override
  void initState() {
    super.initState();
    requestLocationPermission();
    if (dataPkl != null) {
      _fillForm();
    }
  }

  void _pickLocation() async {
    PickedData? tempPickedLocation = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationPicker(
          currentLocation: currentLocation,
          prevLocation: pickedLocation != null ? pickedLocation!.latLong : null,
        ),
      ),
    ) as PickedData?;
    if (tempPickedLocation != null) {
      setState(() {
        pickedLocation = tempPickedLocation;
      });
    }
  }

  Future<String> getAddressFromCoordinates(
      double latitude, double longitude) async {
    try {
      final addresses = await GeocodingPlatform.instance
          .placemarkFromCoordinates(latitude, longitude);

      if (addresses.isNotEmpty) {
        final placemark = addresses.first;
        return "${placemark.street}, ${placemark.locality}, ${placemark.postalCode}, ${placemark.country}";
      }
    } catch (error) {
      print('Error: $error');
    }

    return '';
  }

  void _launchGoogleMaps() async {
    final url =
        'https://www.google.com/maps/dir/${currentLocation!.latitude},${currentLocation!.longitude}/${dataPkl!["latitude"]},${dataPkl!["longitude"]}';
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Tempat PKL"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 3),
              Container(
                width: double.infinity,
                height: 321,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: dataPkl != null
                      ? Material(
                          elevation: 3,
                          child: Stack(
                            children: [
                              FlutterMap(
                                options: MapOptions(
                                  center: LatLng(
                                    dataPkl!['latitude'],
                                    dataPkl!['longitude'],
                                  ),
                                  zoom: 18,
                                ),
                                children: [
                                  TileLayer(
                                    urlTemplate:
                                        'https://mt0.google.com/vt/lyrs=m@221097413,&x={x}&y={y}&z={z}',
                                    subdomains: const ['x', 'y', 'z'],
                                  ),
                                  MarkerLayer(
                                    markers: [
                                      Marker(
                                        point: LatLng(
                                          dataPkl!['latitude'],
                                          dataPkl!['longitude'],
                                        ),
                                        builder: (context) => Icon(
                                          Icons.location_pin,
                                          color: redErrorColor,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              InkWell(
                                onTap: _pickLocation,
                                child: Container(
                                  width: double.infinity,
                                  height: 321,
                                ),
                              ),
                            ],
                          ),
                        )
                      : Text(
                          "Tempat PKL \nBelum di Tambah",
                          style: blackText.copyWith(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                ),
              ),
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Tempat PKL",
                    style: blackText.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(height: 8),
                  AutoCompleteTextField<Map<String, dynamic>>(
                    controller: _nameC,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: whiteColor,
                      hintText: "Tambahkan nama tempat pkl disini",
                      hintStyle: greyText.copyWith(
                        fontSize: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      contentPadding: const EdgeInsets.all(12),
                    ),
                    itemSubmitted: (data) async {
                      String address = await getAddressFromCoordinates(
                          data['latitude'], data['longitude']);
                      setState(() {
                        _nameC.text = data['nama_tempat'];
                        pickedLocation = PickedData(
                          LatLong(data['latitude'], data['longitude']),
                          address,
                          {},
                        );
                      });
                    },
                    clearOnSubmit: false,
                    key: key,
                    suggestions: dataTempatMap,
                    itemBuilder: (context, suggestion) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: ListTile(title: Text(suggestion['nama_tempat'])),
                    ),
                    itemSorter: (a, b) => 1,
                    itemFilter: (suggestion, query) => suggestion['nama_tempat']
                        .toString()
                        .toLowerCase()
                        .startsWith(
                          query.toLowerCase(),
                        ),
                  )
                ],
              ),
              const SizedBox(height: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alamat",
                    style: blackText.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: _pickLocation,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              pickedLocation == null
                                  ? "Pilih lokasi disini"
                                  : pickedLocation!.address,
                              style: pickedLocation == null
                                  ? greyText.copyWith(
                                      fontSize: 15,
                                    )
                                  : blackText.copyWith(
                                      fontSize: 15,
                                    ),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.location_on,
                            size: 26,
                            color: redErrorColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              RoundedButton(
                  onPressed: () {},
                  text: "${dataPkl == null ? 'Tambah' : 'Ubah'} Tempat"),
              const SizedBox(height: 15),
              if (dataPkl != null)
                RoundedButton(
                  onPressed: _launchGoogleMaps,
                  text: "Tampilkan Rute (Google Maps)",
                ),
            ],
          ),
        ),
      ),
    );
  }
}
