class Application {
  final String applicationId;
  final String eventId; // Reference to the Placement Event
  final String userId; // Reference to the Student
  final DateTime submissionDate;
  final String status; // e.g., "Submitted", "Under Review", "Accepted", "Rejected"
  final String resumeLink; // Link to the student's resume, if applicable
  final List<String> attachments; // Additional documents or attachments
  final String feedback; // Feedback from recruiters
  final DateTime interviewDate; // Scheduled interview date, if applicable
  final String interviewLocation; // Location of the interview, if applicable
  final DateTime createdAt;
  final DateTime updatedAt;

  Application({
    required this.applicationId,
    required this.eventId,
    required this.userId,
    required this.submissionDate,
    required this.status,
    required this.resumeLink,
    required this.attachments,
    required this.feedback,
    required this.interviewDate,
    required this.interviewLocation,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'applicationId': applicationId,
      'eventId': eventId,
      'userId': userId,
      'submissionDate': submissionDate.toIso8601String(),
      'status': status,
      'resumeLink': resumeLink,
      'attachments': attachments,
      'feedback': feedback,
      'interviewDate': interviewDate.toIso8601String(),
      'interviewLocation': interviewLocation,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static Application fromMap(Map<String, dynamic> map) {
    return Application(
      applicationId: map['applicationId'],
      eventId: map['eventId'],
      userId: map['userId'],
      submissionDate: DateTime.parse(map['submissionDate']),
      status: map['status'],
      resumeLink: map['resumeLink'],
      attachments: List<String>.from(map['attachments']),
      feedback: map['feedback'],
      interviewDate: DateTime.parse(map['interviewDate']),
      interviewLocation: map['interviewLocation'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }
}
