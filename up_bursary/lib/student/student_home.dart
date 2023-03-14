import 'package:flutter/material.dart';

import '../my_style.dart';

class Student_Home extends StatefulWidget {
  const Student_Home({super.key});

  @override
  State<Student_Home> createState() => _Student_HomeState();
}

class _Student_HomeState extends State<Student_Home> {
  late double screen;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen =$screen');
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                buildImage(),
                SizedBox(height: 40,),
                MyStyle().titleH2('ทุนที่มีอยู่'),
                buildSearch(),
                buildCapital_Help(),
                buildCapital_At_Will(),
                  
              ],
            ),
          ),
        ),
    );
  }

  Container buildSearch() {
    return Container(
                margin: EdgeInsets.only(top: 25),
                width: screen*0.75,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
                    labelText: 'ค้นหาทุน',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 191, 52, 215),),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Color.fromARGB(255, 191, 52, 215),),
                    ),
                  ),
                ),
          );
  }

  
  Container buildCapital_At_Will() {
    return Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,height: 80,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/student_capital_help'),
              child: Text('ทุนตามความประสงค์ของผู้บริจาค',
              style: TextStyle(
                fontSize: 19,),
              ),            
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 113, 233),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              ),
          );
  }

  Container buildCapital_Help() {
    return Container(
            margin: EdgeInsets.only(top: 40),
            width: 300,height: 80,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/student_capital_help'),
              child: Text('ทุนช่วยเหลือค่าครองชีพ',
              style: TextStyle( 
                fontSize: 19,),
              ),            
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 113, 233),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              ),
          );
  }

   Container buildImage() {
    return Container(
            margin: EdgeInsets.only(top: 50),
            child: Image.network(
            "https://upload.wikimedia.org/wikipedia/th/thumb/0/00/University_of_Phayao_Logo.svg/1200px-University_of_Phayao_Logo.svg.png",
             height: 100,
             ),
          );
  }
}