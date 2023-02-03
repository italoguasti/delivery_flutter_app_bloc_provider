import 'package:dw_delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:dw_delivery_app/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:dw_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

  @override
  void dispose() {
    _nameEC.dispose();
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cadastro',
                  style: context.textStyles.textTitle,
                ),
                Text(
                  'Preencha os campso abaixo para criar o seu cadastro.',
                  style: context.textStyles.textMedium.copyWith(fontSize: 18.0),
                ),
                const SizedBox(height: 30.0),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Nome'),
                  validator: Validatorless.required('Nome Obrigatório'),
                  controller: _nameEC,
                ),
                const SizedBox(height: 30.0),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'E-mail'),
                  validator: Validatorless.multiple([
                    Validatorless.required('E-mail Obrigatório'),
                    Validatorless.email('E-mail inválido'),
                  ]),
                  controller: _emailEC,
                ),
                const SizedBox(height: 30.0),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Senha'),
                  validator: Validatorless.multiple([
                    Validatorless.required('Senha Obrigatório'),
                    Validatorless.min(
                        6, 'Senha deve conter pelo menos 6 caracteres'),
                  ]),
                  controller: _passwordEC,
                ),
                const SizedBox(height: 30.0),
                TextFormField(
                  obscureText: true,
                  decoration:
                      const InputDecoration(labelText: 'Confirma Senha'),
                  validator: Validatorless.multiple([
                    Validatorless.required('Confirma Senha Obrigatório'),
                    Validatorless.compare(_passwordEC, 'Senhas não conferem'),
                  ]),
                ),
                const SizedBox(height: 30.0),
                Center(
                  child: DeliveryButton(
                    onPressed: () {
                      final valid = _formKey.currentState?.validate() ?? false;
                      i(valid) {
                        //asdasd
                      }
                    },
                    label: 'Cadastrar',
                    width: double.infinity,
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
