import 'package:flutter/material.dart';
import 'package:pg1/routes.dart'; // Importa o arquivo de rotas
import 'package:pg1/pages/login_page.dart'; // Importa a LoginPage (para fallback)
import 'package:pg1/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevsEcomm',
      theme: ThemeData(
        fontFamily: 'Inter', // Define a fonte padrão para o aplicativo
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStatePropertyAll<Color>(Colors.black),
          checkColor: MaterialStatePropertyAll<Color>(Colors.white),
        ),
      ),
      home: const SplashPage(),
      routes: AppRoutes.routes, // Usa as rotas definidas no AppRoutes
      debugShowCheckedModeBanner: false,
      // Opcional: página de fallback caso a rota não exista
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const LoginPage());
      },
    );
  }
}
