import 'package:coding_test_ui/Screens/code_editor.dart';
import 'package:coding_test_ui/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(top: 24, left: 20),
            child: Icon(
              CupertinoIcons.doc_text,
              color: Colors.white,
              size: 35,
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 30, left: 10),
            child: Text(
              "Problem Statements",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xffEF5350), Color(0xffD64CD2)]),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150.0,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.blue.shade500],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: CircleAvatar(
                      radius: 37.0,
                      backgroundImage: AssetImage('assets/images/problem1.png'),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Problem 1',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Write a program to find prime number',
                          style:
                              TextStyle(fontSize: 19.0, color: Colors.white70),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                "Are you sure you want to start the test?",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Code_Editor()),
                                    );
                                  },
                                ),
                                TextButton(
                                  child: const Text("No",
                                      style: TextStyle(fontSize: 17)),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.blueAccent,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150.0,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: [
                    Colors.greenAccent.shade200,
                    Colors.greenAccent.shade700
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: CircleAvatar(
                      radius: 37.0,
                      backgroundImage: AssetImage('assets/images/problem2.png'),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Problem 2',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Write a program for binary search',
                          style:
                              TextStyle(fontSize: 19.0, color: Colors.white70),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                "Are you sure you want to start the test?",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Code_Editor()),
                                    );
                                  },
                                ),
                                TextButton(
                                  child: const Text("No",
                                      style: TextStyle(fontSize: 17)),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.green.shade400,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150.0,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: [Colors.orange.shade200, Colors.orange.shade700],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: CircleAvatar(
                      radius: 37.0,
                      backgroundImage: AssetImage('assets/images/problem3.png'),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Problem 3',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Write a program for linear search',
                          style:
                              TextStyle(fontSize: 19.0, color: Colors.white70),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                "Are you sure you want to start the test?",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Code_Editor()),
                                    );
                                  },
                                ),
                                TextButton(
                                  child: const Text("No",
                                      style: TextStyle(fontSize: 17)),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.orange.shade500,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150.0,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: [
                    Colors.purpleAccent.shade100,
                    Colors.purpleAccent.shade700
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: CircleAvatar(
                      radius: 37.0,
                      backgroundImage: AssetImage('assets/images/problem4.png'),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Problem 4',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Write a program for bubble sort',
                          style:
                              TextStyle(fontSize: 19.0, color: Colors.white70),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                "Are you sure you want to start the test?",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Code_Editor()),
                                    );
                                  },
                                ),
                                TextButton(
                                  child: const Text("No",
                                      style: TextStyle(fontSize: 17)),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.indigo.shade400,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150.0,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: [
                    Colors.tealAccent.shade400,
                    Colors.tealAccent.shade700
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: CircleAvatar(
                      radius: 37.0,
                      backgroundImage: AssetImage('assets/images/problem5.png'),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Problem 5',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Write a program for quick sort',
                          style:
                              TextStyle(fontSize: 19.0, color: Colors.white70),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                "Are you sure you want to start the test?",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Code_Editor()),
                                    );
                                  },
                                ),
                                TextButton(
                                  child: const Text("No",
                                      style: TextStyle(fontSize: 17)),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.teal.shade400,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150.0,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  colors: [Colors.yellow.shade700, Colors.redAccent],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: CircleAvatar(
                      radius: 37.0,
                      backgroundImage: AssetImage('assets/images/problem6.png'),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Problem 6',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Write a program for fibonacci number',
                          style:
                              TextStyle(fontSize: 19.0, color: Colors.white70),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                "Are you sure you want to start the test?",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const Code_Editor()),
                                    );
                                  },
                                ),
                                TextButton(
                                  child: const Text("No",
                                      style: TextStyle(fontSize: 17)),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.red,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
