import 'package:flutter/material.dart';

void main() {
  runApp( Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(            //appbar
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Need Blood'),
        actions: [
          IconButton(            //Icon Button
              onPressed: (){},
              icon: Icon(Icons.add),
          )
        ],
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(           //Circular Avatar
                radius: 80,
                backgroundColor: Colors.black54,
                child: Icon(Icons.bloodtype_outlined,               //Icon
                    size: 100,
                color: Colors.red,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Donate Blood',                 //Text
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}
