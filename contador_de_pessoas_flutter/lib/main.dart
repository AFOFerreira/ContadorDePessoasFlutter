import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  String titulo = "Pode entrar";
  void decrement() {
    setState(() {
      if (count > 0) count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      if (count < 21) {
        count++;
        titulo = "Pode entrar";
      } else {
        titulo = "Limite atingido!";
      }
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/contador.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                count.toString(),
                style: const TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: decrement,
                  child: const Text(
                    "Saiu",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 32),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: increment,
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
