import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Buttons'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),

            ///elevated button;
            ElevatedButton(
              onLongPress: () {
                print('elevated button long press');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.black,
                elevation: 30,
                shadowColor: Colors.red,
                fixedSize: Size(250, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.red,
                  ),
                ),
              ),
              onPressed: () {
                print('elevated buttona tiklandi');
              },
              child: Text(
                'Elevated button',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ///elvated buton.icon
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.add,
              ),
              label: Text('elave et'),
            ),
            SizedBox(
              height: 20,
            ),

            ///text button;
            TextButton(
              onLongPress: () {
                print('text button longg press');
              },
              onPressed: () {
                print('text button tiklandi');
              },
              child: Text(
                'Text button',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ///icon button
            SizedBox(
              height: 20,
            ),
            IconButton(
              color: Colors.blue,
              tooltip: 'add et',
              focusColor: Colors.purple,
              highlightColor: Colors.orange,
              iconSize: 30,
              splashColor: Colors.blue,
              onPressed: () {
                print('icon button onpress');
              },
              icon: Icon(
                Icons.add,
              ),
            ),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   elevation: 30,
        //   tooltip: 'floatactionbutton',
        //
        //   focusColor: Colors.red,
        //   splashColor: Colors.black,
        //   backgroundColor: Colors.orange,
        //   foregroundColor: Colors.white,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   onPressed: () {
        //     print('floatactionbutton press olundu');
        //   },
        //   child: Icon(Icons.add),
        // ),
        // floatingActionButton: FloatingActionButton.large(onPressed: () {}),
        floatingActionButton: Container(
          height: 100,
          width: 250,
          child: FloatingActionButton.extended(
            extendedPadding: EdgeInsets.all(50),
            onPressed: () {},
            label: Text(
              'elave et',
            ),
            icon: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
