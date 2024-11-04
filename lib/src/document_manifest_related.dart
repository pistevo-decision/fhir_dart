part of '../fhir_dart.dart';

 /// Related things
 /// Related identifiers or resources associated with the DocumentManifest.
 /// May be identifiers or resources that caused the DocumentManifest to be created.
class DocumentManifestRelated extends BackboneElement implements FhirResource {
   /// Identifiers of things that are related
   /// Related identifier to this DocumentManifest.  For example, Order numbers, accession numbers, XDW workflow numbers.
   /// If both identifier and ref elements are present they shall refer to the same thing.
  final Identifier? identifier;
   /// Related Resource to this DocumentManifest. For example, Order, ServiceRequest,  Procedure, EligibilityRequest, etc.
   /// If both identifier and ref elements are present they shall refer to the same thing.
  final Reference? ref;
  DocumentManifestRelated({
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.ref,
  });
  
  @override
  factory DocumentManifestRelated.fromJson(Map<String, dynamic> json) {
    return DocumentManifestRelated(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      ref: json['ref'] != null ? Reference.fromJson(json['ref'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'ref': ref?.toJson(),
    };
  
  @override
  DocumentManifestRelated copyWith({
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    Reference? ref,
  }) {
    return DocumentManifestRelated(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      ref: ref ?? this.ref,
    );
  }
}
