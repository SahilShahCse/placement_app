import 'package:placement_app/modals/user_modal.dart';

class SuperAdminModal extends UserModal {
  final bool canAccessAllData;

  SuperAdminModal({
    required super.userId,
    required super.name,
    required super.email,
    required super.createdAt,
    required super.updatedAt,
    required super.profilePictureUrl,
    required super.isAdmin,
    required super.isSuperAdmin,
    required super.isStudent,
    required super.isRecruiter,
    required this.canAccessAllData,
  });

  @override
  Map<String, dynamic> toMap() {
    var map = super.toMap();
    map.addAll({
      'canAccessAllData': canAccessAllData,
    });
    return map;
  }

  static SuperAdminModal fromMap(Map<String, dynamic> map) {
    return SuperAdminModal(
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
      canAccessAllData: map['canAccessAllData'],
    );
  }
}
