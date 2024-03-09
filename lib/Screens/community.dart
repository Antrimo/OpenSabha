import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Community(),
    );
  }
}

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  List<bool> isExpandedList = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Public Info',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w800,
              fontSize: 32,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index < 4; index++)
                  Container(
                    height: 210,
                    width: 300,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Meeting ${index + 1} Info",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "Department: Your Department",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "Agenda: Meeting Agenda",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            "Date: Meeting Date",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            getMeetingDescription(index),
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            maxLines: isExpandedList[index] ? null : 2,
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isExpandedList[index] = !isExpandedList[index];
                              });
                              if (isExpandedList[index]) {
                                _showExpandedDescriptionDialog(index + 1);
                              }
                            },
                            child: Container(
                              color: Colors.blue,
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                'Read More',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getMeetingDescription(int index) {
    switch (index) {
      case 0:
        return "Description: Short Description about Meeting 1...";
      case 1:
        return "Description: Short Description about Meeting 2...";
      case 2:
        return "Description: Short Description about Meeting 3...";
      case 3:
        return "Description: Short Description about Meeting 4...";
      default:
        return "";
    }
  }

  void _showExpandedDescriptionDialog(int meetingNumber) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Expanded Description - Meeting $meetingNumber'),
          content: SingleChildScrollView(
            child: Text(
              'Longer description about Meeting $meetingNumber goes here. This is an expanded description that provides more details about the meeting.',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
