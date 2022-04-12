import 'package:flutter/material.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, position) {
                    return InkWell(
                      onTap: () {},
                      child: const Card(
                        elevation: 3,
                        child: Center(
                          child: Text('Hello'),
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
    );
  }
}
