import 'package:flutter/material.dart';
import 'package:tomercon_task1/profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  IconData id = Icons.visibility_off;
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const Image(
                    fit: BoxFit.cover,
                    height: 350,
                    image: NetworkImage(
                        'https://economictimes.indiatimes.com/thumb/msid-75771189,width-1200,height-900,resizemode-4,imgsize-693576/223-health-insurance.jpg'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 330),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(27),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          TextField(
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SFUIDisplay'),
                              decoration:
                                  inputdec("Username", Icons.person_outline)),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: _obscuretext,
                            style: const TextStyle(
                                color: Colors.black, fontFamily: 'SFUIDisplay'),
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    icon: Icon(id),
                                    color: Colors.black,
                                    onPressed: () {
                                      setState(() {
                                        _obscuretext = !_obscuretext;
                                        if (_obscuretext) {
                                          id = Icons.visibility_off;
                                        } else {
                                          id = Icons.visibility;
                                        }
                                      });
                                    }),
                                fillColor: Colors.white,
                                filled: true,
                                border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.cyan)),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  height: 2.2,
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.all(0),
                                isDense: true,
                                hintText: "Password"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const ProfilePage()));
                              },
                              child: const Text(
                                'SIGN IN',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'SFUIDisplay',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              color: Colors.cyan,
                              elevation: 0,
                              minWidth: 400,
                              height: 50,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: const Text("Forgot Password?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      decoration: TextDecoration.underline))),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "New user ?",
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  child: Text("Register now",
                                      style: TextStyle(
                                          color: Colors.red[800],
                                          fontSize: 18,
                                          decoration:
                                              TextDecoration.underline))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  inputdec(var title, var icn) => InputDecoration(
      fillColor: Colors.white,
      filled: true,
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.black)),
      focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.cyan)),
      enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.black)),
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      hintStyle: const TextStyle(
        fontSize: 16,
        color: Colors.grey,
        height: 2.2,
      ),
      prefixIcon: Icon(
        icn,
        size: 20,
        color: Colors.black,
      ),
      contentPadding: const EdgeInsets.all(0),
      isDense: true,
      hintText: "$title");
}
