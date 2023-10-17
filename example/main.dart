import 'package:flutter/material.dart';
import 'package:route_transitions_jpmg/route_transitions_jpmg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'page1',
      routes: {
        'page1': ( _ ) => Page1Screen(),
        'page2': ( _ ) => Page2Screen(),
      }
    );
  }
}


class Page1Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        backgroundColor: Colors.transparent
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: MaterialButton(
          onPressed: () {

            RouteTransitions(
              context: context,
              child: Page2Screen(),
              animation: AnimationType.fadeIn,
              duration: const Duration( milliseconds: 500 ),
              replacement: true,
            );
          
          },
          color: Colors.white,
          child: const Text('Go to page 2'),
        )
     ),
   );
  }

}

class Page2Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        backgroundColor: Colors.transparent
      ),
      backgroundColor: Colors.blueGrey,
      body: const Center(
        child: Text('Hello World'),
     ),
   );
  }
}