import 'package:flutter/material.dart';

class Admin_Capital_Help_Interview_Name extends StatefulWidget {
  const Admin_Capital_Help_Interview_Name({super.key});

  @override
  State<Admin_Capital_Help_Interview_Name> createState() => _Admin_Capital_Help_Interview_NameState();
}

class _Admin_Capital_Help_Interview_NameState extends State<Admin_Capital_Help_Interview_Name> {
  late double screen;
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen =$screen');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text("คำถามทุนช่วยเหลือค่าครองชีพ"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildImage(),
              buildQuestion1(),
              buildQuestion2(),
              buildQuestion3(),
              buildQuestion4(),
              buildQuestion5(),
              buildPass(),
        
            ],
          ),
        ),
      ),

    );

  }


  Container buildPass() {
    return Container(
            margin: EdgeInsets.only(top: 20),
            width: 100,height: 50,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin_capital_help_finish_name'),
              child: Text('ยืนยัน',
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

  Container buildQuestion5() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'คำถามที่ 5 ',
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
  
  Container buildQuestion4() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'คำถามที่ 4 ',
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

  Container buildQuestion3() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'คำถามที่ 3 ',
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

  Container buildQuestion2() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'คำถามที่ 2 ',
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


  
  Container buildQuestion1() {
    return Container(
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'คำถามที่ 1 ',
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
