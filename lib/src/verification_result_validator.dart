part of '../fhir_dart.dart';

/// Information about the entity validating information.
class VerificationResultValidator extends BackboneElement
    implements FhirResource {
  /// Validator signature
  /// Signed assertion by the validator that they have validated the information.
  final Signature? attestationSignature;

  /// A digital identity certificate associated with the validator.
  final String? identityCertificate;

  /// Reference to the organization validating information.
  final Reference organization;
  VerificationResultValidator({
    this.attestationSignature,
    super.fhirExtension,
    super.id,
    this.identityCertificate,
    super.modifierExtension,
    required this.organization,
  });

  @override
  factory VerificationResultValidator.fromJson(Map<String, dynamic> json) {
    return VerificationResultValidator(
      attestationSignature: json['attestationSignature'] != null
          ? Signature.fromJson(
              json['attestationSignature'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identityCertificate: json['identityCertificate'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      organization:
          Reference.fromJson(json['organization'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'attestationSignature': attestationSignature?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identityCertificate': identityCertificate,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'organization': organization.toJson(),
      };

  @override
  VerificationResultValidator copyWith({
    Signature? attestationSignature,
    List<Extension>? fhirExtension,
    String? id,
    String? identityCertificate,
    List<Extension>? modifierExtension,
    Reference? organization,
  }) {
    return VerificationResultValidator(
      attestationSignature: attestationSignature ?? this.attestationSignature,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identityCertificate: identityCertificate ?? this.identityCertificate,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organization: organization ?? this.organization,
    );
  }
}
