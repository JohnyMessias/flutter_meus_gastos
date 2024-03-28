import 'package:flutter/material.dart';
import 'package:meus_gastos/components/custom_button.dart';
import 'package:meus_gastos/components/custon_text_form_field.dart';
import 'package:meus_gastos/views/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const titlePage = 'Entrar';
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 6, top: 83),
              child: Text(
                titlePage,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomTextFormFild(
              hintText: 'Enderço de email para logar',
              keyboardType: TextInputType.emailAddress,
              validator: (value) => (value != null && value.isEmpty) ? 'Digite um email válido!' : null,
            ),
            const SizedBox(height: 20),
            CustomTextFormFild(
              hintText: 'Digite sua senha',
              obscureText: true,
              validator: (value) => (value != null && value.isEmpty) ? 'Digite uma senha!' : null,
            ),
            const SizedBox(height: 40),
            CustomButton(text: 'Entrar', onPressed: (){
              if(_formKey.currentState!.validate()) {
                print('Campos validos');
              }
            }),
            const SizedBox(height: 20),
            CustomButton(text: 'Registrar', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (newContext) => const RegisterView(),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
