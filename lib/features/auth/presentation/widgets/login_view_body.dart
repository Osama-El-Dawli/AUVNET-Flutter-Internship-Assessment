import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/auth/presentation/views/sign_up_view.dart';
import 'package:auvnet/features/auth/presentation/widgets/login_view_form.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesLogo),
              const LoginViewForm(),
              const SizedBox(height: 16),
              TextButton(
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity(
                    vertical: VisualDensity.minimumDensity,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, SignUpView.routeName);
                },
                child: Text(
                  'Create an account',
                  style: AppTextStyles.bold14.copyWith(
                    color: Color(0xff1877F2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
