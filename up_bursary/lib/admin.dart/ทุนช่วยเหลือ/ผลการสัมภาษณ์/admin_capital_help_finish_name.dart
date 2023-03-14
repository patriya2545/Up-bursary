import 'package:flutter/material.dart';

class Admin_Capital_help_Finish_Name extends StatefulWidget {
  const Admin_Capital_help_Finish_Name({super.key});

  @override
  State<Admin_Capital_help_Finish_Name> createState() => _Admin_Capital_help_Finish_NameState();
}

class _Admin_Capital_help_Finish_NameState extends State<Admin_Capital_help_Finish_Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text("รายชื่อผู้ผ่านการสัมภาษณ์\nทุนช่วยเหลือค่าครองชีพ"),
        ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [ 
                buildImage(),
                buildHead(),
                buildName1(),
                buildName2(),
                ],
        ),
          ),
      ),      
    );
  }

  Container buildName2() {
    return Container( 
              padding: const EdgeInsets.all(30.0),
              margin: EdgeInsets.only(top: 20),
               decoration: BoxDecoration(
                    color: Color.fromARGB(255, 221, 139, 236),
                    borderRadius: BorderRadius.circular(30)),
                    height: 100,width: 500,

                    child: Row(
                    children: [
                      Text("นางสาว พัทริยา สามสี" ,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white),),

                      Expanded(
                        child: Text("15" ,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                          textAlign: TextAlign.right,),
                      ),
                    ],
                  ),
            );
  }

  Container buildName1() {
    return Container( 
              margin: EdgeInsets.only(top: 30),
              padding: const EdgeInsets.all(30.0),
               decoration: BoxDecoration(
                    color: Color.fromARGB(255, 221, 139, 236),
                    borderRadius: BorderRadius.circular(30)),
                    height: 100,width: 500,

                    child: Row(
                    children: [
                      Text("นาย เดชา ขุนอินทร์" ,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white),),

                      Expanded(
                        child: Text("20" ,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                          textAlign: TextAlign.right,),
                      ),
                    ],
                  ),
            );
  }

  Container buildHead() {
    return Container(
                margin: EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row( 
                    children:[
                    Text("รายชื่อผู้ที่ได้รับทุน",
                    style: 
                    TextStyle(fontSize: 20),),
              
                    Expanded(
                      child: Text("คะแนน",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,),
                    ),
                    
                    ],
              
                    
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