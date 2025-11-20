import 'package:flutter/material.dart';
import 'package:study/ThirdPage.dart';
import 'custom_anim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 

      child: Scaffold(
        appBar: AppBar(
          
          flexibleSpace: Image(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0kr5b5sxYqLRQuDCVEoJM4yJhAsNSWK2xVg&s'),
            fit: BoxFit.cover,
          ),
          title: const Text("App Bar"),
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(18),
              right: Radius.circular(18),
            ),
          ),

          bottom:  TabBar(
            padding: EdgeInsets.symmetric(vertical: 4,),
            tabs: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                          color: const Color.fromARGB(255, 172, 15, 4),
                          child: Text("Home",style:TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
                        ),
                ),
              ),
      Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 12),
            color: const Color.fromARGB(255, 159, 170, 2),
            child: Text("Chat",style:TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
          ),
        ),
      ),
      Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            color: const Color.fromARGB(255, 3, 123, 7),
            child: Text("Profile",style:TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
          ),
        ),
      ),
            ],
          ), 

          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
            ),
          ],
        ),

       
        body: TabBarView(
          children: [
            homeWidget(context),  
            chatWidget(context),  
            profileWidget(context) 
          ],
        ),
      ),
    );
  }
}

Widget homeWidget(BuildContext context) {
  return Center(
    child: Container(
      color: const Color.fromARGB(255, 121, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Center(child: Text("Home"))),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
            icon: const Icon(
              Icons.play_arrow_outlined,
              size: 40,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget chatWidget(BuildContext context) {
  return Center(
    child: Container(
      color: const Color.fromARGB(255, 199, 180, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Center(child: Text("chat"))),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
            icon: const Icon(
              Icons.play_arrow_outlined,
              size: 40,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    ),
  );
}
Widget profileWidget(BuildContext context) {
  return Center(
    child: Container(
      color: const Color.fromARGB(255, 5, 95, 11),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Center(child: Text("profile"))),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
            icon: const Icon(
              Icons.play_arrow_outlined,
              size: 40,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    ),
  );
}

