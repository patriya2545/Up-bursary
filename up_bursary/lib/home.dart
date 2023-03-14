
import 'package:flutter/material.dart';
import 'package:up_bursary/my_style.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(radius: 1.0,
            colors: <Color>[Colors.white,Color.fromARGB(255, 221, 139, 236,),]
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildImage(),
              SizedBox(height: 20,),
              MyStyle().titleH1('Up Bursary'),
              buildAdmin(),
              buildStudent()
      
            ],
      
          )),
      ),
    );
  }

  Image buildImage() {
    return Image.network(
              "https://upload.wikimedia.org/wikipedia/th/thumb/0/00/University_of_Phayao_Logo.svg/1200px-University_of_Phayao_Logo.svg.png",
               height: 130,
               );
            
  }

  Container buildStudent() {
    return Container(margin: EdgeInsets.only(top: 30),
            width: 290,height: 55,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/student_login'), 
              child: Text('Student',
              style: TextStyle(
                fontSize: 22,),
              ),            
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 113, 233),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              ),
          );
  }

  Container buildAdmin() {
    return Container( margin: EdgeInsets.only(top: 35),
            width: 290,height: 55,
            child: ElevatedButton(
              onPressed: () =>Navigator.pushNamed(context, '/admin_login'),
              child: Text('Admin',
              style: TextStyle(
                fontSize: 22,),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 113, 233),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              ),
          );
  }
}