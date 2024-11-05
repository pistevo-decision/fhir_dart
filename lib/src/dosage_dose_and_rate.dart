part of '../fhir_dart.dart';

/// Amount of medication administered
/// The amount of medication administered.
class DosageDoseAndRate extends Element implements FhirResource {
  /// Amount of medication per dose.
  /// Note that this specifies the quantity of the specified medication, not the quantity for each active ingredient(s). Each ingredient amount can be communicated in the Medication resource. For example, if one wants to communicate that a tablet was 375 mg, where the dose was one tablet, you can use the Medication resource to document that the tablet was comprised of 375 mg of drug XYZ. Alternatively if the dose was 375 mg, then you may only need to use the Medication resource to indicate this was a tablet. If the example were an IV such as dopamine and you wanted to communicate that 400mg of dopamine was mixed in 500 ml of some IV solution, then this would all be communicated in the Medication resource. If the administration is not intended to be instantaneous (rate is present or timing has a duration), this can be specified to convey the total amount to be administered over the period of time as indicated by the schedule e.g. 500 ml in dose, with timing used to convey that this should be done over 4 hours.
  final Quantity? doseQuantity;

  /// Amount of medication per dose.
  /// Note that this specifies the quantity of the specified medication, not the quantity for each active ingredient(s). Each ingredient amount can be communicated in the Medication resource. For example, if one wants to communicate that a tablet was 375 mg, where the dose was one tablet, you can use the Medication resource to document that the tablet was comprised of 375 mg of drug XYZ. Alternatively if the dose was 375 mg, then you may only need to use the Medication resource to indicate this was a tablet. If the example were an IV such as dopamine and you wanted to communicate that 400mg of dopamine was mixed in 500 ml of some IV solution, then this would all be communicated in the Medication resource. If the administration is not intended to be instantaneous (rate is present or timing has a duration), this can be specified to convey the total amount to be administered over the period of time as indicated by the schedule e.g. 500 ml in dose, with timing used to convey that this should be done over 4 hours.
  final Range? doseRange;

  /// Amount of medication per unit of time.
  /// It is possible to supply both a rate and a doseQuantity to provide full details about how the medication is to be administered and supplied. If the rate is intended to change over time, depending on local rules/regulations, each change should be captured as a new version of the MedicationRequest with an updated rate, or captured with a new MedicationRequest with the new rate.
  /// It is possible to specify a rate over time (for example, 100 ml/hour) using either the rateRatio and rateQuantity.  The rateQuantity approach requires systems to have the capability to parse UCUM grammer where ml/hour is included rather than a specific ratio where the time is specified as the denominator.  Where a rate such as 500ml over 2 hours is specified, the use of rateRatio may be more semantically correct than specifying using a rateQuantity of 250 mg/hour.
  final Quantity? rateQuantity;

  /// Amount of medication per unit of time.
  /// It is possible to supply both a rate and a doseQuantity to provide full details about how the medication is to be administered and supplied. If the rate is intended to change over time, depending on local rules/regulations, each change should be captured as a new version of the MedicationRequest with an updated rate, or captured with a new MedicationRequest with the new rate.
  /// It is possible to specify a rate over time (for example, 100 ml/hour) using either the rateRatio and rateQuantity.  The rateQuantity approach requires systems to have the capability to parse UCUM grammer where ml/hour is included rather than a specific ratio where the time is specified as the denominator.  Where a rate such as 500ml over 2 hours is specified, the use of rateRatio may be more semantically correct than specifying using a rateQuantity of 250 mg/hour.
  final Range? rateRange;

  /// Amount of medication per unit of time.
  /// It is possible to supply both a rate and a doseQuantity to provide full details about how the medication is to be administered and supplied. If the rate is intended to change over time, depending on local rules/regulations, each change should be captured as a new version of the MedicationRequest with an updated rate, or captured with a new MedicationRequest with the new rate.
  /// It is possible to specify a rate over time (for example, 100 ml/hour) using either the rateRatio and rateQuantity.  The rateQuantity approach requires systems to have the capability to parse UCUM grammer where ml/hour is included rather than a specific ratio where the time is specified as the denominator.  Where a rate such as 500ml over 2 hours is specified, the use of rateRatio may be more semantically correct than specifying using a rateQuantity of 250 mg/hour.
  final Ratio? rateRatio;

  /// The kind of dose or rate specified, for example, ordered or calculated.
  final CodeableConcept? type;
  DosageDoseAndRate({
    this.doseQuantity,
    this.doseRange,
    super.fhirExtension,
    super.id,
    this.rateQuantity,
    this.rateRange,
    this.rateRatio,
    this.type,
  });

  @override
  factory DosageDoseAndRate.fromJson(Map<String, dynamic> json) {
    return DosageDoseAndRate(
      doseQuantity: json['doseQuantity'] != null
          ? Quantity.fromJson(
              (json['doseQuantity'] as Map).cast<String, dynamic>())
          : null,
      doseRange: json['doseRange'] != null
          ? Range.fromJson((json['doseRange'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      rateQuantity: json['rateQuantity'] != null
          ? Quantity.fromJson(
              (json['rateQuantity'] as Map).cast<String, dynamic>())
          : null,
      rateRange: json['rateRange'] != null
          ? Range.fromJson((json['rateRange'] as Map).cast<String, dynamic>())
          : null,
      rateRatio: json['rateRatio'] != null
          ? Ratio.fromJson((json['rateRatio'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'doseQuantity': doseQuantity?.toJson(),
        'doseRange': doseRange?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'rateQuantity': rateQuantity?.toJson(),
        'rateRange': rateRange?.toJson(),
        'rateRatio': rateRatio?.toJson(),
        'type': type?.toJson(),
      };

  @override
  DosageDoseAndRate copyWith({
    Quantity? doseQuantity,
    Range? doseRange,
    List<Extension>? fhirExtension,
    String? id,
    Quantity? rateQuantity,
    Range? rateRange,
    Ratio? rateRatio,
    CodeableConcept? type,
  }) {
    return DosageDoseAndRate(
      doseQuantity: doseQuantity ?? this.doseQuantity,
      doseRange: doseRange ?? this.doseRange,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      rateQuantity: rateQuantity ?? this.rateQuantity,
      rateRange: rateRange ?? this.rateRange,
      rateRatio: rateRatio ?? this.rateRatio,
      type: type ?? this.type,
    );
  }
}
