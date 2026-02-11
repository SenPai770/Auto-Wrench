import 'package:autowrench/pages/updateCarStatusPage.dart';

import '../components/myButton2.dart';
import 'package:autowrench/constants/color.dart';
import 'package:flutter/material.dart';
import '../components/carSatusCard.dart'; // make sure this path is correct
import '../pages/showRecordHistoryPage.dart';
class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> carStatusList = [
      {
        "title": "Engine Oil Change",
        "distance": "200km / 5000km",
        "icon": Icons.oil_barrel,
      },
      {
        "title": "Caliper Change",
        "distance": "00 / 00",
        "icon": Icons.settings,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: const Text(
          "Car Status",
          style: TextStyle(color: appBarTextColor),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 3,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Car name card
            Card(
              color: cardColor,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "BMW M4",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Parent container for all status cards
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: appBarBackgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(carStatusList.length, (index) {
                    final status = carStatusList[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CarStatusCard(
                        title: status["title"],
                        distanceText: status["distance"],
                        icon: status["icon"],
                      ),
                    );
                  }),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Bottom buttons
            // Bottom buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Show Record History Button
              MyButton2(
                  text: "Show Record History",
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowRecordHistoryPage()
                      ));}),

                //TODO: update mileage from here
                //TODO: next versions it wiil be named to update status, and need to have funcnality
                MyButton2(
                    text: "Update Mileage",
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateCarStatusPage()
                          ));

                    })
              ],
            ),

          ],
        ),
      ),
    );
  }
}
