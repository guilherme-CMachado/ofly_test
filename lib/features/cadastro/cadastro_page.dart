import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/services/user_services.dart';

class CadastroPage extends StatefulWidget {
  static String route = "/cadastro";
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final nameController = TextEditingController();

    final _userService = UserService();
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              Text("Informe seus dados"),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Nome Completo"),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Email"),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: passwordController,
                validator: (validator) {
                  if (validator!.length < 6) {
                    "A senha deverá no mínimo 6 caracteres";
                  }
                },
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "Senha"),
              ),
              SizedBox(
                height: 30,
              ),
              Spacer(),
              Container(
                margin: const EdgeInsets.all(12),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    maximumSize: Size(double.infinity, 40),
                  ),
                  onPressed: () {
                    _userService.signUp(
                      passwordController.text,
                      context,
                      emailController.text,
                      nameController.text,
                    );
                  },
                  child: Text(
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
