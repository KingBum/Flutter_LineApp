import 'package:flutter/material.dart';
import 'package:manager/screens/homeScreen.dart';
import '../const/colors.dart';
import '../screens/registerScreen.dart';
import '../utils/helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = "/loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text("Login", style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold, color: AppColor.primary),),
                SizedBox(height: 30,),
                Container(
                  width: 100,
                  height: 100,
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      Helper.getAssetName("logo.png", "real"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                }, child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Login"),
                )),SizedBox(height: 30,),
                ElevatedButton(onPressed: (){}, child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Register"),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

}