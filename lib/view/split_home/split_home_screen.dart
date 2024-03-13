// ignore_for_file: unnecessary_string_escapes, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:weather/view/home/components/app_bar.dart';
import 'package:weather/view/home/components/container_list.dart';
import 'package:weather/view/home/components/hours_list.dart';
import 'package:weather/view/split_home/components/split_info_card.dart';
import 'package:weather/view/split_home/components/location.dart';
import 'package:weather/view/home/home_screen.dart';
import 'package:weather/view/next-days/next_14_days.dart';
import 'package:weather/view/zagreb_home/zagreb_home_screen.dart';
import 'package:weather/view_model/controllers/home_controller.dart';
class SplitHomeScreen extends StatefulWidget {
  const SplitHomeScreen({super.key});
  @override
  State<SplitHomeScreen> createState() => _SplitHomeScreenState();
}

class _SplitHomeScreenState extends State<SplitHomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Text(
                      'Gradovi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Image.asset("assets/images/starCLear.png", fit: BoxFit.scaleDown,)),
                  ],
                ),
              ),
              ListTile(
                title: Text('Zadar'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                },
              ),
              ListTile(
                title: Text('Split'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SplitHomeScreen(),));
                },
              ),
              ListTile(
                title: Text('Zagreb'),
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ZagrebHomeScreen(),));
                },
              ),
            ],
          ),
        ),
      appBar: AppBar(
      
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Location(),
                Hero(
                    tag: 'TAG',
                    child: Material(
                        color: Colors.transparent,
                        child: SplitInfoCard())),
                ContainerList(),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Get.to(()=> NextDays()),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          'Danas',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Spacer(),
                        Text(
                          'Idućih 14 dana >',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                HoursList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


