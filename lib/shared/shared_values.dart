import 'package:epkl/shared/theme.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> navigationList = [
  {
    "label": "Home",
    "icon": const Icon(Icons.home, size: 24),
  },
  {
    "label": "Tugas",
    "icon": const Icon(Icons.fact_check, size: 24),
  },
  {
    "label": "Jurnal",
    "icon": const Icon(Icons.edit, size: 24),
  },
  {
    "label": "Tempat PKL",
    "icon": const Icon(Icons.map, size: 24),
  }
];

Map<String, Color> prioritasList = {
  "tinggi": redPriorityColor,
  "menengah": yellowPriorityColor,
  "rendah": greenPriorityColor,
};

String apiBaseUrl = "http://localhost:8000/api";
