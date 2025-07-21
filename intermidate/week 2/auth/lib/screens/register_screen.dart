import 'package:auth/widgets/custom_button.dart';
import 'package:auth/widgets/custom_form_field.dart';
import 'package:auth/widgets/custom_password_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  RegisterScreen({super.key});

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
              _RegisterHeader(),
              _RegisterForm(
                nameController: nameController,
                emailController: emailController,
                phoneController: phoneController,
                passwordController: passwordController,
                confirmPasswordController: confirmPasswordController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, left: 20),
      height: 200,
      color: Colors.orange,
      child: Text(
        'Register',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const _RegisterForm({
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.passwordController,
    required this.confirmPasswordController,
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
          _RegisterPhotoPicker(),
          SizedBox(height: 16),
          CustomFormField(
            controller: nameController,
            hintText: 'Your Name, e.g : John Doe',
            label: 'Name',
          ),
          SizedBox(height: 16),
          CustomFormField(
            controller: emailController,
            hintText: 'e.g : johndoe@gmail.com',
            label: 'Email',
          ),
          SizedBox(height: 16),
          CustomFormField(
            controller: phoneController,
            hintText: '+01 112 xxx xxx',
            label: 'Phone Number',
          ),
          SizedBox(height: 16),
          CustomPasswordField(
            controller: passwordController,
            label: 'Confirm Password',
            hintText: 'Your password, at least 8 character.',
          ),
          SizedBox(height: 16),
          CustomPasswordField(
            controller: confirmPasswordController,
            label: 'Confirm Password',
            hintText: 'Re-type your password',
          ),
          SizedBox(height: 20),
          CustomButton(
            text: 'Register',
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

class _RegisterPhotoPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.grey[200],
      child: Icon(Icons.camera_alt, size: 30),
    );
  }
}
