import 'package:flutter/material.dart';
import 'package:forkobo_merchant/utils/extensions.dart';
import '../../../utils/app_colors.dart';

class TermsPrivacyScreen extends StatelessWidget {
  final bool isTerms;

  const TermsPrivacyScreen({super.key, required this.isTerms});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isTerms ? 'Terms of Service' : 'Privacy Policy'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isTerms ? 'Terms of Service' : 'Privacy Policy',
              style: context.textTheme.headlineLarge?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              isTerms ? _termsContent : _privacyContent,
              style: context.textTheme.labelMedium?.copyWith(
                fontSize: 14,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static const String _termsContent = '''
Welcome to Forkobo!

These terms and conditions outline the rules and regulations for the use of Forkobo's mobile application.

1. ACCEPTANCE OF TERMS
By accessing and using this application, you accept and agree to be bound by the terms and provision of this agreement.

2. USER ACCOUNTS
- You must provide accurate and complete information when creating an account
- You are responsible for maintaining the confidentiality of your account credentials
- You must notify us immediately of any unauthorized use of your account

3. PROHIBITED USES
You may not use our service:
- For any unlawful purpose or to solicit others to perform unlawful acts
- To violate any international, federal, provincial, or state regulations, rules, laws, or local ordinances
- To infringe upon or violate our intellectual property rights or the intellectual property rights of others

4. PRIVACY POLICY
Your privacy is important to us. Please review our Privacy Policy, which also governs your use of the service.

5. MODIFICATIONS
We reserve the right to modify these terms at any time. We will notify users of any changes via the application.

Last updated: 27 June, 2025
''';

  static const String _privacyContent = '''
Privacy Policy for Forkobo

This Privacy Policy describes how we collect, use, and protect your information when you use our mobile application.

1. INFORMATION WE COLLECT
- Personal Information: Name, email address, phone number
- Usage Data: How you interact with our application
- Device Information: Device type, operating system, unique device identifiers

2. HOW WE USE YOUR INFORMATION
- To provide and maintain our service
- To notify you about changes to our service
- To provide customer support
- To monitor usage of our service

3. INFORMATION SHARING
We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as described in this policy.

4. DATA SECURITY
We implement appropriate security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction.

5. YOUR RIGHTS
- Access: You can request access to your personal data
- Correction: You can request correction of inaccurate data
- Deletion: You can request deletion of your personal data

6. CONTACT US
If you have any questions about this Privacy Policy, please contact us through the application.

Last updated: 27 June, 2025
''';
}
