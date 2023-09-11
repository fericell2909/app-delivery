import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:udemyflutter/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: Text('Flutter Delivery App')),
        body: Container(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              top: -80,
              left: -100,
              child: _circleLogin()
          ),
          Positioned(
              top: 60,
              left: 25,
              child: _textLogin()),
          Column(
            children: [
              //_imageBanner(),
              _lottieAnimation(),
              _textFieldEmail(),
              _textFieldPassword(),
              _buttonLogin(),
              _textDontHaveAccount()
            ],
          ),
        ],
      ),
    ));
  }

  Widget _lottieAnimation() {

  return Container(
    margin: EdgeInsets.only(
      top: 100,
      //bottom: MediaQuery.of(context).size.height * 0.0001         //bottom: MediaQuery.of(context).size.height * 0.22
  ),
    child: Lottie.asset('assets/json/delivery.json',
    width: 350, height: 250 , fit: BoxFit.fill),
  );

  }

  Widget _textLogin() {
    return Text('LOGIN', style: TextStyle(color: Colors.white ,
    fontWeight: FontWeight.bold,
    fontSize: 22,
    fontFamily: 'NimbusSans'
    );
  }
  Widget _circleLogin() {
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: MyColors.primaryColor),
    );
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(
        top: 100,
        bottom: MediaQuery.of(context).size.height * 0.1         //bottom: MediaQuery.of(context).size.height * 0.22
      ),
      child: Image.asset(
        'assets/img/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
          decoration: InputDecoration(
              hintText: 'Email',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(Icons.email, color: MyColors.primaryColor),
              hintStyle: TextStyle(color: MyColors.primaryColorDark))),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor),
              hintStyle: TextStyle(color: MyColors.primaryColorDark))),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: ElevatedButton(
          onPressed: () {},
          child: Text('INGRESAR'),
          style: ElevatedButton.styleFrom(
              primary: MyColors.primaryColor,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))),
    );
  }

  Widget _textDontHaveAccount() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('¿ No tienes cuenta ?',
          style: TextStyle(color: MyColors.primaryColor)),
      SizedBox(width: 7),
      Text('Registrate',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: MyColors.primaryColor)),
    ]);
  }
}
