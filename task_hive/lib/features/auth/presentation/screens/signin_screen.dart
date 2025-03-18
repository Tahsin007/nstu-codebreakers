import 'package:flutter/material.dart';
import 'package:task_hive/core/extensions/app_extension.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Welcome to Task Hive',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Sign In',
                  style: textTheme.textxlBold.copyWith(color: scheme.textColor),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: emailCtrl,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passCtrl,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    // style: textTheme.text2xlMedium.copyWith(
                    //   color: scheme.textColor,
                    // ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: Text(
                    "Reset your password",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: Text(
                    "Don't have an account? Sign up!",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
