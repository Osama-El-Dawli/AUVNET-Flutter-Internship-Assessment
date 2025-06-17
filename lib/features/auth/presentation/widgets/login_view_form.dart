import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/core/widgets/custom_button.dart';
import 'package:auvnet/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginViewForm extends StatelessWidget {
  const LoginViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              text: 'mail',
              prefixIcon: Icons.mail_outline,
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTextFormField(
              obscureText: true,
              textInputType: TextInputType.visiblePassword,
              text: 'password',
              prefixIcon: Icons.lock_outline,
            ),
          ),
          const SizedBox(height: 26),
          CustomButton(
            text: 'Log in',
            textStyle: AppTextStyles.medium14.copyWith(color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
