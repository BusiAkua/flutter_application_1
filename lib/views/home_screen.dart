import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Funding_screen.dart';
import 'package:flutter_application_1/views/market_screen.dart';
import 'package:flutter_application_1/views/store_screen.dart';
//import 'package:../views/store_screen.dart';
import 'package:provider/provider.dart';
import '../view_models/weather_view_model.dart';
import '../widgets/weather_card.dart';
//import '/views/store_screen.dart';
//import '/views/Funding_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Selected index of the bottom nav
  int _selectedIndex = 0;

  //Completely useless method for convenience, changes the index thus changing the screen when bottom nav option is changed
  void _onBottomNavTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //The build widget of the home screen
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<WeatherForecastViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'AgriYouth Dashboard',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ),
        elevation: 4.0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.black54,
            ),
            onPressed: () {
              //We navigate to profile page
            },
          ),
        ],
      ),

      //The drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'AgriYouth Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text('Store'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
          ],
        ),
      ),

      //Checking whats selected before deciding what to show on the page body
      body: _selectedIndex == 0
          ?Column(
           children: [
           viewModel.isLoading ? const Center(child: CircularProgressIndicator(),)
           : WeatherCard(forecastData: viewModel.forecastData),

          //Farmtools
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            margin: EdgeInsets.all(5),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child:  Text("Farming Tools",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,),
                  )
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      child: Text("Calculator"),
                    ),

                   Container(
                    child: Text("Soil"),
                   ),

                   Container(
                    child: Text("Livestock"),
                   ),
                    
                  Container(
                    child: Text("Guide"),
                    ),

                    Container(
                      child: Text("Records"),
                    ) 
                  ],

                ),
            
            ],
            )
          ),

        // Market and Funding Row
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              //Market
              
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(50,20,50,20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => MarketsScreen()));
                  },
                  child: Text("Markets",
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,),),   
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(50,20,50,20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => fundingScreen()));
                  },
                  child: Text("Funding",
                  style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,),),   
                ),)
            ],),),

            //News and Training
            Container(
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  color: Colors.white,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(50,20,60,20),
                child: Text("News",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),),

                Container(
                  color: Colors.white,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.fromLTRB(50,20,50,20),
                child: Text("Training",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
                )
              ],)
            ),

            //Forum
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: Text("AgriYouth Forum",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
          )

          : const StoreScreen(),


      //The bottom nav
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onBottomNavTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Store',
          ),
        ],

        //Show/Hide selected/Unselected Item label
        showUnselectedLabels: false,
        showSelectedLabels: true,
      ),
    );
  }
}