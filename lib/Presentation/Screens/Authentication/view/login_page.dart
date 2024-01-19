import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:glam_garb_admin/Application/auth/auth_bloc.dart';
import 'package:glam_garb_admin/Presentation/Screens/NavigationBar/view/nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool isloading = false;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: size.height * 0.09),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding:
                EdgeInsets.only(left: 30, right: 30, top: size.height * 0.1),
            child: Column(
              children: [
                // Lottie.asset('https://lottie.host/f5a4f76b-39f8-444c-8cff-08de7f5bb3dc/4rFiAMuwPu.json',
                // repeat: true,
                // reverse: true,
                // height: 300,
                // fit: BoxFit.cover
                // ),
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9Y5YS7_OytcS_zErPHrL-M0U_GZbsChykXiWnzS0b_M9tjyLqwyKY6Ujom9hTANI_BzY&usqp=CAU'),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                    controller: emailcontroller,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Email is Empty";
                      }
                      final emailRegExp =
                          RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

                      if (!emailRegExp.hasMatch(text)) {
                        return 'Invalid Email';
                      }
                      return null;
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: 'Email ID',
                      hintStyle: const TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      fillColor: Colors.grey.shade900.withOpacity(0.5),
                      focusColor: Colors.white,
                      filled: true,
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).nextFocus();
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: passwordcontroller,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Password is Empty";
                      }
                      return null;
                    },
                    obscureText: showPassword ? false : true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.security,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey.shade900.withOpacity(0.5),
                      focusColor: Colors.white,
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: Icon(
                          showPassword
                              ? Icons.visibility_off
                              : Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                    }),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state.adminlogin != null) {
                        if (state.adminlogin!.email != "") {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return navPage();
                            },
                          ));
                        }
                      }
                    },
                    builder: (context, state) {
                      return state.isLoading
                          ? const CircularProgressIndicator()
                          : ElevatedButton.icon(
                              onPressed: () {
                                if (formkey.currentState!.validate()) {}
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => navPage()));
                                context.read<AuthBloc>().add(AuthEvent.signIn(
                                    emailcontroller.text,
                                    passwordcontroller.text));
                              },
                              icon: const Icon(
                                Icons.check_circle_outline_outlined,
                                color: Colors.white,
                              ),
                              label: const Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey.shade900)),
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
