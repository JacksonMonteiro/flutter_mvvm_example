import 'package:flutter/material.dart';
import 'package:mvvm/app/utils/routes.dart';
import 'package:provider/provider.dart';

import 'view_models/login_view_model.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.instance.initalRoute,
        routes: Routes.instance.routes,
      ),
    );
  }
}
