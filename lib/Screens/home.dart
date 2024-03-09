import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartData = [
      PieChartSectionData(
        color: Colors.blue,
        value: 10,
        title: '10',
        radius: 40,
        titleStyle: const TextStyle(color: Colors.white),
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 30,
        title: '20',
        radius: 40,
        titleStyle: const TextStyle(color: Colors.white),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Home',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                Container(
                  margin: const EdgeInsets.all(5.0),
                  child: Image.asset("assets/img1.jpeg"),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  child: Image.asset("assets/img2.jpeg"),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  child: Image.asset("assets/img3.jpeg"),
                ),
              ],
            ),
            const Text("Monthly Analysis"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: PieChart(
                    PieChartData(
                      sections: pieChartData,
                      borderData: FlBorderData(show: false),
                      centerSpaceRadius: 40,
                      sectionsSpace: 0,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLegendItem(Colors.blue, 'Issues Solved'),
                    _buildLegendItem(Colors.green, 'Pending Issues'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                Container(
                  margin: const EdgeInsets.all(5.0),
                  child: Image.asset("assets/img4.jpeg"),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  child: Image.asset("assets/img5.jpeg"),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  child: Image.asset("assets/img6.jpeg"),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          color: color,
          margin: const EdgeInsets.only(right: 8.0),
        ),
        Text(text),
      ],
    );
  }
}
