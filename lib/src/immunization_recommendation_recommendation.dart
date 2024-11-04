part of '../fhir_dart.dart';

 /// Vaccine administration recommendations.
class ImmunizationRecommendationRecommendation extends BackboneElement implements FhirResource {
   /// Vaccine which is contraindicated to fulfill the recommendation
   /// Vaccine(s) which should not be used to fulfill the recommendation.
  final List<CodeableConcept>? contraindicatedVaccineCode;
   /// Dates governing proposed immunization
   /// Vaccine date recommendations.  For example, earliest date to administer, latest date to administer, etc.
  final List<ImmunizationRecommendationRecommendationDateCriterion>? dateCriterion;
   /// Protocol details
   /// Contains the description about the protocol under which the vaccine was administered.
  final String? description;
   /// Recommended dose number within series
   /// Nominal position of the recommended dose in a series (e.g. dose 2 is the next recommended dose).
   /// The use of an integer is prefered if known. A string should only be used in cases where an interger is not available (such as when documenting a recurring booster dose).
  final int? doseNumberPositiveInt;
   /// Recommended dose number within series
   /// Nominal position of the recommended dose in a series (e.g. dose 2 is the next recommended dose).
   /// The use of an integer is prefered if known. A string should only be used in cases where an interger is not available (such as when documenting a recurring booster dose).
  final String? doseNumberString;
   /// Vaccine administration status reason
   /// The reason for the assigned forecast status.
  final List<CodeableConcept>? forecastReason;
   /// Vaccine recommendation status
   /// Indicates the patient status with respect to the path to immunity for the target disease.
  final CodeableConcept forecastStatus;
   /// Name of vaccination series
   /// One possible path to achieve presumed immunity against a disease - within the context of an authority.
  final String? series;
   /// Recommended number of doses for immunity
   /// The recommended number of doses to achieve immunity.
   /// The use of an integer is prefered if known. A string should only be used in cases where an interger is not available (such as when documenting a recurring booster dose).
  final int? seriesDosesPositiveInt;
   /// Recommended number of doses for immunity
   /// The recommended number of doses to achieve immunity.
   /// The use of an integer is prefered if known. A string should only be used in cases where an interger is not available (such as when documenting a recurring booster dose).
  final String? seriesDosesString;
   /// Past immunizations supporting recommendation
   /// Immunization event history and/or evaluation that supports the status and recommendation.
  final List<Reference>? supportingImmunization;
   /// Patient observations supporting recommendation
   /// Patient Information that supports the status and recommendation.  This includes patient observations, adverse reactions and allergy/intolerance information.
  final List<Reference>? supportingPatientInformation;
   /// Disease to be immunized against
   /// The targeted disease for the recommendation.
  final CodeableConcept? targetDisease;
   /// Vaccine  or vaccine group recommendation applies to
   /// Vaccine(s) or vaccine group that pertain to the recommendation.
  final List<CodeableConcept>? vaccineCode;
  ImmunizationRecommendationRecommendation({
    this.contraindicatedVaccineCode,
    this.dateCriterion,
    this.description,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    super.fhirExtension,
    this.forecastReason,
    required this.forecastStatus,
    super.id,
    super.modifierExtension,
    this.series,
    this.seriesDosesPositiveInt,
    this.seriesDosesString,
    this.supportingImmunization,
    this.supportingPatientInformation,
    this.targetDisease,
    this.vaccineCode,
  });
  
  @override
  factory ImmunizationRecommendationRecommendation.fromJson(Map<String, dynamic> json) {
    return ImmunizationRecommendationRecommendation(
      contraindicatedVaccineCode: (json['contraindicatedVaccineCode'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      dateCriterion: (json['dateCriterion'] as List<dynamic>?)?.map((e) => ImmunizationRecommendationRecommendationDateCriterion.fromJson(e as Map<String, dynamic>)).toList(),
      description: json['description'] as String?,
      doseNumberPositiveInt: json['doseNumberPositiveInt'] as int?,
      doseNumberString: json['doseNumberString'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      forecastReason: (json['forecastReason'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      forecastStatus: CodeableConcept.fromJson(json['forecastStatus'] as Map<String, dynamic>),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      series: json['series'] as String?,
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] as int?,
      seriesDosesString: json['seriesDosesString'] as String?,
      supportingImmunization: (json['supportingImmunization'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      supportingPatientInformation: (json['supportingPatientInformation'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      targetDisease: json['targetDisease'] != null ? CodeableConcept.fromJson(json['targetDisease'] as Map<String, dynamic>) : null,
      vaccineCode: (json['vaccineCode'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contraindicatedVaccineCode': contraindicatedVaccineCode?.map((e) => e.toJson()).toList(),
      'dateCriterion': dateCriterion?.map((e) => e.toJson()).toList(),
      'description': description,
      'doseNumberPositiveInt': doseNumberPositiveInt,
      'doseNumberString': doseNumberString,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'forecastReason': forecastReason?.map((e) => e.toJson()).toList(),
      'forecastStatus': forecastStatus.toJson(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'series': series,
      'seriesDosesPositiveInt': seriesDosesPositiveInt,
      'seriesDosesString': seriesDosesString,
      'supportingImmunization': supportingImmunization?.map((e) => e.toJson()).toList(),
      'supportingPatientInformation': supportingPatientInformation?.map((e) => e.toJson()).toList(),
      'targetDisease': targetDisease?.toJson(),
      'vaccineCode': vaccineCode?.map((e) => e.toJson()).toList(),
    };
  
  @override
  ImmunizationRecommendationRecommendation copyWith({
    List<CodeableConcept>? contraindicatedVaccineCode,
    List<ImmunizationRecommendationRecommendationDateCriterion>? dateCriterion,
    String? description,
    int? doseNumberPositiveInt,
    String? doseNumberString,
    List<Extension>? fhirExtension,
    List<CodeableConcept>? forecastReason,
    CodeableConcept? forecastStatus,
    String? id,
    List<Extension>? modifierExtension,
    String? series,
    int? seriesDosesPositiveInt,
    String? seriesDosesString,
    List<Reference>? supportingImmunization,
    List<Reference>? supportingPatientInformation,
    CodeableConcept? targetDisease,
    List<CodeableConcept>? vaccineCode,
  }) {
    return ImmunizationRecommendationRecommendation(
      contraindicatedVaccineCode: contraindicatedVaccineCode ?? this.contraindicatedVaccineCode,
      dateCriterion: dateCriterion ?? this.dateCriterion,
      description: description ?? this.description,
      doseNumberPositiveInt: doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      forecastReason: forecastReason ?? this.forecastReason,
      forecastStatus: forecastStatus ?? this.forecastStatus,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      series: series ?? this.series,
      seriesDosesPositiveInt: seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      supportingImmunization: supportingImmunization ?? this.supportingImmunization,
      supportingPatientInformation: supportingPatientInformation ?? this.supportingPatientInformation,
      targetDisease: targetDisease ?? this.targetDisease,
      vaccineCode: vaccineCode ?? this.vaccineCode,
    );
  }
}
