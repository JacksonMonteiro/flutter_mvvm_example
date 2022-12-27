import 'package:flutter/material.dart';

class ResponseView extends StatefulWidget {
  const ResponseView({super.key});

  @override
  State<ResponseView> createState() => _ResponseViewState();
}

class _ResponseViewState extends State<ResponseView> {
  @override
  Widget build(BuildContext context) {
    final response = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      body: (response != false)
          ? const Center(
              child: Text(
                'Sucesso ao realizar login',
                style: TextStyle(color: Colors.green, fontSize: 24),
              ),
            )
          : const Center(
              child: Text('Erro ao realizar login',
                  style: TextStyle(color: Colors.red, fontSize: 24))),
    );
  }
}
