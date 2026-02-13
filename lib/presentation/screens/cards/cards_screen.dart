import 'package:flutter/material.dart';

import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/presentation/widget/empty_state_widget.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: EmptyStateWidget(
            title: 'No cards yet',
            desc: 'You currently have no cards linked. Add one later.',
            showAnimatedLogo: true,
            padding: EdgeInsets.only(top: 100, left: 24, right: 24),
          ),
        ),
      ),
    );
  }
}