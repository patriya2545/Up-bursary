import 'package:flutter/material.dart';

class Admin_Capital_Help_NameListOfApplicants extends StatefulWidget {
  const Admin_Capital_Help_NameListOfApplicants({super.key});

  @override
  State<Admin_Capital_Help_NameListOfApplicants> createState() => _Admin_Capital_Help_NameListOfApplicantsState();
}

class _Admin_Capital_Help_NameListOfApplicantsState extends State<Admin_Capital_Help_NameListOfApplicants> {
  late double screen;
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen =$screen');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text("รายชื่อผู้สมัครทุนช่วยเหลือ"),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  buildImage(),
                  buildName1(),
                  buildName2(),
                    
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }

Container buildName2() {
    return Container(
            margin: EdgeInsets.only(top: 20),
            width: 280,height: 70,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('นางสาว พัทริยา สามสี',
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

Container buildName1() {
    return Container(
            margin: EdgeInsets.only(top: 30),
            width: 280,height: 70,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin_capital_help_name'),
              child: Text('นาย เดชา ขุนอินทร์',
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
            margin: EdgeInsets.only(top: 30),
            child: Image.network(
            "https://upload.wikimedia.org/wikipedia/th/thumb/0/00/University_of_Phayao_Logo.svg/1200px-University_of_Phayao_Logo.svg.png",
             height: 100,
             ),
          );
  }
}