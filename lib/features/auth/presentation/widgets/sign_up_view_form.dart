import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/core/widgets/custom_button.dart';
import 'package:auvnet/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpViewForm extends StatelessWidget {
  const SignUpViewForm({super.key});

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
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTextFormField(
              isPassword: true,
              textInputType: TextInputType.visiblePassword,
              text: 'password',
              prefixIcon: Icons.lock_outline,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTextFormField(
              isPassword: true,
              textInputType: TextInputType.visiblePassword,
              text: 'password',
              prefixIcon: Icons.lock_outline,
            ),
          ),
          const SizedBox(height: 18),
          CustomButton(
            text: 'Sign up',
            textStyle: AppTextStyles.medium14.copyWith(color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
