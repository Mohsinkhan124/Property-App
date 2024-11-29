import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:property_dealer/HomeView.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String name = '';

 

   Singup(String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('.....Successfull.....');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            const Text(
              '7:41',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const Spacer(),
            const Icon(Icons.signal_cellular_alt_rounded, color: Colors.white),
            const SizedBox(width: 8),
            const Icon(Icons.wifi, color: Colors.white),
            const SizedBox(width: 8),
            Transform.rotate(
              angle: 3.14 / 2,
              child: const Icon(Icons.battery_full, color: Colors.white),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            ClipOval(
              child: Image.asset(
                'assets/login.png',
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 0),
            const Text(
              'Login To Your Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  if (!isLogin)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: TextFormField(
                        key: const ValueKey('Name'),
                        decoration: const InputDecoration(
                          labelText: 'Enter your name',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.length < 3) {
                            return 'Name must be at least 3 characters long';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          name = value!;
                        },
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: TextFormField(
                      key: const ValueKey('Email'),
                      decoration: const InputDecoration(
                        labelText: 'Enter your email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        email = value!;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: TextFormField(
                      obscureText: true,
                      key: const ValueKey('Password'),
                      decoration: const InputDecoration(
                        labelText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        password = value!;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(170, 10, 0, 0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.task_alt_rounded,
                              color: Colors.blue,
                            )),
                        const Text(
                          'Remember me',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                const  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        Singup(email, password);
                      }
                     Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const Homeview())
                      );
                    },
                 style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 150, vertical: 15),
                    ),
                    child: Text(
                      isLogin ? 'Login' : 'Sign Up',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: isLogin
                                ? "Don't have an account? "
                                : 'Already Signed Up? ',
                            style: const TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: isLogin ? 'Sign Up' : 'Login',
                            style: const TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'or continue with',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 20, 0, 0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/Facebook.webp',
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        const SizedBox(width: 40),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage('assets/Google.webp'),
                                )),
                          ),
                        ),
                        const SizedBox(width: 40),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage('assets/Mac.png'),
                                  fit: BoxFit.cover,
                                )),
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
    );
  }
}
