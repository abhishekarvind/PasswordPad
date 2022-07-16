import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:passwordpad/auth/register.dart';

import 'auth/login.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  var text=[
    'Generate\nPasswords.',
    'YOUR\nARE HERE.',
    'Tap \nTO GET\nSTARTED'
  ];
  var subtext=[
    'Stop using unsecure passwords for your online accounts, level up with OnePass. Get the most secure and difficult-to-crack passwords.',
    'Store and manage all of your passwords from one place.',
    ''
    
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: HexColor('28293D'),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icon.png',width: 50),
                SizedBox(height: 30,),
                Container(
                  height: 500,
                  child: PageView.builder(
                    physics: ScrollPhysics(),
                    itemCount: text.length,
                      itemBuilder: (context,index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(text[index],style: TextStyle(
                            fontFamily: 'neue',
                            fontSize: 70,
                            color: HexColor('#DEA5E8')
                          ),),
                        SizedBox(height: 10,),
                        Text(subtext[index],textAlign: TextAlign.start,
                          style: TextStyle(
                            color: HexColor('#BABABA'),
                            fontSize:16,
                            fontFamily:'poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ],
                      );
                      }

                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 150,
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
                          primary: HexColor('#DEA5E8'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 35,
                      child: OutlinedButton(onPressed: (){
                        Navigator.push((context), MaterialPageRoute(builder: (context)=>Login()));
                      },
                          child: Text('Login',
                          style: TextStyle(
                            fontFamily: 'neue',
                            fontSize: 16,
                          ),
                          ),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(
                            color: HexColor('#DEA5E8')
                          ),
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),

                          ),
                        ),
                        ),
                      ),
                  ],
                )


              ],
            ),
          ),
        ),
    );
  }
}
