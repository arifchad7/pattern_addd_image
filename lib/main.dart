import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                RaisedButton(
                  onPressed: (){},
                  child: Text('RaisedButton'),
                  color: Colors.cyan,
                  textColor: Colors.black,
                  elevation: 20,
                ),
                OutlineButton(
                  onPressed: (){},
                  child: Text('Outlinebutton'),
                  color: Colors.amber,
                  textColor: Colors.black,

                ),
                FlatButton(
                  onPressed: (){},
                  child: Text('FlatButton'),
                  color: Colors.amber,
                  textColor: Colors.black,

                ),
              ],
            ),
            Switch(
              onChanged: (IsEnable){},
              value: true,

            ),
            Slider(
              onChanged: (value){},
              value: 10,
              min: 1,
              max: 100,
            ),
            Image(
              image: NetworkImage('https://cdn.pixabay.com/photo/2017/01/28/11/00/white-tailed-eagle-2015098_960_720.jpg'),
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Type Your Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Type Your Password',
                  border: OutlineInputBorder(),

                ),
              ),

            ),
          ],
        ),
      ),
floatingActionButton: FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.home_filled),

          ),
      );

  }
}

