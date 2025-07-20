import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'app_colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية المزخرفة
          Positioned.fill(
            child: Image.asset(
              'assets/images/background_pattern.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 40),

                    const SizedBox(height: 24),

                    const Text(
                      'إنشاء حساب جديد',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textDark,
                      ),
                    ),

                    const SizedBox(height: 30),

                    // الاسم
                    TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.user),
                        labelText: 'الاسم الكامل',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // البريد الإلكتروني
                    TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.sms),
                        labelText: 'البريد الإلكتروني',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // كلمة المرور
                    TextFormField(
                      obscureText: true,
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Iconsax.lock),
                        labelText: 'كلمة المرور',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // زر إنشاء الحساب
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/otp');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'إنشاء الحساب',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // رابط تسجيل الدخول
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'هل لديك حساب؟ سجل الدخول',
                        style: TextStyle(color: AppColors.textDark),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
