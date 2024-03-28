import 'package:flutter/material.dart';
import 'package:meus_gastos/components/custom_button.dart';
import '../components/custon_text_form_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static const titlePage = 'Registrar';
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
              validator: (value) => (value != null && value.isEmpty)
                  ? 'Digite um email válido!'
                  : null,
            ),
            const SizedBox(height: 20),
            CustomTextFormFild(
              hintText: 'Digite sua senha',
              obscureText: true,
              validator: (value) =>
                  (value != null && value.isEmpty) ? 'Digite uma senha!' : null,
            ),
            const SizedBox(height: 40),
           CustomButton(text: 'Registrar', onPressed: (){
               if (_formKey.currentState!.validate()) {
                 print('Campos válidos');
               }
             },
           ),
            const SizedBox(height: 20),
            CustomButton(text: 'Logar', onPressed: () {
              Navigator.pop(context);
            },
            )
          ],
        ),
      ),
    );
  }
}
