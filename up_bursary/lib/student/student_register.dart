import 'package:flutter/material.dart';

import '../my_style.dart';

class Student_Register extends StatefulWidget {
  const Student_Register({super.key});

  @override
  State<Student_Register> createState() => _Student_RegisterState();
}

class _Student_RegisterState extends State<Student_Register> {
  late double screen;

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen =$screen');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text('Sign up'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildImage(),
              buildName(),
              buildStudent_ID(),
              buildID_Card_Number(),
              buildDate_Of_Birth(),
              buildAge(),
              buildNationality(),
              buildAddress(),
              buildPhone(),
              buildEmail(),
              buildFather_Name(),
              buildFather_Address(),
              buildFather_Phone(),
              buildMother_Name(),
              buildMother_Address(),
              buildMother_Phone(),
              buildRegister(context),
        
            ],
          ),
        ),
      ),

    );

  }


  Container buildRegister(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(top: 30),
            width: 200,height: 40,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/student_login') ,
              child: Text('Register',
              style: TextStyle(
                fontSize: 22,),
              ),            
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 215, 113, 233),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              ),
          );
  }

  
  Container buildMother_Phone() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'เบอร์โทรศัพท์มารดา',
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


  Container buildMother_Address() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'ที่อยู่มารดา',
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


  
  Container buildMother_Name() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'ชื่อมารดา',
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




    Container buildFather_Phone() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'เบอร์โทรศัพท์บิดา',
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


  Container buildFather_Address() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'ที่อยู่บิดา',
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





  Container buildFather_Name() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'ชื่อบิดา',
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

  
  Container buildEmail() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'Email',
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


  
  Container buildPhone() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'เบอร์โทรศัพท์',
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



  Container buildAddress() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'ที่อยู่',
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


  
  Container buildNationality() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'สัญชาติ',
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



  Container buildAge() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'อายุ',
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

  Container buildDate_Of_Birth() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'วัน/เดือน/ปีเกิด',
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

  Container buildID_Card_Number() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'เลขบัตรประจำตัวประชาชน',
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

  Container buildStudent_ID() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'รหัสนิสิต',
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


  
  Container buildName() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'ชื่อ-นามสกุล',
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

  Container buildImage() {
    return Container(
            margin: EdgeInsets.only(top: 30),
            child: Image.network(
            "https://upload.wikimedia.org/wikipedia/th/thumb/0/00/University_of_Phayao_Logo.svg/1200px-University_of_Phayao_Logo.svg.png",
             height: 100,
             ),
          );
  }

  
}