import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:forkobo_merchant/presentation/screens/home/home_screen.dart';
import 'package:forkobo_merchant/presentation/screens/profile/profile_screen.dart';
import 'package:forkobo_merchant/presentation/screens/stores/stores_screen.dart';
import 'package:forkobo_merchant/presentation/screens/withdrawals/withdrawals_screen.dart';
import 'package:forkobo_merchant/presentation/widget/image_loader.dart';
import 'package:forkobo_merchant/utils/app_colors.dart';
import 'package:forkobo_merchant/presentation/screens/cards/cards_screen.dart';
import 'package:provider/provider.dart';

import '../notifiers/auth_notifier.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 0;
  late AuthNotifier authNotifier;

  void _onNavTap(int index) {
    if (_currentIndex == index) {
      return;
    }
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildSvgIcon(String assetPath, Color color) {
    return SvgPicture.asset(
      assetPath,
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }

  Widget _buildProfileIcon({required bool isSelected}) {
    final Color borderColor = isSelected ? AppColors.black : AppColors.grey;
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 1.5),
      ),
      clipBehavior: Clip.antiAlias,
      child: ImageLoader(
        imageUrl: authNotifier.firebaseUser?.photoURL ?? '',
        fit: BoxFit.cover,
        errorWidget: Icon(Icons.person, size: 18),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    authNotifier = context.read<AuthNotifier>();

    return Scaffold(
      backgroundColor: AppColors.lightBg,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          const HomeScreen(),
          const WithdrawalsScreen(),
          const StoresScreen(),
          const CardsScreen(),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.grey,
        onTap: _onNavTap,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: _buildSvgIcon('assets/svg/home.svg', AppColors.grey),
            activeIcon: _buildSvgIcon(
              'assets/svg/home-active.svg',
              AppColors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Withdrawals',
            icon: _buildSvgIcon('assets/svg/withdrawals.svg', AppColors.grey),
            activeIcon: _buildSvgIcon(
              'assets/svg/withdrawals-active.svg',
              AppColors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Stores',
            icon: _buildSvgIcon('assets/svg/store.svg', AppColors.grey),
            activeIcon: _buildSvgIcon(
              'assets/svg/store-active.svg',
              AppColors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cards',
            icon: _buildSvgIcon('assets/svg/card.svg', AppColors.grey),
            activeIcon: _buildSvgIcon(
              'assets/svg/card-active.svg',
              AppColors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: 'You',
            icon: _buildProfileIcon(isSelected: false),
            activeIcon: _buildProfileIcon(isSelected: true),
          ),
        ],
      ),
    );
  }
}

// Cards page is now a dedicated screen with an empty state.
