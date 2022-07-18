import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0625 * width, vertical: 0.086 * height),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage('assets/auth.png'),
                    ),
                  ),
                  Row(
                    children: const [
                      Text("Sign up", style: TextStyle(fontSize: 40))
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'First Name',
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Last Name',
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.search),
                        labelText: 'University Email',
                      ),
                    ),
                  ),


                  // width: 400,
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.lock_rounded),
                        labelText: 'password',
                      ),
                    ),
                  ),



                  TextButton(onPressed: (){}, child: Text("Sign Up"), style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.black, minimumSize: const Size(400, 40)),),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    // width: 400,
                    child: Text("Already a member? Log in",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text("Log in")
                  ),
                ],
              ),
            )
        ),
      )
    );
  }
}