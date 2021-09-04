import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatelessWidget {
  final theFunctin;

  const SignUpScreen({this.theFunctin});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 578,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xfff9bd21).withOpacity(0.4),Color(0xfffee8ad).withOpacity(0.35), Color(0xfff9bd21).withOpacity(0.4),],stops: ([0.04,0.5,0.94]),
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        height: 120,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Let's Get Started !",
                              style: TextStyle(fontSize: 30,fontFamily: "Quicksand",fontWeight: FontWeight.w200,color: Color(0xfffdbf1e)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Create an account Q Allure to get all features",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        )),
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(Icons.arrow_back_ios_new)),
                  ],
                ), // the backButton And the text (Lets Get Started !)
                Container(
                  height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      theFunctin(TextInputType: TextInputType.name,hintText: "User Name",borderColor:0xfffdbf1e,icon: Icon(Icons.person,color: Color(0xfffdbf1e),)),
                      theFunctin(TextInputType: TextInputType.emailAddress,hintText: "Email Address",borderColor:0xfffdbf1e,icon: Icon(Icons.email,color: Color(0xfffdbf1e),)),
                      theFunctin(TextInputType: TextInputType.phone,hintText: "Phone",borderColor:0xfffdbf1e,icon: Icon(Icons.phone,color: Color(0xfffdbf1e),)),
                      theFunctin(TextInputType: TextInputType.visiblePassword,hintText: "Password",borderColor:0xfffdbf1e,icon: Icon(Icons.lock,color: Color(0xfffdbf1e),)),
                      theFunctin(TextInputType: TextInputType.visiblePassword,hintText: "Confirm Password",borderColor:0xfffdbf1e,icon: Icon(Icons.lock,color: Color(0xfffdbf1e),)),
                    ],
                  ),
                ), // TextFields
                ElevatedButton(onPressed: ()=>Navigator.of(context).pop(),
                  child: Text("Create ", style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(170, 40),
                      elevation: 0.0,
                      primary:Color(0xfffdbf1e),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),

                ),// Create button
                Container(
                  padding:EdgeInsets.only(top: 10.0,left: 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ?",style: TextStyle(fontSize: 13),),
                      SizedBox(height: 40,
                        child: SizedBox(width: 50,
                          child: TextButton(onPressed: () =>Navigator.of(context).pop(),
                              child: Text("Login", style: TextStyle(fontSize: 13,color: Color(0xfffdbf1e)),)
                          ),
                        ),
                      ),// login textButton
                    ],
                  ),
                ),// Already have an account ? login
              ],
            ),

          ),
        ),
      ),
    );
  }
}
