import 'package:facebook_ui/constants/strings.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
      child: SizedBox(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Teléfono o correo electrónico'),
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Contraseña'),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => {}, child: Text("Iniciar sesión"))),
            TextButton(
                onPressed: () => {}, child: Text("¿Olvidaste tu contraseña?")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 140,
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
                Text(" o "),
                SizedBox(
                  width: 140,
                  child: Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 256,
              child: ElevatedButton(
                  onPressed: () => {}, child: Text("Crear cuenta de Facebook")),
            )
          ],
        ),
      ),
    );
  }
}
