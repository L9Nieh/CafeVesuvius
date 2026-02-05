import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import 'app_sizes.dart';

class AppDecorations {
  // Logo container decoration
  static BoxDecoration logoBox = BoxDecoration(
    borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
    border: Border.all(color: AppColors.lightBg300),
  );

  // Email field input decoration
  static InputDecoration emailInput = InputDecoration(
    hintText: 'Email',
    labelText: 'Email',
    prefixIcon: const Icon(Icons.email),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppSizes.radiusMedium)),
    ),
  );

  // Password field input decoration
  static InputDecoration passwordInput = InputDecoration(
    hintText: 'Password',
    labelText: 'Password',
    prefixIcon: const Icon(Icons.key),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppSizes.radiusMedium)),
    ),
  );

  // Primary button style
  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: AppColors.lightPrimary500,
    foregroundColor: AppColors.lightText50,
  );

  // Secondary button style
  static ButtonStyle secondaryButton = ElevatedButton.styleFrom(
    backgroundColor: AppColors.lightSecondary500,
    foregroundColor: AppColors.lightText900,
  );
}
