part of '../fhir_dart.dart';

/// Consent Verified by patient or family
/// Whether a treatment instruction (e.g. artificial respiration yes or no) was verified with the patient, his/her family or another authorized person.
class ConsentVerification extends BackboneElement implements FhirResource {
  /// When consent verified
  /// Date verification was collected.
  final String? verificationDate;

  /// Has been verified
  /// Has the instruction been verified.
  final bool verified;

  /// Person who verified
  /// Who verified the instruction (Patient, Relative or other Authorized Person).
  final Reference? verifiedWith;
  ConsentVerification({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.verificationDate,
    required this.verified,
    this.verifiedWith,
  });

  @override
  factory ConsentVerification.fromJson(Map<String, dynamic> json) {
    return ConsentVerification(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      verificationDate: json['verificationDate'] as String?,
      verified: json['verified'] as bool,
      verifiedWith: json['verifiedWith'] != null
          ? Reference.fromJson(json['verifiedWith'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'verificationDate': verificationDate,
        'verified': verified,
        'verifiedWith': verifiedWith?.toJson(),
      };

  @override
  ConsentVerification copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? verificationDate,
    bool? verified,
    Reference? verifiedWith,
  }) {
    return ConsentVerification(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      verificationDate: verificationDate ?? this.verificationDate,
      verified: verified ?? this.verified,
      verifiedWith: verifiedWith ?? this.verifiedWith,
    );
  }
}
