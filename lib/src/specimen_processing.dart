part of '../fhir_dart.dart';

/// Processing and processing step details
/// Details concerning processing and processing steps for the specimen.
class SpecimenProcessing extends BackboneElement implements FhirResource {
  /// Material used in the processing step.
  final List<Reference>? additive;

  /// Textual description of procedure.
  final String? description;

  /// Indicates the treatment step  applied to the specimen
  /// A coded value specifying the procedure used to process the specimen.
  final CodeableConcept? procedure;

  /// Date and time of specimen processing
  /// A record of the time or period when the specimen processing occurred.  For example the time of sample fixation or the period of time the sample was in formalin.
  final String? timeDateTime;

  /// Date and time of specimen processing
  /// A record of the time or period when the specimen processing occurred.  For example the time of sample fixation or the period of time the sample was in formalin.
  final Period? timePeriod;
  SpecimenProcessing({
    this.additive,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.procedure,
    this.timeDateTime,
    this.timePeriod,
  });

  @override
  factory SpecimenProcessing.fromJson(Map<String, dynamic> json) {
    return SpecimenProcessing(
      additive: (json['additive'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      procedure: json['procedure'] != null
          ? CodeableConcept.fromJson(
              (json['procedure'] as Map).cast<String, dynamic>())
          : null,
      timeDateTime: json['timeDateTime'] as String?,
      timePeriod: json['timePeriod'] != null
          ? Period.fromJson((json['timePeriod'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'additive': additive?.map((e) => e.toJson()).toList(),
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'procedure': procedure?.toJson(),
        'timeDateTime': timeDateTime,
        'timePeriod': timePeriod?.toJson(),
      };

  @override
  SpecimenProcessing copyWith({
    List<Reference>? additive,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? procedure,
    String? timeDateTime,
    Period? timePeriod,
  }) {
    return SpecimenProcessing(
      additive: additive ?? this.additive,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      procedure: procedure ?? this.procedure,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timePeriod: timePeriod ?? this.timePeriod,
    );
  }
}
