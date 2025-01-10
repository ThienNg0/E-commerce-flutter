
import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/configs/theme/app_colors.dart';
class SplashPage extends StatelessWidget{
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
    );
  }

}