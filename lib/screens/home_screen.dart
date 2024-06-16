import 'package:flight_ticket_app/base/res/styles/app_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // EVERTHING WILL BE INSIDE A COLUMN
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // GREETINGS AND LOGO
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // GOOD MORNING TEXT
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headlineStyle1,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headlineStyle1,
                        ),
                      ],
                    ),

                    // LOGO
                    Container(
                      width: 70,
                      height: 100,
                      color: Color(0xffff0000),
                    ),
                  ],
                ),

                // SEARCH BAR
                Row(
                  children: [],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
