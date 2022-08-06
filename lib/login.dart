import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String hintText, double fontSize,String fontFamily, double circularBorderRadius){
      return TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(circularBorderRadius)),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(circularBorderRadius)),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: fontFamily,
              fontSize: fontSize,
              color: Color(0xFFD0D0D0),
              fontWeight: FontWeight.w400,
            )),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 94,
                margin: EdgeInsets.only(top: 418),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Vector 2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: 512,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Vector 1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(top: 122),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Blinker',
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      width: 240,
                      height: 40,
                      margin: EdgeInsets.only(top: 188),
                      child: buildTextField('email', 12, 'Blinker', 67),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 240,
                      height: 40,
                      margin: EdgeInsets.only(top: 18),
                      child: buildTextField('password', 12, 'Blinker', 67),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 48),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            fontFamily: 'Blinker',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(77),
                          )),
                          primary: Color(0xFF6A74CF),
                          fixedSize: const Size(240, 35),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 12),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot your password ???',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Blinker',
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 150),
                      child: Text(
                        'or connect with',
                        style: TextStyle(
                          fontFamily: 'Blinker',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF7A7A7A),
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        child: ElevatedButton.icon(
                          label: Text(
                            'FACEBOOK',
                            style: TextStyle(
                                fontFamily: 'Blinker',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                color: Color(0xFFFFFFFF)),
                          ),
                          onPressed: () {},
                          icon: Image.asset('assets/icons/f.png', color: Colors.white,),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(17)),
                            ),
                            primary: Color(0xFF35A6EF),
                            fixedSize: const Size(150, 15),
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        label: Text(
                          'TWITTER',
                          style: TextStyle(
                              fontFamily: 'Blinker',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        onPressed: () {},
                        icon: Image.asset('assets/icons/pngegg 1 (1).png'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(17)),
                          ),
                          primary: Color(0xFF5073B5),
                          fixedSize: const Size(150, 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Don't have accont?",
                        style: TextStyle(
                          fontFamily: 'Blinker',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          color: Color(0xFF7A7A7A),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign up',
                              style: TextStyle(
                              fontFamily: 'Blinker',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                              color: Color(0xFF1E90FF),
                            ),
                          ),),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
