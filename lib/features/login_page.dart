import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/user.dart';
import 'package:ofly_tech_test/core/services/user_services.dart';
import 'package:ofly_tech_test/features/cadastro/cadastro_page.dart';
import 'package:ofly_tech_test/features/home/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _userService = UserService();
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Container(
            color: Colors.white,
            width: double.maxFinite,
            height: 400,
            child: Column(
              children: [
                const Text(
                  "Olá!",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Senha",
                    prefixIcon: Icon(
                      Icons.password,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.all(8),
                  width: double.maxFinite,
                  height: 50,
                  child: TextButton(
                    onPressed: () async {
                      // Autenticação do usuário
                      UserModel? user = await _userService.signIn(
                        _emailController.text,
                        _passwordController.text,
                      );

                      if (user != null) {
                        // Navega para a HomePage com os dados do usuário
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => HomePage(userModel: user),
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 4),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.all(8),
                  width: double.maxFinite,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CadastroPage()));
                    },
                    child: Text("Cadastrar"),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}