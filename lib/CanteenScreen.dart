import 'package:flutter/material.dart'; // ignore_for_file: file_names
import 'package:intl/intl.dart';
import 'dart:async';

class CanteenScreen extends StatelessWidget {
  const CanteenScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 255, 255, 255),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 2.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: Row(
                children: [
                  const Icon(
                    Icons.menu,
                    size: 35.0,
                  ),
                  Image.asset(
                    'images/logo.png',
                    height: 67.0,
                    width: 67.0,
                  ),
                  const Text(
                    'FAIR GROUP',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '⋮',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Welcome to PRODUCT-REQUISITION, rms!',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 94, 11),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: 524, // Adjust the width of the first box
                    height: 50, // Adjust the height of the first box
                    color: Color.fromRGBO(131, 173, 192, 1),
                    child: const Center(
                      child: Text(
                        'Last 7 Days Attendance',
                        style: TextStyle(
                          fontSize: 16, // Adjust the font size
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 170, 200, 185),
                    child: SingleChildScrollView(
                      scrollDirection:
                          Axis.horizontal, // Enable horizontal scrolling
                      child: DataTable(
                        dataRowHeight: 50.0, // Adjust the height of each row
                        columnSpacing: 30.0, // Adjust the column spacing
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text('Date'),
                          ),
                          DataColumn(
                            label: Text('In Time'),
                          ),
                          DataColumn(
                            label: Text('Out Time'),
                          ),
                          DataColumn(
                            label: Text('Status'),
                          ),
                        ],
                        rows: [
                          DataRow(
                            cells: const [
                              DataCell(Text('Thursday, October 26, 2023')),
                              DataCell(Text('8:29:59 AM')),
                              DataCell(Text('6:00:01 PM')),
                              DataCell(
                                Text(
                                  'PRESENT',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 10, 80, 13),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          DataRow(
                            cells: const [
                              DataCell(Text('Wednesday, October 25, 2023')),
                              DataCell(Text('8:29:59 AM')),
                              DataCell(Text('6:00:01 PM')),
                              DataCell(
                                Text(
                                  'PRESENT',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 10, 80, 13),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          DataRow(
                            cells: const [
                              DataCell(Text('Tuesday, October 24, 2023')),
                              DataCell(Text('8:29:59 AM')),
                              DataCell(Text('6:00:01 PM')),
                              DataCell(
                                Text(
                                  'PRESENT',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 10, 80, 13),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          DataRow(
                            cells: const [
                              DataCell(Text('Monday, October 23, 2023')),
                              DataCell(Text('8:29:59 AM')),
                              DataCell(Text('6:00:01 PM')),
                              DataCell(
                                Text(
                                  'PRESENT',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 10, 80, 13),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          DataRow(
                            cells: const [
                              DataCell(Text('Sunday, October 22, 2023')),
                              DataCell(Text('8:29:59 AM')),
                              DataCell(Text('6:00:01 PM')),
                              DataCell(
                                Text(
                                  'PRESENT',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 24, 81, 27),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          DataRow(
                            cells: const [
                              DataCell(Text('Saturday, October 21, 2023')),
                              DataCell(Text('8:29:59 AM')),
                              DataCell(Text('6:00:01 PM')),
                              DataCell(
                                Text(
                                  'PRESENT',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 10, 80, 13),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          DataRow(
                            cells: const [
                              DataCell(Text('Friday, October 20, 2023')),
                              DataCell(Text('8:29:59 AM')),
                              DataCell(Text('6:00:01 PM')),
                              DataCell(
                                Text(
                                  'PRESENT',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 10, 80, 13),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          // Add more rows with data as needed
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: 450, // Adjust the width of the first box
                    height: 50, // Adjust the height of the first box
                    color: Color.fromRGBO(131, 173, 192, 1),
                    child: const Center(
                      child: Text(
                        'Password Active Status',
                        style: TextStyle(
                          fontSize: 16, // Adjust the font size
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(
                        255, 140, 194, 168), // Green background color
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Center(
                        child: Container(
                          width: 350, // Adjust the width of the first box
                          height: 90, // Adjust the height of the first box
                          child: Center(
                            child: Container(
                              width: 350, // Adjust the width of the second box
                              height: 40, // Adjust the height of the second box
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 145, 31, 22),
                                    Color.fromARGB(255, 145, 31, 22),
                                    Color.fromARGB(255, 1, 107, 4),
                                    Color.fromARGB(255, 1, 107, 4),
                                  ],
                                  stops: [0.0, 0.5, 0.5, 1.0],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 0.2, // Border width
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  '52%',
                                  style: TextStyle(
                                    fontSize: 24, // Adjust the font size
                                    fontWeight: FontWeight
                                        .bold, // Adjust the font weight
                                    color: Colors.white, // Text color
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 191, 219, 191),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        dataRowHeight: 53.0,
                        columnSpacing: 51.0,
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text.rich(
                              TextSpan(
                                text:
                                    'Please change your password within 27 days. ',
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Click Here',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue, //html tablet
                                      // shadows: [
                                      //   Shadow(
                                      //     color: Colors.black,
                                      //     offset: Offset(1.0, 1.0),
                                      //   ),
                                      // ],
                                    ),
                                  ),
                                  TextSpan(text: ' to change password.'),
                                ],
                              ),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                        rows: const [],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    //color: Color.fromARGB(255, 23, 188, 108),
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                    ),
                  ),
                  Container(
                    width: 4,
                    height: 50,
                    color: Color.fromRGBO(131, 173, 192, 1),
                    child: const Center(
                      child: Text(
                        'Leave Count',
                        style: TextStyle(
                          fontSize: 16, // Adjust the font size
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Color.fromARGB(255, 170, 200, 185),
                    child: SingleChildScrollView(
                      scrollDirection:
                          Axis.vertical, // Enable horizontal scrolling
                      child: DataTable(
                        dataRowHeight: 50.0, // Adjust the height of each row
                        columnSpacing: 30.0, // Adjust the column spacing
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Text('Type'),
                          ),
                          DataColumn(
                            label: Text('Allotted'),
                          ),
                          DataColumn(
                            label: Text('Taken'),
                          ),
                          DataColumn(
                            label: Text('Remaining'),
                          ),
                        ],
                        rows: [
                          DataRow(
                            cells: const [
                              DataCell(Text('Short Leave')),
                              DataCell(Text('300 (M)')),
                              DataCell(Text('0')),
                              DataCell(Text('300')),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          DataRow(
                            cells: const [
                              DataCell(Text('Casual Leave')),
                              DataCell(Text('10 (D)')),
                              DataCell(Text('4')),
                              DataCell(Text('6')),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          DataRow(
                            cells: const [
                              DataCell(Text('Medical Leave')),
                              DataCell(Text('14 (D)')),
                              DataCell(Text('4')),
                              DataCell(Text('10')),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                          DataRow(
                            cells: const [
                              DataCell(Text('Without Pay Leave')),
                              DataCell(Text('50 (D)')),
                              DataCell(Text('0')),
                              DataCell(Text('50')),
                            ],
                            color: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Color.fromRGBO(
                                  163, 186, 196, 1); // Default row color
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: 350, // Adjust the width of the first box
                    height: 50, // Adjust the height of the first box
                    padding: EdgeInsets.all(16.0),
                    color: Color.fromARGB(
                        255, 134, 198, 136), // Change the color for the month
                    child: StreamBuilder(
                      stream: Stream.periodic(Duration(seconds: 1), (i) => i),
                      builder: (context, snapshot) {
                        final now = DateTime.now();
                        final month = DateFormat(' MMM ').format(now);
                        return Text(
                          month,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 350, // Adjust the width of the first box
                    height: 120, // Adjust the height of the first box
                    padding: const EdgeInsets.all(16.0),
                    color: const Color.fromARGB(
                        255, 98, 148, 100), // Change the color for the day
                    child: StreamBuilder(
                      stream:
                          Stream.periodic(const Duration(seconds: 1), (i) => i),
                      builder: (context, snapshot) {
                        final now = DateTime.now();
                        final day = DateFormat(' dd ').format(now);
                        return Text(
                          day,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 70,
                            color: Colors.black,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 350, // Adjust the width of the first box
                    height: 50, // Adjust the height of the first box
                    padding: EdgeInsets.all(16.0),
                    color: Color.fromARGB(255, 169, 226,
                        171), // Change the color for the full date
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: StreamBuilder(
                        stream: Stream.periodic(Duration(seconds: 1), (i) => i),
                        builder: (context, snapshot) {
                          final now = DateTime.now();
                          final formattedDate =
                              DateFormat('EEEE | dd MMM yyyy | hh:mm:ss a')
                                  .format(now);
                          return Text(
                            formattedDate,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    width: 550, // Adjust the width of the first box
                    height: 50,
                    color: Color.fromRGBO(131, 173, 192, 1),
                    child: const Center(
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 16, // Adjust the font size
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 550, // Adjust the width of the first box
                    height: 50,
                    color: const Color.fromARGB(255, 169, 232, 171),
                    child: const Center(
                      child: Text(
                        'You have no notification yet! and code is',
                        style: TextStyle(
                          fontSize: 16, // Adjust the font size
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Created by @FAIR-DEV-2023',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
