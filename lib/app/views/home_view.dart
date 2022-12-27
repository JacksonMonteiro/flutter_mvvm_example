import 'package:flutter/material.dart';
import 'package:mvvm/app/models/user_model.dart';
import 'package:mvvm/app/utils/routes.dart';
import 'package:mvvm/app/view_models/login_view_model.dart';
import 'package:mvvm/app/view_models/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final loginvm = Provider.of<LoginViewModel>(context);
    final uservm = UserViewModel(User(username: '', password: ''));

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: uservm.usernameController,
              onChanged: (value) => uservm.fillUsername(),
              decoration: const InputDecoration(label: Text('Nome de usuário')),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: uservm.passwordController,
              onChanged: (value) => uservm.fillPassword(),
              decoration: const InputDecoration(label: Text('Senha')),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  loginvm.doAuth(uservm.user);
                  Navigator.of(context).pushNamed(Routes.response, arguments: loginvm.response);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 40),
                ),
                child: const Text('Entrar'))
          ],
        ),
      ),
    );
  }
}
