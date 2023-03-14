import 'package:flutter/material.dart';

import '../my_style.dart';

class Admin_Capital_Help extends StatefulWidget {
  const Admin_Capital_Help({super.key});

  @override
  State<Admin_Capital_Help> createState() => _Admin_Capital_HelpState();
}

class _Admin_Capital_HelpState extends State<Admin_Capital_Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text("ทุนช่วยเหลือ"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                buildImage(),
                SizedBox(height: 40,),
                buildCapital(),
                buildContacts(),

              ],
            ),
          ),
        ),
    );
}

Container buildContacts() {
    return Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,height: 80,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context,'/admin_capital_help_namelistofapplicants'),
              child: Text('รายชื่อผู้สมัครทุน',
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


Container buildCapital() {
    return Container(
            margin: EdgeInsets.only(top: 20),
            width: 300,height: 80,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin_capital_help_data'),
              child: Text('ดูทุน',
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
            child: Image.network(
            "https://upload.wikimedia.org/wikipedia/th/thumb/0/00/University_of_Phayao_Logo.svg/1200px-University_of_Phayao_Logo.svg.png",
             height: 100,
             ),
          );
  }

}