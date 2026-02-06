import 'package:cafe_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../styles/app_text_styles.dart';
import '../themes/app_colors.dart';
import '../services/theme_service.dart';
import '../styles/app_spacing.dart';
import '../styles/app_sizes.dart';
import '../styles/app_decorations.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final themeService = ThemeService();
    // Dummy user data
    final String username = 'Username';
    final String? email = null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Screen'),
        centerTitle: true,
        backgroundColor: themeService.isDarkMode()
            ? AppColors.darkBg500
            : AppColors.lightBg500,
        actions: [
          IconButton(
            icon: Icon(
              themeService.isDarkMode() ? Icons.light_mode : Icons.dark_mode,
              color: themeService.isDarkMode()
                  ? AppColors.darkText50
                  : AppColors.lightText900,
            ),
            onPressed: () {
              themeService.toggleTheme();
              setState(() {});
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 600,
          padding: EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: themeService.isDarkMode()
                ? AppColors.darkBg200
                : AppColors.lightBg50,
            border: Border.all(
              color: themeService.isDarkMode()
                  ? AppColors.darkBg400
                  : AppColors.lightBg300,
            ),
            borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: AppSpacing.lg),
              // Avatar circle
              CircleAvatar(
                radius: AppSizes.logoSize / 2,
                backgroundColor: themeService.isDarkMode()
                    ? AppColors.darkBg400
                    : AppColors.lightBg400,
                child: Text(
                  username,
                  style: AppTextStyles.h2.copyWith(
                    color: themeService.isDarkMode()
                        ? AppColors.darkText50
                        : AppColors.lightText900,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: AppSpacing.xl),
              // Username box
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(
                  vertical: AppSpacing.sm,
                  horizontal: AppSpacing.md,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: themeService.isDarkMode()
                        ? AppColors.darkBg400
                        : AppColors.lightBg300,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
                ),
                child: Text(
                  'Hi @$username',
                  style: AppTextStyles.h3.copyWith(
                    color: themeService.isDarkMode()
                        ? AppColors.darkText50
                        : AppColors.lightText900,
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.sm),
              // Email box
              Container(
                width: 220,
                padding: EdgeInsets.symmetric(
                  vertical: AppSpacing.sm,
                  horizontal: AppSpacing.md,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: themeService.isDarkMode()
                        ? AppColors.darkBg400
                        : AppColors.lightBg300,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
                ),
                child: Text(
                  'Email: $email',
                  style: AppTextStyles.h3.copyWith(
                    color: themeService.isDarkMode()
                        ? AppColors.darkText50
                        : AppColors.lightText900,
                  ),
                ),
              ),
              SizedBox(height: AppSpacing.xxl),
              // Change Password button
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {},
                  style: AppDecorations.primaryButton,
                  child: const Text('Change Password'),
                ),
              ),
              SizedBox(height: AppSpacing.lg),
              // Sign out button
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const Login()),
                      (route) => false,
                    );
                  },
                  style: AppDecorations.secondaryButton,
                  child: const Text('Sign out'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
