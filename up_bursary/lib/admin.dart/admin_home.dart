import 'package:flutter/material.dart';

import '../my_style.dart';

class Admin_Home extends StatefulWidget {
  const Admin_Home({super.key});

  @override
  State<Admin_Home> createState() => _Admin_HomeState();
}

class _Admin_HomeState extends State<Admin_Home> {
  late double screen;
  @override
   Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen =$screen');
    return Scaffold(
      body: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(child: buildImage()),
                SizedBox(height: 40,),
                Center(child: MyStyle().titleH2('ทุนที่มีอยู่')),
                Center(child: buildCapital_Help()),


              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton
        (onPressed: () => Navigator.pushNamed(context, '/admin_add_capital'),
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 215, 113, 233),
        ),

    );
  }

   TextButton buildRegister() => 
      TextButton(
        onPressed: () => Navigator.pushNamed(context, '/student_register'),
        child: const Text('Register',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,),),);

  
  Container buildCapital_At_Will() {
    return Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,height: 80,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin_capital_at_will'),
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
              onPressed: () => Navigator.pushNamed(context, '/admin_capital_help'),
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
            margin: EdgeInsets.only(top: 80),
            child: Image.network(
            "https://upload.wikimedia.org/wikipedia/th/thumb/0/00/University_of_Phayao_Logo.svg/1200px-University_of_Phayao_Logo.svg.png",
             height: 100,
             ),
          );
  }
}