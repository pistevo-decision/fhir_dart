part of '../fhir_dart.dart';

/// The clinical particulars - indications, contraindications etc. of a medicinal product, including for regulatory purposes.
class MedicinalProductContraindication extends DomainResource
    implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'MedicinalProductContraindication';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// A comorbidity (concurrent condition) or coinfection.
  final List<CodeableConcept>? comorbidity;

  /// The disease, symptom or procedure for the contraindication.
  final CodeableConcept? disease;

  /// The status of the disease or symptom for the contraindication.
  final CodeableConcept? diseaseStatus;

  /// Information about the use of the medicinal product in relation to other therapies described as part of the indication.
  final List<MedicinalProductContraindicationOtherTherapy>? otherTherapy;

  /// The population group to which this applies.
  final List<Population>? population;

  /// The medication for which this is an indication.
  final List<Reference>? subject;

  /// Information about the use of the medicinal product in relation to other therapies as part of the indication.
  final List<Reference>? therapeuticIndication;
  MedicinalProductContraindication({
    this.comorbidity,
    super.contained,
    this.disease,
    this.diseaseStatus,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.otherTherapy,
    this.population,
    this.subject,
    super.text,
    this.therapeuticIndication,
  });

  @override
  factory MedicinalProductContraindication.fromJson(Map<String, dynamic> json) {
    return MedicinalProductContraindication(
      comorbidity: (json['comorbidity'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      disease: json['disease'] != null
          ? CodeableConcept.fromJson(
              (json['disease'] as Map).cast<String, dynamic>())
          : null,
      diseaseStatus: json['diseaseStatus'] != null
          ? CodeableConcept.fromJson(
              (json['diseaseStatus'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      otherTherapy: (json['otherTherapy'] as List<dynamic>?)
          ?.map((e) => MedicinalProductContraindicationOtherTherapy.fromJson(
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
      therapeuticIndication: (json['therapeuticIndication'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'comorbidity': comorbidity?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'disease': disease?.toJson(),
        'diseaseStatus': diseaseStatus?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'otherTherapy': otherTherapy?.map((e) => e.toJson()).toList(),
        'population': population?.map((e) => e.toJson()).toList(),
        'subject': subject?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'therapeuticIndication':
            therapeuticIndication?.map((e) => e.toJson()).toList(),
      };

  @override
  MedicinalProductContraindication copyWith({
    List<CodeableConcept>? comorbidity,
    List<Resource>? contained,
    CodeableConcept? disease,
    CodeableConcept? diseaseStatus,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<MedicinalProductContraindicationOtherTherapy>? otherTherapy,
    List<Population>? population,
    List<Reference>? subject,
    Narrative? text,
    List<Reference>? therapeuticIndication,
  }) {
    return MedicinalProductContraindication(
      comorbidity: comorbidity ?? this.comorbidity,
      contained: contained ?? this.contained,
      disease: disease ?? this.disease,
      diseaseStatus: diseaseStatus ?? this.diseaseStatus,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      otherTherapy: otherTherapy ?? this.otherTherapy,
      population: population ?? this.population,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      therapeuticIndication:
          therapeuticIndication ?? this.therapeuticIndication,
    );
  }
}
