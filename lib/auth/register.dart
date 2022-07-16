import 'package:flutter/material.dart';
import 'package:passwordpad/auth/login.dart';
import 'package:passwordpad/model/models.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final name=TextEditingController();
  final emailcontrol =TextEditingController();
  final passcontrol =TextEditingController();
  var otext=false;
  final GlobalKey<FormState> formkey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/icon.png',width: 50),
              Text('Register',
                style: TextStyle(
                  fontSize: 64,
                  fontFamily: 'neue',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 300,
                child: Form(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                          style:TextStyle(
                            fontFamily: 'poppins',
                            color: secondary()
                          ),
                         decoration: InputDecoration(
                           hintText: "Name",
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
                          controller: name,
                          validator: (value){
                            if(value!.isEmpty){
                              return ('Please enter name');
                            }
                            if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                              return ('Please enter a vaild name');
                            }
                          },
                          onSaved: (value){
                            name.text=value!;
                          },

                        ),
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
                          controller: emailcontrol,
                          validator: (value){
                            if(value!.isEmpty){
                              return ('Please enter email');
                            }
                            if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                              return ('Please enter a vaild email');
                            }
                          },
                          onSaved: (value){
                            emailcontrol.text=value!;
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
                           suffixIcon: GestureDetector(
                             onTap: (){

                             },
                               child: Icon(Icons.visibility,color: primary(),)),
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
                          controller: passcontrol,
                          validator: (value){
                            if (value!.isEmpty){
                              return ("Please enter password");
                            }
                          },
                          onSaved: (value){
                            passcontrol.text=value!;
                          },
                        ),
                      ],
                    ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 35,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                },
                  child: Text('Register',
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
                  Text('Already have an account?',
                  style: TextStyle(
                    color: primary(),
                    fontFamily: 'poppins',
                    fontSize: 14,
                  ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text('Login',
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
      ),
    );
  }
}
