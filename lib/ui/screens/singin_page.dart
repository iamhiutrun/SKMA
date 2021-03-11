import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _userValidate = false;
  bool _passwordValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/background.png"), fit: BoxFit.fill)
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "BAN CƠ YẾU CHÍNH PHỦ\nHỌC VIỆN KỸ THUẬT MẬT MÃ",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 140),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "THỜI KHÓA BIỂU SINH VIÊN",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 180),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      errorText: _userValidate?null:"Nhập MSSV",
                      hintText: "MSSV",
                      prefixIcon: Icon(
                          Icons.person
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      errorText: _passwordValidate? null : "Nhập mật khẩu",
                      hintText: "Mật Khẩu",
                      prefixIcon: Icon(
                          Icons.lock
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 7),
                    alignment: Alignment.topRight,
                    child: Text("Quên mật khẩu?", style: TextStyle(color: Colors.blue)),
                  ),

                  Container(
                    alignment: Alignment.topCenter,
                    child: ElevatedButton(
                      child: Text("Đăng Nhập", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      onPressed: (){
                        setState(() {

                          _usernameController.text.isNotEmpty?_userValidate = true : _userValidate=false;
                          _passwordController.text.isNotEmpty?_passwordValidate= true:_passwordValidate=false;

                        });

                      },
                    ),
                  )
                ],
              ),
            ),),
          )
    );
  }
}
