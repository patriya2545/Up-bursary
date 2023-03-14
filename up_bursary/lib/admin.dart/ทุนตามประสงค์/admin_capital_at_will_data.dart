import 'package:flutter/material.dart';

class Admin_Capital_At_Will_Data extends StatefulWidget {
  const Admin_Capital_At_Will_Data({super.key});

  @override
  State<Admin_Capital_At_Will_Data> createState() => _Admin_Capital_At_Will_DataState();
}

class _Admin_Capital_At_Will_DataState extends State<Admin_Capital_At_Will_Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text("ทุนตามประสงค์ของผู้บริจาค"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [ 
                buildImage(),
                SizedBox(height: 20,),
                buildCapital(),
                buildData(),

                ],
              ),
          ),
        
            ),
    );
  }

  Container buildData() {
    return Container( 
              padding: const EdgeInsets.all(30.0),
              margin: EdgeInsets.only(top: 30),
               decoration: BoxDecoration(
                    color: Color.fromARGB(255, 221, 139, 236),
                    borderRadius: BorderRadius.circular(30)),
                    height: 320,width: 500,

                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: const [
                          Text(" ประชาสัมพันธ์รับสมัครทุนการศึกษา \n ประเภททุนช่วยเหลือค่าครองชีพ \n ทุนละไม่เกิน 5,000 บาท \n\n\n รับสมัคร \n วันที่ 1-30 มิถุนายน 2565 \n\n สัมภาษณ์ \n วันที่ 4-8 กรกฏาคม 2565 \n\n ประกาศผลผู้ได้รับทุน \n วันที่ 15 กรกฏาคม 2565",
                          style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),),
                          

                          ],
                        ),),
                        
            );
  }

  Row buildCapital() {
    return Row(
                children: [
                const Text("ทุนตามประสงค์ของผู้บริจาค",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.right,)],
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