import 'package:flutter/material.dart';
import 'package:passwordpad/auth/register.dart';
import 'package:passwordpad/model/models.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailaddcontrol =TextEditingController();
  final passwordcontrol =TextEditingController();
  final GlobalKey<FormState> formkey =GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: background(),
          body: Padding(
            padding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/icon.png',width: 50),
                Text('Login',
                  style: TextStyle(
                    fontSize: 64,
                    fontFamily: 'neue',
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 150,
                  child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,

                        style:TextStyle(
                            fontFamily: 'poppins',
                            color: secondary()
                        ),
                        decoration: InputDecoration(

                          hintText: "email",
                          hintStyle: TextStyle(
                            color: secondary(),
                            fontFamily: 'poppins',
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primary())
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primary(),width: 2)
                          ),
                        ),
                        controller: emailaddcontrol,
                        validator: (value){
                          if(value!.isEmpty){
                            return ('Please enter email');
                          }
                          if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                            return ('Please enter a vaild email');
                          }
                        },
                        onSaved: (value){
                          emailaddcontrol.text=value!;
                        },


                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,

                        style:TextStyle(
                            fontFamily: 'poppins',
                            color: secondary()
                        ),
                        decoration: InputDecoration(
                          hintText: "password",
                          hintStyle: TextStyle(
                            color: secondary(),
                            fontFamily: 'poppins',
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primary())
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primary(),width: 2)
                          ),
                        ),
                        obscureText: true,
                        controller: passwordcontrol,
                        validator: (value){
                          if (value!.isEmpty){
                            return ("Please enter password");
                          }
                        },
                        onSaved: (value){
                          passwordcontrol.text=value!;
                        },
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 35,
                  child: ElevatedButton(onPressed: (){

                  },
                    child: Text('Login',
                        style: TextStyle(
                            fontFamily: 'neue',
                            fontSize: 16
                        )
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      primary: primary(),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont\'t have an account? ',
                      style: TextStyle(
                        color: primary(),
                        fontFamily: 'poppins',
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Register()));
                      },
                      child: Text('Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppins',
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
