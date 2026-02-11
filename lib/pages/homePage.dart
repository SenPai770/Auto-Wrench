import 'package:autowrench/constants/color.dart';
import 'package:flutter/material.dart';
import '../pages/addNewCarPage.dart';
import '../pages/carDetailsPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> usersWithCars = [
    {
      "userName": "Ali's Car ",
      "tagName": "BMW M4",
    },
    {
      "userName": "Mohammed's Car",
      "tagName": "Tesla Model S",
    },
    {
      "userName": "Hassan's Car",
      "tagName": "Audi RS7",
    },
    {
      "userName": "Abdulmhsen's Car",
      "tagName": "Mustange G3",
    },
    {
      "userName": "Bader's Car",
      "tagName": "Yaris",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddNewCarPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: buttonTextColor,
      ),
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: const Text(
          "Auto Wrench",
          style: TextStyle(color: appBarTextColor),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),

        elevation: 3,
      ),
      body: usersWithCars.isEmpty  //statement ? do if true : do otherwise
          ? const Center(
        child: Text(
          "No cars yet!!\nClick + to add one 🚗",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      )
          : ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: usersWithCars.length,
        itemBuilder: (context, index) {
          final user = usersWithCars[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailsPage(),
                ),
              );
            },
            child: Card(
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
                      user["userName"]!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(user["tagName"]!),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                              color: Color(0xFF456882),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Delete",
                            style: TextStyle(
                              color: Color(0xFF456882),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}
