enum MasteryType {
  beginner,
  intermediate,
  skilled,
  expert,
}

extension MasteryTypeExtension on MasteryType {
  static MasteryType fromLevel(double level) {
    if (level < 1.2) {
      return MasteryType.beginner;
    } else if (level < 2.1) {
      return MasteryType.intermediate;
    } else if (level < 3.0) {
      return MasteryType.skilled;
    } else {
      return MasteryType.expert;
    }
  }

  double get experienceLevel {
    switch (this) {
      case MasteryType.beginner:
        return 0;
      case MasteryType.intermediate:
        return 1.2;
      case MasteryType.skilled:
        return 2.1;
      case MasteryType.expert:
        return 3.0;
    }
  }

  String get api {
    switch (this) {
      case MasteryType.beginner:
        return 'beginner';
      case MasteryType.intermediate:
        return 'intermediate';
      case MasteryType.skilled:
        return 'skilled';
      case MasteryType.expert:
        return 'expert';
    }
  }

  String get name {
    switch (this) {
      case MasteryType.beginner:
        return 'Beginner';
      case MasteryType.intermediate:
        return 'Intermediate';
      case MasteryType.skilled:
        return 'Skilled';
      case MasteryType.expert:
        return 'Expert';
    }
  }
}

class JobType {
  final int id;

  final String name;

  final String icon;

  MasteryType mastery;

  JobType({
    required this.id,
    required this.name,
    required this.icon,
    this.mastery = MasteryType.intermediate,
  });

  factory JobType.fromJson(Map<String, dynamic> json) => JobType(
        id: json['id'],
        name: json['name'],
        icon: json['icon'],
        mastery: json['mastery'] == null
            ? MasteryType.intermediate
            : MasteryType.values.firstWhere(
                (element) => element.api == json['mastery'],
              ),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'mastery': mastery.api,
      };
}

class RegistrationLocation {
  final int id;

  final String name;

  RegistrationLocation({
    required this.id,
    required this.name,
  });

  factory RegistrationLocation.fromJson(Map<String, dynamic> json) =>
      RegistrationLocation(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
      };
}

class WorkType {
  final int id;

  final String name;

  final String icon;

  WorkType({
    required this.id,
    required this.name,
    required this.icon,
  });

  factory WorkType.fromJson(Map<String, dynamic> json) => WorkType(
        id: json['id'],
        name: json['name'],
        icon: json['icon'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
      };
}

class WorkerRegistrationOnboarding {
  List<JobType> jobTypes;

  List<RegistrationLocation> locations;

  List<WorkType> workTypes;

  WorkerRegistrationOnboarding({
    this.jobTypes = const [],
    this.locations = const [],
    this.workTypes = const [],
  });

  factory WorkerRegistrationOnboarding.fromJson(Map<String, dynamic> json) =>
      WorkerRegistrationOnboarding(
        jobTypes: (json['job_types'] as List)
            .map((e) => JobType.fromJson(e))
            .toList(),
        locations: (json['locations'] as List)
            .map((e) => RegistrationLocation.fromJson(e))
            .toList(),
        workTypes: (json['work_types'] as List)
            .map((e) => WorkType.fromJson(e))
            .toList(),
      );
}
