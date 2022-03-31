
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:app_comerce/src/config/custom_colors.dart';
import 'package:app_comerce/src/pages/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import '../base/base_screen.dart';
import 'components/custom_text_field.dart';




class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                  child:

                  // Logo
                  Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text.rich(TextSpan(
                        style: TextStyle(
                          fontSize: 40,
                        ),
                        children: [
                          TextSpan(
                            text: "Vare",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          TextSpan(
                            text: 'jão',
                            style: TextStyle(
                              color: Colors.orange,
                            )
                          )
                        ],
                      ),),

                     //Animacão
                     SizedBox(
                       height: 30,
                       child: DefaultTextStyle(
                         style: const TextStyle(
                          fontSize: 25,
                         ),
                         child: AnimatedTextKit(
                           pause: Duration.zero,
                           repeatForever: true,
                           animatedTexts: [
                             FadeAnimatedText('TESTE'),
                             FadeAnimatedText('Teste'),
                             FadeAnimatedText('teste'),
                           ],

                         ),
                       ),
                     ),

                    ],
                  ),
              ),

              //Card branco

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45)
                  )
                ),

                //Login,campos, botões e textos

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Email
                    const CustomTextField(
                      icon: Icons.email,
                      label: "Email",
                    ),
                    //Senha
                    const CustomTextField(
                      icon: Icons.lock,
                      label: "Senha",
                      isSecret: true,
                    ),
                    SizedBox(
                      height: 50,
                      child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape:
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (c) {
                            return const BaseScreen();
                          },),);
                        },
                        child: const Text("Entrar", style: TextStyle( fontSize: 18,),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: () {}, child: const Text("Esqueceu a senha?",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),),
                    ),

                    //Divisor

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.deepPurpleAccent.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric( horizontal: 15),
                            child: Text("ou"),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.deepPurpleAccent.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Botão Criar conta

                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          side: BorderSide(
                            width: 2,
                            color: CustomColors.customSwatchColor,
                          )
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (c) {
                                    return SignUpScreen();
                                  }

                              )
                          );
                        }, child:
                      const Text("Criar Conta", style: TextStyle(
                        fontSize: 18,
                      ),),),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
