import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/common/validators.dart';
import 'package:ofly_tech_test/core/services/user_services.dart';
import 'package:ofly_tech_test/utils/colors/appColors.dart';

class CadastroPage extends StatefulWidget {
  static String route = "/cadastro";

  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final _userService = UserService();
  final _validator = Validator();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void submitForm() {
    if (formKey.currentState!.validate()) {
      _userService.signUp(
        passwordController.text,
        context,
        emailController.text,
        nameController.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Text("Informe seus dados"),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: nameController,
                validator: _validator.validateFullName,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Nome Completo",
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                validator: _validator.validateEmail,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: passwordController,
                validator: _validator.validatePassword,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Senha",
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.all(12),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.textButtonLightThemeColor,
                    minimumSize: const Size(double.maxFinite, 50),
                  ),
                  onPressed: submitForm,
                  child: const Text(
                    "Enviar dados",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
