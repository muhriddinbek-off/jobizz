class UserProfile {
  final String name;
  final String accountName;
  final String avatar;
  final List<dynamic> chat;
  UserProfile({
    required this.accountName,
    required this.avatar,
    required this.chat,
    required this.name,
  });
}
