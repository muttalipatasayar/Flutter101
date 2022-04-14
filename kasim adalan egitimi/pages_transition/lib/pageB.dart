import 'package:flutter/material.dart';
import 'package:pages_transition/main.dart';

class PageB extends StatefulWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  Future<bool> returnButton(BuildContext context) async {
    print('return button clicked');
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page B'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print('Appbar back button clicked');
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      body: WillPopScope(
        onWillPop: () => returnButton(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(' return to previous page'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text(' Home Page Open'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(' Back to home page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
