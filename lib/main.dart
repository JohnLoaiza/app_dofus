import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  int _currentIndex = 0;
  final List<Widget> _children = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:
      
      
      
      
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('DofusGui', textAlign: TextAlign.right, style: TextStyle(color: Colors.black, ),),
          centerTitle: true,
          actions: <Widget>[
            FloatingActionButton(onPressed: null, backgroundColor: Colors.white, child: Text('P', style: TextStyle(color: Colors.greenAccent, fontSize: 40)),)
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 220,
                color: Colors.black,
                child: Text('noticias', textAlign: TextAlign.center, style: TextStyle(color: Colors.lightGreen, fontSize: 50,),) ,
                ),
                Image.asset('assets/Noticias.jpg',),
                
                
            ]
          ),

        ),
         
         bottomNavigationBar: BottomNavigationBar(
           currentIndex: _currentIndex,
           onTap: onTabTapped,
           fixedColor: Colors.greenAccent,
           items: <BottomNavigationBarItem>[
             BottomNavigationBarItem(
               icon: Icon(Icons.work),
               title: Text('Gremios'),
               
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.chat),
               title: Text('Chats'),
               
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.text_format),
               title: Text('Guias'),
               
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.adjust),
               title: Text('Ajustes'),
               
             ),
           ],
            )
        ),
     );
  }
  void onTabTapped(int index) {
     setState(()  {
       _currentIndex = index;
     });
  }
}

