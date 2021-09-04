import '../screens/Sign_up_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class logInScreen extends StatefulWidget {

  @override
  _logInScreenState createState() => _logInScreenState();
}

class _logInScreenState extends State<logInScreen> {
  var pressed=true;
  bool visibility=false;

 Widget InkWellFunction({@required icon,@required String text}){
   return InkWell(
     borderRadius: BorderRadius.circular(8),
     onTap:(){},
     child: Container(
       width: 130,
       height: 40,
       decoration: BoxDecoration(color: Color(0xfffdbf1e).withOpacity(0.5),borderRadius: BorderRadius.circular(8)),
       child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(width: 5,),
            Text(text, style: TextStyle(fontSize: 16),),
          ],
        ),
      ),
   );

 }
 Widget TextFieldFunction({@required TextInputType,@required hintText,@required icon,suffixIcon=null,obscureText=false,borderColor=(0xffffd876)}){
    return Container(
      width: 300,
      child: TextField(
        style: TextStyle(color: Color(0xff663f35)),
        obscureText:obscureText,
        keyboardType: TextInputType,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color:Color(0xfffdbf1e)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color:Color(borderColor),),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Color(0xfffee8ad),
          contentPadding: EdgeInsets.fromLTRB(20, 20, 0, 0),
          prefixIcon: icon,
          suffixIcon: suffixIcon
        ),

      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xfff9bd21).withOpacity(0.4),Color(0xfffee8ad).withOpacity(0.35), Color(0xfff9bd21).withOpacity(0.4),],stops: ([0.04,0.5,0.94]),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),
            child: Column(
              children: [
                Container(
                  height: 220,
                  child: Stack(
                    children: [
                      Container(width: double.infinity,height: 255,child: Image.asset("assets/images/lock.png",fit: BoxFit.cover,alignment: new Alignment(0, 0.5),)),
                      Container(padding: EdgeInsets.only(right: 5),alignment:Alignment.bottomCenter,child: Text("Welcome Back !",style: TextStyle(fontSize: 20,fontFamily:"Quicksand",color: Color(0xff663f35)),),),
                    ],
                  ),
                ),
                Container(
                  height: 359,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text("log in to your existent account of Q allure",style: TextStyle(fontSize: 13,fontFamily:"OpenSans" )),
                      SizedBox(height: 10,),
                      TextFieldFunction(TextInputType: TextInputType.emailAddress,hintText: "EmailAddress",icon: Icon(Icons.person,color: Color(0xfffdbf1e),)),
                      SizedBox(height: 20,),
                      TextFieldFunction(TextInputType: TextInputType.visiblePassword,hintText: "password",icon: Icon(Icons.lock,color: Color(0xfffdbf1e),),suffixIcon:IconButton(
                        onPressed: () {setState(() {pressed = !pressed;visibility=!visibility; });},
                        icon: pressed ? Icon(Icons.visibility,color: Color(0xfffdbf1e),) : Icon(Icons.visibility_off,color: Colors.grey,),
                      ),obscureText:visibility),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: SizedBox(
                            height: 38,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(onPressed: () {},
                                    child: Text("Forgot password ?", style: TextStyle(fontSize: 15,color: Color(0xfffdbf1e)),)
                                )
                              ],
                            )),
                      ),
                      ElevatedButton(onPressed: (){},
                        child: Text("LOG IN", style: TextStyle(fontSize: 20),),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(170, 40),
                            elevation: 0.0,
                            primary:Color(0xfffdbf1e),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),

                      ),
                      Container( padding:EdgeInsets.only(top: 5.0,bottom: 10),child: Text("or Sign In with")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWellFunction(icon: FontAwesomeIcons.google, text: "Google"),
                          InkWellFunction(icon: FontAwesomeIcons.facebook, text: "Facebook"),
                        ],
                      ),
                      Container(
                        padding:EdgeInsets.only(top: 10.0,left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account ? ",style: TextStyle(fontSize: 13),),
                            SizedBox(height: 40,
                              child: TextButton(onPressed: () =>Navigator.of(context).push(MaterialPageRoute(builder:(_)=> SignUpScreen(theFunctin: TextFieldFunction,))),
                                  child: Text("Sign up", style: TextStyle(fontSize: 13,color: Color(0xfffdbf1e)),)
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
