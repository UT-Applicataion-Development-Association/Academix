import "package:flutter/material.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0625 * width, vertical: 0.086 * height),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children:  [
                const Center(
                  child: Image(
                    image: AssetImage('assets/auth.png'),
                  ),
                ),
                Text("Welcome to Academix", style: TextStyle(fontSize: 40), textAlign: TextAlign.center),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'University Email',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                TextButton(onPressed: (){}, child: Text("Login in"), style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.blue, minimumSize: const Size(400, 40))),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  // width: 400,
                  child: Text("By continuing, you agree to Academix's term of Service",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  // width: 400,
                  child: Text("Not on Academix yet? Sign up",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/signup");
                    },
                    child: Text("Sign up in")),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  // width: 400,
                  child: Text("Forget Password",
                    textAlign: TextAlign.center,
                  ),
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}

