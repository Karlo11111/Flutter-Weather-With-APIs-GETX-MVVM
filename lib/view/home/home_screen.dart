import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/view/home/components/app_bar.dart';
import 'package:weather/view/home/components/container_list.dart';
import 'package:weather/view/home/components/hours_list.dart';
import 'package:weather/view/home/components/info_card.dart';
import 'package:weather/view/home/components/location.dart';
import 'package:weather/view/next-days/next_14_days.dart';
import 'package:weather/view_model/controllers/home_controller.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(

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
                        child: InfoCard())),
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


