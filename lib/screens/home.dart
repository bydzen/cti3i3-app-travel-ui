import 'package:flutter/material.dart';
import 'package:flutter_travel_app_challenge/models/destination.dart';
import 'package:flutter_travel_app_challenge/services/destination_service.dart';
import 'package:flutter_travel_app_challenge/widgets/recommended_destination.dart';
import 'package:flutter_travel_app_challenge/widgets/searchbar.dart';
import 'package:flutter_travel_app_challenge/widgets/top_destination.dart';
import 'package:flutter_travel_app_challenge/screens/details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DestinationService destinationService = DestinationService();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: buildTabBar(context),
          body: buildTabBarView(context),
        ),
      ),
    );
  }

  TabBarView buildTabBarView(BuildContext context) {
    return TabBarView(
      children: [
        SingleChildScrollView(
          child: Container(
            color: const Color(0xfff6f8fb),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  buildProfileWidget(),
                  buildSearchWidget(),
                  buildRecommendedWidget(),
                  buildTopWidget(),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: const Color(0xfff6f8fb),
        ),
        Container(
          color: const Color(0xfff6f8fb),
        ),
        Container(
          color: const Color(0xfff6f8fb),
        ),
      ],
    );
  }

  Widget buildTabBar(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      child: const TabBar(
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.map,
              size: 30.0,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.bookmark,
              size: 30.0,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.person,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileWidget() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage('images/profile.png'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'RockoFLF',
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      'Bagas Alfito',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RockoFLF Bold',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              const Icon(
                Icons.notifications,
                size: 30,
                color: Colors.grey,
              ),
              Positioned(
                top: 1,
                right: 3,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSearchWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          const Expanded(
            child: SearchBar(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Colors.blue,
              ),
              width: 48,
              height: 48,
              child: const Icon(
                Icons.settings_input_component,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecommendedWidget() {
    List<Destination> recommendedDestinations =
        destinationService.recommendedDestinations;

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 6.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Expanded(
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'RockoFLF Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 260.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommendedDestinations.length,
                itemBuilder: (BuildContext context, int index) {
                  final Destination destination =
                      recommendedDestinations[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Details(destination: destination),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 20.0,
                      ),
                      child: RecommendedDestination(
                        destination: destination,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTopWidget() {
    List<Destination> topDestinations = destinationService.topDestinations;
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Expanded(
                    child: Text(
                      'Top Destination',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RockoFLF Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topDestinations.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Destination destination = topDestinations[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Details(destination: destination),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 20.0,
                        ),
                        child: TopDestination(
                          destination: destination,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
