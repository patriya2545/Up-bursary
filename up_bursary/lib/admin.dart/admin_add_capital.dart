
import 'package:flutter/material.dart';

class Admin_Add_Capital extends StatefulWidget {
  const Admin_Add_Capital({super.key});

  @override
  State<Admin_Add_Capital> createState() => _Admin_Add_CapitalState();
}

class _Admin_Add_CapitalState extends State<Admin_Add_Capital> {
  late double screen;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen =$screen');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text('เพิ่มทุน'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildImage(),
              buildName(),
              buildDetails(),
              buildInterview(),
              buildAdd(),
            ],
          ),
        )           
      ),      
    );
  }
  
  Container buildAdd() {
    return Container(
            margin: EdgeInsets.only(top: 20),
            width: 160,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin_home') ,
              child: Text('เพิ่มทุน',
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

  Container buildInterview() {
    return Container(
          margin: EdgeInsets.only(top: 30),
          width: screen*0.7,
          child: TextField(
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'เพิ่มวันสัมภาษณ์',
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

  Container buildDetails() {
    return Container(
          margin: EdgeInsets.only(top: 30),
          width: screen*0.7,
          child: TextField(
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'เพิ่มรายละเอียด',
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
        ),
          margin: EdgeInsets.only(top: 30),
          width: screen*0.7,
          child: TextField(
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'เพิ่มชื่อทุน',
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
            margin: EdgeInsets.only(top: 50),
            child: Image.network(
            "https://upload.wikimedia.org/wikipedia/th/thumb/0/00/University_of_Phayao_Logo.svg/1200px-University_of_Phayao_Logo.svg.png",
             height: 100,
             ),
          );
  }
}