import 'package:flutter/material.dart';

class CadastroView extends StatefulWidget {
  const CadastroView({super.key});

  @override
  State<CadastroView> createState() => _CadastroViewState();
}

class _CadastroViewState extends State<CadastroView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Para salvar as informações recebidas nos TextField:
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CadastroView')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Icon(Icons.person_3, size: 120, color: Colors.purple[900]),
              TextFormField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.purple[900]),
                    hintText: 'exemplo@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),

                  // Validação:
                  validator: (value) {
                    if (value == null) {
                      return 'Informe um valor!';
                    } else if (value.isEmpty) {
                      return 'Informe um valor!';
                    }
                    return null;
                  }),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                  controller: txtSenha,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.purple[900]),
                    hintText: 'Insira sua senha!',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),

                  // Validação:
                  validator: (value) {
                    if (value == null) {
                      return 'Informe um valor!';
                    } else if (value.isEmpty) {
                      return 'Informe um valor!';
                    }
                    return null;
                  }),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size(50, 60),
                        textStyle: TextStyle(fontSize: 15),
                      ),
                      // Evento disparado quando o usuário pressiona o botão:
                      onPressed: () {
                        // Executa os validadores
                        if (formKey.currentState!.validate()) {
                          // Form validado com sucesso!
                          // Recuperar os valores informados nos campos:
                          setState(() {});
                        }
                      },
                      child: Text('Recuperar Senha'),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(50, 60),
                      textStyle: TextStyle(fontSize: 15),
                    ),
                    // Evento disparado quando o usuário pressiona o botão:
                    onPressed: () {
                      // Executa os validadores
                      if (formKey.currentState!.validate()) {
                        // Form validado com sucesso!
                        // Recuperar os valores informados nos campos:
                        setState(() {});
                      }
                    },
                    child: Text('Cadastrar'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(50, 60),
                      textStyle: TextStyle(fontSize: 24),
                    ),
                    // Evento disparado quando o usuário pressiona o botão:
                    onPressed: () {
                      // Executa os validadores
                      if (formKey.currentState!.validate()) {
                        // Form validado com sucesso!
                        // Recuperar os valores informados nos campos:
                        setState(() {});
                      }
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
