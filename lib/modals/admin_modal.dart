import 'package:placement_app/modals/user_modal.dart';

class AdminModal extends UserModal {
  final bool canManageUsers;
  final bool canEditEvents;
  final bool canViewReports;
  final bool canManageSystemSettings;

  AdminModal({
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
    required this.canManageUsers,
    required this.canEditEvents,
    required this.canViewReports,
    required this.canManageSystemSettings,
  });

  @override
  Map<String, dynamic> toMap() {
    var map = super.toMap();
    map.addAll({
      'canManageUsers': canManageUsers,
      'canEditEvents': canEditEvents,
      'canViewReports': canViewReports,
      'canManageSystemSettings': canManageSystemSettings,
    });
    return map;
  }

  static AdminModal fromMap(Map<String, dynamic> map) {
    return AdminModal(
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
      canManageUsers: map['canManageUsers'],
      canEditEvents: map['canEditEvents'],
      canViewReports: map['canViewReports'],
      canManageSystemSettings: map['canManageSystemSettings'],
    );
  }
}
