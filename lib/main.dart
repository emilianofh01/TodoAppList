import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            // resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Image(
                          image: AssetImage("assets/img/logo.png"),
                          width: 180.0),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        child: Center(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  labelText: "Email",
                                  suffixIcon: Icon(Icons.email),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10.0)),
                            ),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "Contraseña",
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.password)),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10.0)),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    minimumSize: const Size.fromHeight(50)),
                                child: const Text("Iniciar sesión")),
                            TextButton(
                                onPressed: () {},
                                style: const ButtonStyle(),
                                child: const Text("¿Olvidaste tu contraseña?"))
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            )));
  }
}
