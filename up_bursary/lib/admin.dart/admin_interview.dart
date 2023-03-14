import 'package:flutter/material.dart';

import '../my_style.dart';

class Admin_Interview extends StatefulWidget {
  const Admin_Interview({super.key});

  @override
  State<Admin_Interview> createState() => _Admin_InterviewState();
}

class _Admin_InterviewState extends State<Admin_Interview> {
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
                MyStyle().titleH2('รอสัมภาษณ์'),
                buildCapital_Help(),
                buildCapital_At_Will(),

              ],
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
              onPressed: (){},
              child: Text('รายชื่อรอสัมภาษณ์ \nทุนตามความประสงค์ของผู้บริจาค',
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
              onPressed: ()=> Navigator.pushNamed(context, '/admin_capital_help_interview_namelist'),
              child: Text('รายชื่อรอสัมภาษณ์ \nทุนช่วยเหลือค่าครองชีพ',
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