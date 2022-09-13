import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 190,
                width: 170,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(400, 400)),
                  gradient: LinearGradient(
                      colors: [Color(0xffffa500), Colors.deepOrangeAccent]),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: const [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "L",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Text(
                    "O",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    "G",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    "I",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    "N",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: emailEditingController,
                      decoration: InputDecoration(
                          hintText: "Enter your Email",
                          hintStyle: const TextStyle(
                            color: Colors.black54,
                          ),
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: passwordEditingController,
                      decoration: InputDecoration(
                          hintText: "Enter your Password",
                          hintStyle: const TextStyle(
                            color: Colors.black54,
                          ),
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          )),
                      obscureText: true,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Home()));
                      },
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color(0xffffa500),
                            Colors.deepOrangeAccent,
                          ]),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w900,
                                fontSize: 19),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => Forgot(),
                      //   ),
                      // );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(right: 18.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170.0),
                    child: Row(
                      children: [
                        const Text(
                          "Don't have an account ?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => SignUp()));
                          },
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 13,
                            ),
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
      )),
    );
  }
}