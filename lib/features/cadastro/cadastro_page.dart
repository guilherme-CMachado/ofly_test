import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/core/services/user_services.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _ageController = TextEditingController();
    final _nameController = TextEditingController();

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
                controller: _nameController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Nome Completo"),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Sua idade"),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Email"),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _passwordController,
                validator: (validator) {
                  "A senha deverá no mínimo 6 caracteres";
                },
                decoration: InputDecoration(
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
                  onPressed: () {},
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
