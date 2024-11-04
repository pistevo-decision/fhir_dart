part of '../fhir_dart.dart';

/// Information about the entity attesting to information.
class VerificationResultAttestation extends BackboneElement
    implements FhirResource {
  /// The method by which attested information was submitted/retrieved (manual; API; Push).
  final CodeableConcept? communicationMethod;

  /// The date the information was attested to.
  final String? date;

  /// When the who is asserting on behalf of another (organization or individual).
  final Reference? onBehalfOf;

  /// A digital identity certificate associated with the proxy entity submitting attested information on behalf of the attestation source.
  final String? proxyIdentityCertificate;

  /// Proxy signature
  /// Signed assertion by the proxy entity indicating that they have the right to submit attested information on behalf of the attestation source.
  final Signature? proxySignature;

  /// A digital identity certificate associated with the attestation source.
  final String? sourceIdentityCertificate;

  /// Attester signature
  /// Signed assertion by the attestation source that they have attested to the information.
  final Signature? sourceSignature;

  /// The individual or organization attesting to information.
  final Reference? who;
  VerificationResultAttestation({
    this.communicationMethod,
    this.date,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.onBehalfOf,
    this.proxyIdentityCertificate,
    this.proxySignature,
    this.sourceIdentityCertificate,
    this.sourceSignature,
    this.who,
  });

  @override
  factory VerificationResultAttestation.fromJson(Map<String, dynamic> json) {
    return VerificationResultAttestation(
      communicationMethod: json['communicationMethod'] != null
          ? CodeableConcept.fromJson(
              json['communicationMethod'] as Map<String, dynamic>)
          : null,
      date: json['date'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>)
          : null,
      proxyIdentityCertificate: json['proxyIdentityCertificate'] as String?,
      proxySignature: json['proxySignature'] != null
          ? Signature.fromJson(json['proxySignature'] as Map<String, dynamic>)
          : null,
      sourceIdentityCertificate: json['sourceIdentityCertificate'] as String?,
      sourceSignature: json['sourceSignature'] != null
          ? Signature.fromJson(json['sourceSignature'] as Map<String, dynamic>)
          : null,
      who: json['who'] != null
          ? Reference.fromJson(json['who'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'communicationMethod': communicationMethod?.toJson(),
        'date': date,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'onBehalfOf': onBehalfOf?.toJson(),
        'proxyIdentityCertificate': proxyIdentityCertificate,
        'proxySignature': proxySignature?.toJson(),
        'sourceIdentityCertificate': sourceIdentityCertificate,
        'sourceSignature': sourceSignature?.toJson(),
        'who': who?.toJson(),
      };

  @override
  VerificationResultAttestation copyWith({
    CodeableConcept? communicationMethod,
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? onBehalfOf,
    String? proxyIdentityCertificate,
    Signature? proxySignature,
    String? sourceIdentityCertificate,
    Signature? sourceSignature,
    Reference? who,
  }) {
    return VerificationResultAttestation(
      communicationMethod: communicationMethod ?? this.communicationMethod,
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      proxyIdentityCertificate:
          proxyIdentityCertificate ?? this.proxyIdentityCertificate,
      proxySignature: proxySignature ?? this.proxySignature,
      sourceIdentityCertificate:
          sourceIdentityCertificate ?? this.sourceIdentityCertificate,
      sourceSignature: sourceSignature ?? this.sourceSignature,
      who: who ?? this.who,
    );
  }
}
