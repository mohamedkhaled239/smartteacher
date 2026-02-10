// import 'package:flutter/material.dart';

// class SocialAuthButtons extends StatelessWidget {
//   const SocialAuthButtons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           child: _SocialButton(
//             icon: Icons.apple,
//             label: 'Apple',
//             onTap: () => _handleSocialAuth('Apple'),
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: _SocialButton(
//             icon: Icons.facebook,
//             label: 'Facebook',
//             backgroundColor: const Color(0xFF1877F2),
//             iconColor: Colors.white,
//             textColor: Colors.white,
//             onTap: () => _handleSocialAuth('Facebook'),
//           ),
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: _SocialButton(
//             icon: Icons.g_mobiledata,
//             label: 'Google',
//             onTap: () => _handleSocialAuth('Google'),
//           ),
//         ),
//       ],
//     );
//   }

//   void _handleSocialAuth(String provider) {
//     // TODO: Implement social auth logic with Bloc
//     debugPrint('Social auth with: $provider');
//   }
// }

// class _SocialButton extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final Color? backgroundColor;
//   final Color? iconColor;
//   final Color? textColor;
//   final VoidCallback onTap;

//   const _SocialButton({
//     required this.icon,
//     required this.label,
//     required this.onTap,
//     this.backgroundColor,
//     this.iconColor,
//     this.textColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(12),
//       child: Container(
//         height: 56,
//         decoration: BoxDecoration(
//           color: backgroundColor ?? const Color(0xFFF5F7FA),
//           borderRadius: BorderRadius.circular(12),
//           border: backgroundColor == null
//               ? Border.all(color: Colors.grey[300]!, width: 1)
//               : null,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 24, color: iconColor ?? Colors.black87),
//             const SizedBox(height: 4),
//             Text(
//               label,
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.w600,
//                 color: textColor ?? Colors.black87,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
