import 'package:flutter/material.dart';

  void main() {
    runApp(const MyApp());
  }
  
  class MyApp extends StatelessWidget {
    const MyApp({super.key});
    void onPress(){}

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Homepage",
              style: TextStyle(color: Colors.tealAccent, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.deepOrange,
            leading: IconButton(onPressed: onPress, icon: Icon(Icons.menu)),
            actions: [IconButton(onPressed: onPress, icon: Icon(Icons.search)),

            ],

          ),
          body:
          /*SafeArea(
              child: Center(child: Text("子にち、元気ですか？"),

              ),

          ) ,*/
          Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Image.asset("assets/imagine/tokio.jpg", fit: BoxFit.fill)
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.deepOrange,
            items: [
                BottomNavigationBarItem(
                    label: "Setting",
                    icon: Icon(Icons.home,color: Colors.white,fontWeight: FontWeight.bold,)

                ),
          BottomNavigationBarItem(
            label: "More",
            icon: Icon(Icons.home,color: Colors.white,fontWeight: FontWeight.bold,),

      ),
              BottomNavigationBarItem(
              label: "Favorite",
              icon: Icon(Icons.home,color: Colors.white,fontWeight: FontWeight.bold,),

              )
              ],)

        ),
      );
    }
  }