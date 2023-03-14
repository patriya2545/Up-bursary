import 'package:flutter/material.dart';

import '../my_style.dart';

class Admin_Login extends StatefulWidget {
  const Admin_Login({super.key});

  @override
  State<Admin_Login> createState() => _Admin_LoginState();
}

class _Admin_LoginState extends State<Admin_Login> {
late double screen;
  bool statusRedEye = true;


  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    print('screen =$screen');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 191, 52, 215),
        title: Text('Admin Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(center: Alignment(0, -0.33),
            radius: 1.0,
            colors: <Color>[Colors.white,Color.fromARGB(255, 221, 139, 236,),]
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildImage(),
              SizedBox(height: 20,),
              MyStyle().titleH1('Up Bursary'),
              buildUser(),
              buildPassword(),
              buildLogin(context),
      
      
            ],
      
          ),),
      ),
    );
  }

  Container buildLogin(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(top: 15),
            width: 280,height: 40,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin_capictal'),
              child: Text('Login',
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


  Container buildPassword() {
    return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
          ),
          margin: EdgeInsets.only(top: 20),
          width: screen*0.7,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: statusRedEye ? Icon(Icons.remove_red_eye): Icon(Icons.remove_red_eye_outlined),
                onPressed: (){
                    setState(() {
                      statusRedEye = !statusRedEye;
                    });
                    print('statusRedEye = $statusRedEye');
                }),
              labelStyle: TextStyle(color: Color.fromARGB(255, 191, 52, 215),),
              labelText: 'Password',
              prefixIcon: Icon(
                Icons.lock_outline, 
              color: Color.fromARGB(255, 221, 139, 236,),
              ),
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

  Container buildUser() {
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
                labelText: 'User',
                prefixIcon: Icon(Icons.perm_identity, 
                color: Color.fromARGB(255, 221, 139, 236,),
                ),
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

  Image buildImage() {
    return Image.network(
            "https://upload.wikimedia.org/wikipedia/th/thumb/0/00/University_of_Phayao_Logo.svg/1200px-University_of_Phayao_Logo.svg.png",
             height: 130,
             );
  }
}