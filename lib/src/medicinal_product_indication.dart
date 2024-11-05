part of '../fhir_dart.dart';

/// Indication for the Medicinal Product.
class MedicinalProductIndication extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'MedicinalProductIndication';

  /// Comorbidity (concurrent condition) or co-infection as part of the indication.
  final List<CodeableConcept>? comorbidity;

  /// The status of the disease or symptom for which the indication applies.
  final CodeableConcept? diseaseStatus;

  /// The disease, symptom or procedure that is the indication for treatment.
  final CodeableConcept? diseaseSymptomProcedure;

  /// Timing or duration information as part of the indication.
  final Quantity? duration;

  /// The intended effect, aim or strategy to be achieved by the indication.
  final CodeableConcept? intendedEffect;

  /// Information about the use of the medicinal product in relation to other therapies described as part of the indication.
  final List<MedicinalProductIndicationOtherTherapy>? otherTherapy;

  /// The population group to which this applies.
  final List<Population>? population;

  /// The medication for which this is an indication.
  final List<Reference>? subject;

  /// Describe the undesirable effects of the medicinal product.
  final List<Reference>? undesirableEffect;
  MedicinalProductIndication({
    this.comorbidity,
    super.contained,
    this.diseaseStatus,
    this.diseaseSymptomProcedure,
    this.duration,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    this.intendedEffect,
    super.language,
    super.meta,
    super.modifierExtension,
    this.otherTherapy,
    this.population,
    this.subject,
    super.text,
    this.undesirableEffect,
  });

  @override
  factory MedicinalProductIndication.fromJson(Map<String, dynamic> json) {
    return MedicinalProductIndication(
      comorbidity: (json['comorbidity'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      diseaseStatus: json['diseaseStatus'] != null
          ? CodeableConcept.fromJson(
              (json['diseaseStatus'] as Map).cast<String, dynamic>())
          : null,
      diseaseSymptomProcedure: json['diseaseSymptomProcedure'] != null
          ? CodeableConcept.fromJson(
              (json['diseaseSymptomProcedure'] as Map).cast<String, dynamic>())
          : null,
      duration: json['duration'] != null
          ? Quantity.fromJson((json['duration'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      intendedEffect: json['intendedEffect'] != null
          ? CodeableConcept.fromJson(
              (json['intendedEffect'] as Map).cast<String, dynamic>())
          : null,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      otherTherapy: (json['otherTherapy'] as List<dynamic>?)
          ?.map((e) => MedicinalProductIndicationOtherTherapy.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      population: (json['population'] as List<dynamic>?)
          ?.map((e) => Population.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      subject: (json['subject'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      undesirableEffect: (json['undesirableEffect'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'comorbidity': comorbidity?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'diseaseStatus': diseaseStatus?.toJson(),
        'diseaseSymptomProcedure': diseaseSymptomProcedure?.toJson(),
        'duration': duration?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'intendedEffect': intendedEffect?.toJson(),
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'otherTherapy': otherTherapy?.map((e) => e.toJson()).toList(),
        'population': population?.map((e) => e.toJson()).toList(),
        'subject': subject?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'undesirableEffect': undesirableEffect?.map((e) => e.toJson()).toList(),
      };

  @override
  MedicinalProductIndication copyWith({
    List<CodeableConcept>? comorbidity,
    List<Resource>? contained,
    CodeableConcept? diseaseStatus,
    CodeableConcept? diseaseSymptomProcedure,
    Quantity? duration,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    CodeableConcept? intendedEffect,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<MedicinalProductIndicationOtherTherapy>? otherTherapy,
    List<Population>? population,
    List<Reference>? subject,
    Narrative? text,
    List<Reference>? undesirableEffect,
  }) {
    return MedicinalProductIndication(
      comorbidity: comorbidity ?? this.comorbidity,
      contained: contained ?? this.contained,
      diseaseStatus: diseaseStatus ?? this.diseaseStatus,
      diseaseSymptomProcedure:
          diseaseSymptomProcedure ?? this.diseaseSymptomProcedure,
      duration: duration ?? this.duration,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      intendedEffect: intendedEffect ?? this.intendedEffect,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      otherTherapy: otherTherapy ?? this.otherTherapy,
      population: population ?? this.population,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      undesirableEffect: undesirableEffect ?? this.undesirableEffect,
    );
  }
}
