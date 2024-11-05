part of '../fhir_dart.dart';

/// A language which may be used to communicate with the patient about his or her health.
/// If no language is specified, this *implies* that the default local language is spoken.  If you need to convey proficiency for multiple modes, then you need multiple Patient.Communication associations.   For animals, language is not a relevant field, and should be absent from the instance. If the Patient does not speak the default local language, then the Interpreter Required Standard can be used to explicitly declare that an interpreter is required.
class PatientCommunication extends BackboneElement implements FhirResource {
  /// The language which can be used to communicate with the patient about his or her health
  /// The ISO-639-1 alpha 2 code in lower case for the language, optionally followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in upper case; e.g. "en" for English, or "en-US" for American English versus "en-EN" for England English.
  /// The structure aa-BB with this exact casing is one the most widely used notations for locale. However not all systems actually code this but instead have it as free text. Hence CodeableConcept instead of code as the data type.
  final CodeableConcept language;

  /// Language preference indicator
  /// Indicates whether or not the patient prefers this language (over other languages he masters up a certain level).
  /// This language is specifically identified for communicating healthcare information.
  final bool? preferred;
  PatientCommunication({
    super.fhirExtension,
    super.id,
    required this.language,
    super.modifierExtension,
    this.preferred,
  });

  @override
  factory PatientCommunication.fromJson(Map<String, dynamic> json) {
    return PatientCommunication(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      language: CodeableConcept.fromJson(
          (json['language'] as Map).cast<String, dynamic>()),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      preferred: json['preferred'] as bool?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'language': language.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'preferred': preferred,
      };

  @override
  PatientCommunication copyWith({
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? language,
    List<Extension>? modifierExtension,
    bool? preferred,
  }) {
    return PatientCommunication(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      language: language ?? this.language,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      preferred: preferred ?? this.preferred,
    );
  }
}
