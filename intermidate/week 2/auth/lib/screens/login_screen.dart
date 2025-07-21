import 'package:auth/screens/register_screen.dart';
import 'package:auth/widgets/custom_button.dart';
import 'package:auth/widgets/custom_form_field.dart';
import 'package:auth/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.orange,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _LoginHeader(),
              _LoginForm(
                emailController: emailController,
                passwordController: passwordController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, left: 20),
      height: 200,
      color: Colors.orange,
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const _LoginForm({
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CustomFormField(
            controller: emailController,
            hintText: 'Enter your email',
            label: 'Email',
          ),
          SizedBox(height: 16),
          CustomPasswordField(
            controller: passwordController,
            label: 'Password',
          ),
          _LoginOptionsRow(),
          SizedBox(height: 20),
          CustomButton(text: 'Login', onPressed: () {}),
          SizedBox(height: 16),
          _RegisterPrompt(),
          SizedBox(height: 20),
          _SocialLoginDivider(),
          SizedBox(height: 16),
          _SocialLoginButtons(),
        ],
      ),
    );
  }
}

class _LoginOptionsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (_) {}),
        Text('Stay logged in?'),
        Spacer(),
        TextButton(onPressed: () {}, child: Text('Forgot Password?')),
      ],
    );
  }
}

class _RegisterPrompt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don’t have an account yet? "),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => RegisterScreen()),
          ),
          child: Text("Register here", style: TextStyle(color: Colors.orange)),
        ),
      ],
    );
  }
}

class _SocialLoginDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('Or login with'),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}

class _SocialLoginButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.mail)),
        IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
      ],
    );
  }
}
