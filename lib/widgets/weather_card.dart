import 'package:flutter/material.dart';


//Building the weather card here
class WeatherCard extends StatelessWidget {
  //We take in a list of weather data
  final List<Map<String, dynamic>> forecastData;

  //Accept the list inside the constructor
  const WeatherCard({super.key, required this.forecastData});

  //The actual card widget
  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: const LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Weather Forecast',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              const Text(
                'Bloemfontein',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: forecastData.map((dayData) {
                  IconData icon;
                  if (dayData['condition'] == 'rainy') {
                    icon = Icons.cloud;
                  } else if (dayData['condition'] == 'stormy') {
                    icon = Icons.flash_on;
                  } else {
                    icon = Icons.wb_sunny;
                  }

                  return Column(
                    children: [
                      Icon(
                        icon,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${dayData['temperature']}°C',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        dayData['day'],
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}