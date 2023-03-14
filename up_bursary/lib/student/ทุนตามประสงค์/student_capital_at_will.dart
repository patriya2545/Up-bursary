import 'package:flutter/material.dart';

class Student_Capital_At_Will extends StatefulWidget {
  const Student_Capital_At_Will({super.key});

  @override
  State<Student_Capital_At_Will> createState() => _Student_Capital_At_WillState();
}

class _Student_Capital_At_WillState extends State<Student_Capital_At_Will> {
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
                buildApply(),



                ],
              ),
          ),
        
            ),
    );
  }

  Container buildApply() {
    return Container(
            margin: EdgeInsets.only(top: 30),
            width: 200,height: 40,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/studen_capital_at_will_apply') ,
              child: Text('สมัครทุน',
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
                          Text(" ประกาศรับสมัครขอเข้ารับทุนการศึกษา \n ประเภททุนการศึกษาตามความประสงค์ \n\n\n คุณสมบัติ \n เป็นนิสิตระดับปริญญาตรี ชั้นปีที่ 4 \n หลักสูตรบริหารธุรกิจบัณฑิต \n สาขาวิชาคอมพิเตอร์ธุรกิจ \n\n\n รับสมัคร \n วันที่ 17-30 สิงหาคม พ.ศ. 2564 ",
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