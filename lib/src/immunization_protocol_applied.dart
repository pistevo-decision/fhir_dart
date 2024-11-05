part of '../fhir_dart.dart';

/// Protocol followed by the provider
/// The protocol (set of recommendations) being followed by the provider who administered the dose.
class ImmunizationProtocolApplied extends BackboneElement
    implements FhirResource {
  /// Who is responsible for publishing the recommendations
  /// Indicates the authority who published the protocol (e.g. ACIP) that is being followed.
  final Reference? authority;

  /// Dose number within series
  /// Nominal position in a series.
  /// The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose).
  final int? doseNumberPositiveInt;

  /// Dose number within series
  /// Nominal position in a series.
  /// The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose).
  final String? doseNumberString;

  /// Name of vaccine series
  /// One possible path to achieve presumed immunity against a disease - within the context of an authority.
  final String? series;

  /// Recommended number of doses for immunity
  /// The recommended number of doses to achieve immunity.
  /// The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose).
  final int? seriesDosesPositiveInt;

  /// Recommended number of doses for immunity
  /// The recommended number of doses to achieve immunity.
  /// The use of an integer is preferred if known. A string should only be used in cases where an integer is not available (such as when documenting a recurring booster dose).
  final String? seriesDosesString;

  /// Vaccine preventatable disease being targetted
  /// The vaccine preventable disease the dose is being administered against.
  final List<CodeableConcept>? targetDisease;
  ImmunizationProtocolApplied({
    this.authority,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.series,
    this.seriesDosesPositiveInt,
    this.seriesDosesString,
    this.targetDisease,
  });

  @override
  factory ImmunizationProtocolApplied.fromJson(Map<String, dynamic> json) {
    return ImmunizationProtocolApplied(
      authority: json['authority'] != null
          ? Reference.fromJson(
              (json['authority'] as Map).cast<String, dynamic>())
          : null,
      doseNumberPositiveInt: json['doseNumberPositiveInt'] as int?,
      doseNumberString: json['doseNumberString'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      series: json['series'] as String?,
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] as int?,
      seriesDosesString: json['seriesDosesString'] as String?,
      targetDisease: (json['targetDisease'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'authority': authority?.toJson(),
        'doseNumberPositiveInt': doseNumberPositiveInt,
        'doseNumberString': doseNumberString,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'series': series,
        'seriesDosesPositiveInt': seriesDosesPositiveInt,
        'seriesDosesString': seriesDosesString,
        'targetDisease': targetDisease?.map((e) => e.toJson()).toList(),
      };

  @override
  ImmunizationProtocolApplied copyWith({
    Reference? authority,
    int? doseNumberPositiveInt,
    String? doseNumberString,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? series,
    int? seriesDosesPositiveInt,
    String? seriesDosesString,
    List<CodeableConcept>? targetDisease,
  }) {
    return ImmunizationProtocolApplied(
      authority: authority ?? this.authority,
      doseNumberPositiveInt:
          doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      series: series ?? this.series,
      seriesDosesPositiveInt:
          seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      targetDisease: targetDisease ?? this.targetDisease,
    );
  }
}
