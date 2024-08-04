import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/list_tile/divider_list_tile.dart';
import 'package:shop/constants.dart';
import 'package:shop/route/screen_export.dart';
import 'package:shop/state/auth_state.dart';

import 'components/profile_card.dart';
import 'components/profile_menu_item_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);
    final userProfile = authState.userProfile;

    return Scaffold(
      body: ListView(
        children: [
          if (userProfile != null) ...[
            ProfileCard(
              name: userProfile.fullName,
              email: '',
              imageSrc: userProfile.avatar,
              press: () {
                Navigator.pushNamed(context, userInfoScreenRoute);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                "Account",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            ProfileMenuListTile(
              text: "Edit Profile",
              svgSrc: "assets/icons/Order.svg",
              press: () {
                Navigator.pushNamed(context, ordersScreenRoute);
              },
            ),
            ProfileMenuListTile(
              text: "Returns",
              svgSrc: "assets/icons/Order.svg",
              press: () {},
            ),
            const SizedBox(height: defaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding / 2),
              child: Text(
                "Personalization",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            DividerListTileWithTrilingText(
              svgSrc: "assets/icons/Notification.svg",
              title: "Notification",
              trilingText: "Off",
              press: () {
                Navigator.pushNamed(context, enableNotificationScreenRoute);
              },
            ),
            ProfileMenuListTile(
              text: "Preferences",
              svgSrc: "assets/icons/Preferences.svg",
              press: () {
                Navigator.pushNamed(context, preferencesScreenRoute);
              },
            ),
            const SizedBox(height: defaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding / 2),
              child: Text(
                "Settings",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            ProfileMenuListTile(
              text: "Language",
              svgSrc: "assets/icons/Language.svg",
              press: () {
                Navigator.pushNamed(context, selectLanguageScreenRoute);
              },
            ),
            ProfileMenuListTile(
              text: "Location",
              svgSrc: "assets/icons/Location.svg",
              press: () {},
            ),
            const SizedBox(height: defaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding / 2),
              child: Text(
                "Help & Support",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            ProfileMenuListTile(
              text: "Get Help",
              svgSrc: "assets/icons/Help.svg",
              press: () {
                Navigator.pushNamed(context, getHelpScreenRoute);
              },
            ),
            ProfileMenuListTile(
              text: "FAQ",
              svgSrc: "assets/icons/FAQ.svg",
              press: () {},
              isShowDivider: false,
            ),
            const SizedBox(height: defaultPadding),
            ListTile(
              onTap: () {
                authState.clearToken();
                authState.clearUserProfile();
                Navigator.pushNamedAndRemoveUntil(
                    context, logInScreenRoute, (route) => false);
              },
              minLeadingWidth: 24,
              leading: SvgPicture.asset(
                "assets/icons/Logout.svg",
                height: 24,
                width: 24,
                colorFilter: const ColorFilter.mode(
                  errorColor,
                  BlendMode.srcIn,
                ),
              ),
              title: const Text(
                "Log Out",
                style: TextStyle(color: errorColor, fontSize: 14, height: 1),
              ),
            )
          ] else
            Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
