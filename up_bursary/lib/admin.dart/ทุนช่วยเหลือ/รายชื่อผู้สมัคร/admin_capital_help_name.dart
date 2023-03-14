import 'package:flutter/material.dart';

class Admin_Capital_Help_Name extends StatefulWidget {
  const Admin_Capital_Help_Name({super.key});

  @override
  State<Admin_Capital_Help_Name> createState() => _Admin_Capital_Help_NameState();
}

class _Admin_Capital_Help_NameState extends State<Admin_Capital_Help_Name> {
 late double screen;
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen =$screen');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text("ผู้สมัครทุนช่วยเหลือ"),
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
              bluidPC(),
              buildHR(),
              buildIDcard(),
              buildReceipt(),
              buildREG(),
              buildDocument(),
              buildOther(),
              buildPass(),
              buildNotPass(),
        
            ],
          ),
        ),
      ),

    );

  }

  Container buildNotPass() {
    return Container(
            margin: EdgeInsets.only(top: 10),
            width: 100,height: 50,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin_capital_help_namelistofapplicants'),
              child: Text('ไม่ผ่าน',
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

  Container buildPass() {
    return Container(
            margin: EdgeInsets.only(top: 20),
            width: 100,height: 50,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin_capital_help_interview_namelist'),
              child: Text('ผ่าน',
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

  Container buildOther() {
    return Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("เอกสารอื่นๆที่เกี่ยวข้อง",
                          style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 191, 52, 215),),
                          textAlign: TextAlign.right,),
                          SizedBox(height: 15,),
                  
                  Container( 
                      padding: const EdgeInsets.all(30.0),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 139, 236),
                            borderRadius: BorderRadius.circular(30)),
                            height: 250,width: 300,
                        
                  ),
                ],
              ),
            );
  }

  Container buildDocument() {
    return Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("สำเนาเอกสารประกอบการกู้เงิน \n ของสถาบันต่างๆ(ถ้ามี) \n ของบิดา มารดา กรณมีหนี้สิน",
                          style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 191, 52, 215),),
                          textAlign: TextAlign.right,),
                          SizedBox(height: 15,),
                  
                  Container( 
                      padding: const EdgeInsets.all(30.0),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 139, 236),
                            borderRadius: BorderRadius.circular(30)),
                            height: 250,width: 300,
                        
                  ),
                ],
              ),
            );
  }

  Container buildREG() {
    return Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("ใบแสดงผลการเรียน (Reg)",
                          style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 191, 52, 215),),
                          textAlign: TextAlign.right,),
                          SizedBox(height: 15,),
                  
                  Container( 
                      padding: const EdgeInsets.all(30.0),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 139, 236),
                            borderRadius: BorderRadius.circular(30)),
                            height: 250,width: 300,
                        
                  ),
                ],
              ),
            );
  }

  Container buildReceipt() {
    return Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("ใบสำคัญรับเงิน 1 ฉบับ",
                          style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 191, 52, 215),),
                          textAlign: TextAlign.right,),
                          SizedBox(height: 15,),
                  
                  Container( 
                      padding: const EdgeInsets.all(30.0),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 139, 236),
                            borderRadius: BorderRadius.circular(30)),
                            height: 250,width: 300,
                        
                  ),
                ],
              ),
            );
  }

  Container buildIDcard() {
    return Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("สำเนาบัตรประชาชน 2 ฉบับ",
                          style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 191, 52, 215),),
                          textAlign: TextAlign.right,),
                          SizedBox(height: 15,),
                  
                  Container( 
                      padding: const EdgeInsets.all(30.0),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 139, 236),
                            borderRadius: BorderRadius.circular(30)),
                            height: 250,width: 300,
                        
                  ),
                ],
              ),
            );
  }

  Container buildHR() {
    return Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("สำเนาทะเบียนบ้านของนิสิต 1ฉบับ",
                          style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 191, 52, 215),),
                          textAlign: TextAlign.right,),
                          SizedBox(height: 15,),
                  
                  Container( 
                      padding: const EdgeInsets.all(30.0),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 139, 236),
                            borderRadius: BorderRadius.circular(30)),
                            height: 250,width: 300,
                        
                  ),
                ],
              ),
            );
  }

  Container bluidPC() {
    return Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Text("รูปถ่ายบ้านของนิสิต",
                          style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 191, 52, 215),),
                          textAlign: TextAlign.right,),
                          SizedBox(height: 15,),
                          
                  Container( 
                      padding: const EdgeInsets.all(30.0),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                            color: Color.fromARGB(255, 221, 139, 236),
                            borderRadius: BorderRadius.circular(30)),
                            height: 250,width: 300,
                        
                  ),
                ],
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
