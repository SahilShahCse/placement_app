import 'package:placement_app/modals/user_modal.dart';

class StudentModal extends UserModal {
  final List<Map<String, dynamic>> academicRecords;
  final List<String> languagesSpoken;
  final List<String> appliedToPlacementsIds;
  final List<String> selectedInPlacementsIds;

  StudentModal({
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
    required this.academicRecords,
    required this.languagesSpoken,
    required this.appliedToPlacementsIds,
    required this.selectedInPlacementsIds,
  });

  @override
  Map<String, dynamic> toMap() {
    var map = super.toMap();
    map.addAll({
      'academicRecords': academicRecords,
      'languagesSpoken': languagesSpoken,
      'appliedToPlacementsIds': appliedToPlacementsIds,
      'selectedInPlacementsIds': selectedInPlacementsIds,
    });
    return map;
  }

  static StudentModal fromMap(Map<String, dynamic> map) {
    return StudentModal(
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
      academicRecords: List<Map<String, dynamic>>.from(map['academicRecords']),
      languagesSpoken: List<String>.from(map['languagesSpoken']),
      appliedToPlacementsIds: List<String>.from(map['appliedToPlacementsIds']),
      selectedInPlacementsIds: List<String>.from(map['selectedInPlacementsIds']),
    );
  }
}
