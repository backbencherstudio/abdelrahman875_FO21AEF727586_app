import '../../../core/constants/icons.dart';

class SettingItemModel {
  final String title;
  final String iconPath;
  final bool hasSwitch;

  SettingItemModel({required this.title, required this.iconPath, this.hasSwitch = false});
}

final List<SettingItemModel> itemsSetting = [
  SettingItemModel(title: 'Notification', iconPath: AppIcons.notificationPng, hasSwitch: true),
  SettingItemModel(title: 'Mes documents', iconPath: AppIcons.paperPng),
  SettingItemModel(title: 'Mes factures', iconPath: AppIcons.testResultsPng),
  SettingItemModel(title: 'Statistiques', iconPath: AppIcons.increasePng),
  SettingItemModel(title: 'Politique de confidentialité', iconPath: AppIcons.padlockPng),
  SettingItemModel(title: 'Termes et Conditions', iconPath: AppIcons.pastePng),
  SettingItemModel(title: 'Cookies', iconPath: AppIcons.termsandConditionsPng),
  SettingItemModel(title: 'Assistance', iconPath: AppIcons.gmailLogoPng),
  SettingItemModel(title: 'Avis', iconPath: AppIcons.starHalfEmptyPng),
  SettingItemModel(title: 'Logout', iconPath: AppIcons.logoutPng),
];