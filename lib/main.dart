import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildRow(String title, bool status) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title),
          SizedBox(
            width: 30,
          ),
          Text(status.toString()),
        ],
      ),
    );
  }



  /// `Done`
  /// **>  ssbar
  /// **> rcbtn

  /// snackBar
 void _showSnackBar() {
   ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
           content: Text("Hey"))
   );
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Template testing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildRow("Test position", true),
            _buildRow("inside widget", true),

            GestureDetector(
                  onTap: (){},
                  child: Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: Theme.of(context).buttonTheme.height,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                     "labelText",
                      style: TextStyle(
                        fontSize: Theme.of(context).buttonTheme.height *.6,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ) 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSnackBar();

        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
