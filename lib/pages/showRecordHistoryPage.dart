import 'package:autowrench/constants/color.dart';
import 'package:flutter/material.dart';
import '../pages/carDetailsPage.dart';

class ShowRecordHistoryPage extends StatelessWidget {
  const ShowRecordHistoryPage({super.key});

  final List<Map<String, String>> records = const [
    {
      "recordId": "00001",

      "maintenanceType": "Oil Change",
      "dateOfService": "01/01/2024",
      "partsChanged": "None",
    },
    {
      "recordId": "00002",
      "maintenanceType": "Brake Pads",
      "dateOfService": "05/02/2024",
      "partsChanged": "Front Pads",
    },
    {
      "recordId": "00003",
      "maintenanceType": "Battery Replacement",
      "dateOfService": "10/03/2024",
      "partsChanged": "Battery",
    },
    {
      "recordId": "00004",
      "maintenanceType": "Oil Change",
      "dateOfService": "15/04/2024",
      "partsChanged": "None",
    },
    {
      "recordId": "00005",
      "maintenanceType": "Tire Rotation",
      "dateOfService": "20/05/2024",
      "partsChanged": "All Tires",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: const Text(
          "Maintenance Records",
          style: TextStyle(color: appBarTextColor),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 3,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: records.length,
        itemBuilder: (context, index) {
          final record = records[index];

          return Card(
            color: cardColor,
            margin: const EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Record ID: ${record["recordId"]}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Text("Car Tag: ${record["carTag"]}"),
                  const SizedBox(height: 6),
                  Text("Maintenance Type: ${record["maintenanceType"]}"),
                  const SizedBox(height: 6),
                  Text("Date of Service: ${record["dateOfService"]}"),
                  const SizedBox(height: 6),
                  Text("Parts Changed: ${record["partsChanged"]}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
