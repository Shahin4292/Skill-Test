// import 'package:flutter/material.dart';
//
// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         _buildDrawerItem(Icons.home, 'Home', true),
//         _buildDrawerItem(Icons.person, 'Profile', false),
//         _buildDrawerItem(Icons.location_on, 'Nearby', false),
//         _buildDrawerItem(Icons.bookmark, 'Bookmark', false),
//         _buildDrawerItem(Icons.notifications, 'Notification', false),
//         _buildDrawerItem(Icons.message, 'Message', false),
//         Divider(color: Colors.white70, thickness: 1),
//         _buildDrawerItem(Icons.settings, 'Setting', false),
//         _buildDrawerItem(Icons.help, 'Help', false),
//         _buildDrawerItem(Icons.logout, 'Logout', false),
//       ],
//     );
//   }
//
//   Widget _buildDrawerItem(IconData icon, String title, bool isSelected) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 40),
//       child: Container(
//         decoration: BoxDecoration(
//             color: isSelected ? Colors.white : Colors.transparent,
//             borderRadius: BorderRadius.only(
//                 topRight: Radius.circular(30), bottomRight: Radius.circular(30))),
//         child: ListTile(
//           leading: Icon(icon, color: isSelected ? Colors.blue : Colors.white),
//           title: Text(
//             title,
//             style: TextStyle(
//               color: isSelected ? Colors.blue : Colors.white,
//               fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//             ),
//           ),
//           onTap: () {
//           },
//         ),
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
//
// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Container(
//         color: Colors.blue,
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: const BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Row(
//                   children: [
//                     const Icon(Icons.home, color: Colors.white, size: 30),
//                     const SizedBox(width: 10),
//                     const Text(
//                       'Home',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             _buildDrawerItem(
//               icon: Icons.person,
//               text: 'Profile',
//               onTap: () {},
//             ),
//             _buildDrawerItem(
//               icon: Icons.location_on,
//               text: 'Nearby',
//               onTap: () {},
//             ),
//             const Divider(color: Colors.white70),
//             _buildDrawerItem(
//               icon: Icons.bookmark,
//               text: 'Bookmark',
//               onTap: () {},
//             ),
//             _buildDrawerItem(
//               icon: Icons.notifications,
//               text: 'Notification',
//               trailing: _buildNotificationDot(),
//               onTap: () {},
//             ),
//             _buildDrawerItem(
//               icon: Icons.message,
//               text: 'Message',
//               trailing: _buildNotificationDot(),
//               onTap: () {},
//             ),
//             const Divider(color: Colors.white70),
//             _buildDrawerItem(
//               icon: Icons.settings,
//               text: 'Setting',
//               onTap: () {},
//             ),
//             _buildDrawerItem(
//               icon: Icons.help,
//               text: 'Help',
//               onTap: () {},
//             ),
//             _buildDrawerItem(
//               icon: Icons.logout,
//               text: 'Logout',
//               onTap: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDrawerItem({
//     required IconData icon,
//     required String text,
//     Widget? trailing,
//     VoidCallback? onTap,
//   }) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.white),
//       title: Text(
//         text,
//         style: const TextStyle(color: Colors.white),
//       ),
//       trailing: trailing,
//       onTap: onTap,
//     );
//   }
//
//   Widget _buildNotificationDot() {
//     return Container(
//       width: 10,
//       height: 10,
//       decoration: const BoxDecoration(
//         color: Colors.red,
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_test/Res/assets/app_assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDrawerItem(AppAssets.home, 'Home', true),
        _buildDrawerItem(AppAssets.profile, 'Profile', false),
        _buildDrawerItem(AppAssets.nearby, 'Nearby', false),
        _buildDrawerItem(AppAssets.saveIcon, 'Bookmark', false),
        _buildDrawerItem(AppAssets.notify, 'Notification', false),
        _buildDrawerItem(AppAssets.messages, 'Message', false),
        Divider(color: Colors.white70, thickness: 1),
        _buildDrawerItem(AppAssets.setting, 'Setting', false),
        _buildDrawerItem(AppAssets.help, 'Help', false),
        _buildDrawerItem(AppAssets.logOut, 'Logout', false),
      ],
    );
  }

  Widget _buildDrawerItem(String imagePath, String title, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: ListTile(
          leading: SvgPicture.asset(
            imagePath,
            width: 24,
            height: 24,
            color:
                isSelected ? Colors.blue : Colors.white, // Tint the image color
          ),
          title: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.white,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          onTap: () {
            // Add your navigation logic here
          },
        ),
      ),
    );
  }
}
