part of '../fhir_dart.dart';

/// The elements of the Signature Resource are for ease of access of these elements. For digital signatures (Xml DigSig, JWS), the non-repudiation proof comes from the Signature  validation, which includes validation of the referenced objects (e.g. Resources) (a.k.a., Content) in the XML-Signature Detached form.
/// Base StructureDefinition for Signature Type: A signature along with supporting context. The signature may be a digital signature that is cryptographic in nature, or some other signature acceptable to the domain. This other signature may be as simple as a graphical image representing a hand-written signature, or a signature ceremony Different signature approaches have different utilities.
/// There are a number of places where content must be signed in healthcare.
class Signature extends Element implements FhirResource {
  /// The actual signature content (XML DigSig. JWS, picture, etc.)
  /// The base64 encoding of the Signature content. When signature is not recorded electronically this element would be empty.
  /// Where the signature type is an XML DigSig, the signed content is a FHIR Resource(s), the signature is of the XML form of the Resource(s) using  XML-Signature (XMLDIG) "Detached Signature" form.
  final String? data;

  /// The party represented
  /// A reference to an application-usable description of the identity that is represented by the signature.
  /// The party that can't sign. For example a child.
  final Reference? onBehalfOf;

  /// The technical format of the signature
  /// A mime type that indicates the technical format of the signature. Important mime types are application/signature+xml for X ML DigSig, application/jose for JWS, and image/* for a graphical image of a signature, etc.
  final String? sigFormat;

  /// The technical format of the signed resources
  /// A mime type that indicates the technical format of the target resources signed by the signature.
  /// "xml", "json" and "ttl" are allowed, which describe the simple encodings described in the specification (and imply appropriate bundle support). Otherwise, mime types are legal here.
  final String? targetFormat;

  /// Indication of the reason the entity signed the object(s)
  /// An indication of the reason that the entity signed this document. This may be explicitly included as part of the signature information and can be used when determining accountability for various actions concerning the document.
  /// Examples include attesting to: authorship, correct transcription, and witness of specific event. Also known as a &quot;Commitment Type Indication&quot;.
  final List<Coding> type;

  /// When the signature was created
  /// When the digital signature was signed.
  /// This should agree with the information in the signature.
  final String when;

  /// Who signed
  /// A reference to an application-usable description of the identity that signed  (e.g. the signature used their private key).
  /// This should agree with the information in the signature.
  final Reference who;
  Signature({
    this.data,
    super.fhirExtension,
    super.id,
    this.onBehalfOf,
    this.sigFormat,
    this.targetFormat,
    required this.type,
    required this.when,
    required this.who,
  });

  @override
  factory Signature.fromJson(Map<String, dynamic> json) {
    return Signature(
      data: json['data'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      onBehalfOf: json['onBehalfOf'] != null
          ? Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>)
          : null,
      sigFormat: json['sigFormat'] as String?,
      targetFormat: json['targetFormat'] as String?,
      type: (json['type'] as List<dynamic>)
          .map((e) => Coding.fromJson(e as Map<String, dynamic>))
          .toList(),
      when: json['when'] as String,
      who: Reference.fromJson(json['who'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'onBehalfOf': onBehalfOf?.toJson(),
        'sigFormat': sigFormat,
        'targetFormat': targetFormat,
        'type': type.map((e) => e.toJson()).toList(),
        'when': when,
        'who': who.toJson(),
      };

  @override
  Signature copyWith({
    String? data,
    List<Extension>? fhirExtension,
    String? id,
    Reference? onBehalfOf,
    String? sigFormat,
    String? targetFormat,
    List<Coding>? type,
    String? when,
    Reference? who,
  }) {
    return Signature(
      data: data ?? this.data,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      sigFormat: sigFormat ?? this.sigFormat,
      targetFormat: targetFormat ?? this.targetFormat,
      type: type ?? this.type,
      when: when ?? this.when,
      who: who ?? this.who,
    );
  }
}
