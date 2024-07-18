import 'package:placement_app/modals/user_modal.dart';

class RecruiterModal extends UserModal {
  final List<String> managedEventsIds; // IDs of events the recruiter is managing

  RecruiterModal({
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
    required this.managedEventsIds,
  });

  @override
  Map<String, dynamic> toMap() {
    var map = super.toMap();
    map.addAll({
      'managedEventsIds': managedEventsIds,
    });
    return map;
  }

  static RecruiterModal fromMap(Map<String, dynamic> map) {
    return RecruiterModal(
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
      managedEventsIds: List<String>.from(map['managedEventsIds']),
    );
  }
}
