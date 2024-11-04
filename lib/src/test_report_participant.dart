part of '../fhir_dart.dart';

/// A participant in the test execution, either the execution engine, a client, or a server.
class TestReportParticipant extends BackboneElement implements FhirResource {
  /// The display name of the participant.
  final String? display;

  /// The type of participant.
  final String type; // Possible values: 'test-engine', 'client', 'server'
  /// The uri of the participant. An absolute URL is preferred.
  final String uri;
  TestReportParticipant({
    this.display,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.type,
    required this.uri,
  });

  @override
  factory TestReportParticipant.fromJson(Map<String, dynamic> json) {
    return TestReportParticipant(
      display: json['display'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      uri: json['uri'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'display': display,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type,
        'uri': uri,
      };

  @override
  TestReportParticipant copyWith({
    String? display,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? type,
    String? uri,
  }) {
    return TestReportParticipant(
      display: display ?? this.display,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      uri: uri ?? this.uri,
    );
  }
}
