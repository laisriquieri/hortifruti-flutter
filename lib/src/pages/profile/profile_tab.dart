import 'package:app_comerce/src/pages/cummon_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:app_comerce/src/config/app_data.dart' as appData;

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfil do Usuário',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          //Email
          CustomTextField(
              readOnly: true,
              initialValue: appData.user.email,
              icon: Icons.email,
              label: 'E-mail'),

          //Nome
          CustomTextField(
              readOnly: true,
              initialValue: appData.user.name,
              icon: Icons.person,
              label: 'Nome'),

          //Celular
          CustomTextField(
              readOnly: true,
              initialValue: appData.user.phone,
              icon: Icons.phone,
              label: 'Celular'),

          //CPF
          CustomTextField(
            readOnly: true,
            initialValue: appData.user.cpf,
            icon: Icons.copy,
            label: 'CPF',
            isSecret: true,
          ),

          //Botão atualizar senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.green,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                )
              ),
              onPressed: () {},
              child: const Text(
                'Atualizar Senha',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
