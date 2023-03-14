import 'package:flutter/material.dart';

class Student_Capital_At_Will_Finish extends StatefulWidget {
  const Student_Capital_At_Will_Finish({super.key});

  @override
  State<Student_Capital_At_Will_Finish> createState() => _Student_Capital_At_Will_FinishState();
}

class _Student_Capital_At_Will_FinishState extends State<Student_Capital_At_Will_Finish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text("สมัครทุน"),
      ),
       body: Padding(
        padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [ 
                buildImage(),
                SizedBox(height: 20,),
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
                    height: 320,width: 300,

                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: const [
                          Text("สมัครแล้ว",
                          style: TextStyle(
                          fontSize: 40,
                          color: Colors.white),),

                          ],
                        ),),
                        
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