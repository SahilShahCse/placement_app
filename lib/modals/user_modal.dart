class UserModal {
  final String userId;
  final String name;
  final String email;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String profilePictureUrl;
  final bool isAdmin;
  final bool isSuperAdmin;
  final bool isStudent;
  final bool isRecruiter;

  UserModal({
    required this.userId,
    required this.name,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
    required this.profilePictureUrl,
    required this.isAdmin,
    required this.isSuperAdmin,
    required this.isStudent,
    required this.isRecruiter,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'profilePictureUrl': profilePictureUrl,
      'isAdmin': isAdmin,
      'isSuperAdmin': isSuperAdmin,
      'isStudent': isStudent,
      'isRecruiter': isRecruiter,
    };
  }

  static UserModal fromMap(Map<String, dynamic> map) {
    return UserModal(
      userId: map['userId'],
      name: map['name'],
      email: map['email'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
      profilePictureUrl: map['profilePictureUrl'],
      isAdmin: map['isAdmin'],
      isSuperAdmin: map['isSuperAdmin'],
      isStudent: map['isStudent'],
      isRecruiter: map['isRecruiter'],
    );
  }
}
