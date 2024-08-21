import 'package:chatify/pages/auth_pages/auth_constants.dart';
import 'package:chatify/provider/auth_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late AuthProvider _auth;
  String _password = '';
  String _email = '';
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AuthProvider>.value(
        value: AuthProvider.instance,
        child: _loginPage(),
      ),
    );
  }

  Widget _loginPage() {
    return Builder(builder: (context) {
      _auth = Provider.of<AuthProvider>(context);
      //print(_auth.user);
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            welcomeText(),
            formWidget(),
            const SizedBox(height: 15),
            Center(
              child: buttonWidget(),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: richTextWidget(),
            ),
          ],
        ),
      );
    });
  }

  Center welcomeText() {
    return const Center(
      child: Text(
        'Welcome to Chatify',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget richTextWidget() {
    return RichText(
      text: TextSpan(
        text: "Not a user?,",
        style: const TextStyle(
          color: Colors.black,
          //fontWeight: FontWeight.w400,
        ),
        children: [
          TextSpan(
            text: ' Create Account',
            style: const TextStyle(
                color: Color.fromARGB(255, 74, 49, 173),
                fontWeight: FontWeight.w500),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             const SignUpScreen()));
              },
          ),
        ],
      ),
    );
  }

  Widget buttonWidget() {
    return MaterialButton(
      elevation: 0,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black)),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // print('validated');
        } //katy perry roar//alors on danse stromae
      },
      color: const Color.fromARGB(255, 178, 214, 244),
      child: const Text('Log In'),
    );
  }

  Widget formWidget() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: 15),
          TextFormField(
            onChanged: (value) => _email = value,
            validator: (value) =>
                value != '' || value!.contains('@') ? null : 'Enter an email',
            keyboardType: TextInputType.emailAddress,
            decoration: decoration.copyWith(
              label: const Text('Email'),
            ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            onChanged: (value) => _password = value,
            validator: (value) => value!.length < 6 || value.length > 20
                ? 'Enter a password more than 6 chars and less than 21'
                : null,
            obscureText: _obscure,
            keyboardType: TextInputType.visiblePassword,
            decoration: decoration.copyWith(
              label: const Text('Password'),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(
                    () {
                      _obscure = !_obscure;
                    },
                  );
                },
                icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
