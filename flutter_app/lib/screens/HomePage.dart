import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_screen';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        leading: IconButton(
          icon: const Icon(Icons.logout, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.account_circle_rounded,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sports.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 3,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          child: Center(
                            child: Text(
                              sports[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Select the most active groups around you:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0277BD),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, position) {
                  return ListTile(
                    leading: Icon(Icons.add),
                    title: Text(
                      'GFG title 2',
                      textScaleFactor: 1.5,
                    ),
                    trailing: Icon(Icons.done),
                    subtitle: Text('This is subtitle'),
                    selected: true,
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: () {},
        ),
      ),
    );
  }
}
