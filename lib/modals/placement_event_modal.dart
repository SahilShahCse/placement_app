class PlacementEvent {
  final String eventId;
  final String companyName;
  final String industry;
  final List<String> rolesOffered;
  final String requirements;
  final DateTime eventDate;
  final DateTime applicationDeadline;
  final String createdBy; // AdminId or RecruiterId who created the event
  final DateTime createdAt;
  final String updatedBy; // AdminId or RecruiterId who last updated the event
  final DateTime updatedAt;
  final String location;
  final String description;
  final String contactPerson;
  final bool isVisible; // Visibility to students
  final List<String> registeredStudentIds; // IDs of students who have registered/applied
  final List<String> selectedStudentIds; // IDs of students who have been selected

  PlacementEvent({
    required this.eventId,
    required this.companyName,
    required this.industry,
    required this.rolesOffered,
    required this.requirements,
    required this.eventDate,
    required this.applicationDeadline,
    required this.createdBy,
    required this.createdAt,
    required this.updatedBy,
    required this.updatedAt,
    required this.location,
    required this.description,
    required this.contactPerson,
    required this.isVisible,
    required this.registeredStudentIds,
    required this.selectedStudentIds,
  });

  Map<String, dynamic> toMap() {
    return {
      'eventId': eventId,
      'companyName': companyName,
      'industry': industry,
      'rolesOffered': rolesOffered,
      'requirements': requirements,
      'eventDate': eventDate.toIso8601String(),
      'applicationDeadline': applicationDeadline.toIso8601String(),
      'createdBy': createdBy,
      'createdAt': createdAt.toIso8601String(),
      'updatedBy': updatedBy,
      'updatedAt': updatedAt.toIso8601String(),
      'location': location,
      'description': description,
      'contactPerson': contactPerson,
      'isVisible': isVisible,
      'registeredStudentIds': registeredStudentIds,
      'selectedStudentIds': selectedStudentIds,
    };
  }

  static PlacementEvent fromMap(Map<String, dynamic> map) {
    return PlacementEvent(
      eventId: map['eventId'],
      companyName: map['companyName'],
      industry: map['industry'],
      rolesOffered: List<String>.from(map['rolesOffered']),
      requirements: map['requirements'],
      eventDate: DateTime.parse(map['eventDate']),
      applicationDeadline: DateTime.parse(map['applicationDeadline']),
      createdBy: map['createdBy'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedBy: map['updatedBy'],
      updatedAt: DateTime.parse(map['updatedAt']),
      location: map['location'],
      description: map['description'],
      contactPerson: map['contactPerson'],
      isVisible: map['isVisible'],
      registeredStudentIds: List<String>.from(map['registeredStudentIds']),
      selectedStudentIds: List<String>.from(map['selectedStudentIds']),
    );
  }
}
