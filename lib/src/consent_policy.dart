part of '../fhir_dart.dart';

 /// Policies covered by this consent
 /// The references to the policies that are included in this consent scope. Policies may be organizational, but are often defined jurisdictionally, or in law.
class ConsentPolicy extends BackboneElement implements FhirResource {
   /// Enforcement source for policy
   /// Entity or Organization having regulatory jurisdiction or accountability for  enforcing policies pertaining to Consent Directives.
  final String? authority;
   /// Specific policy covered by this consent
   /// The references to the policies that are included in this consent scope. Policies may be organizational, but are often defined jurisdictionally, or in law.
   /// This element is for discoverability / documentation and does not modify or qualify the policy rules.
  final String? uri;
  ConsentPolicy({
    this.authority,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.uri,
  });
  
  @override
  factory ConsentPolicy.fromJson(Map<String, dynamic> json) {
    return ConsentPolicy(
      authority: json['authority'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      uri: json['uri'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'authority': authority,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'uri': uri,
    };
  
  @override
  ConsentPolicy copyWith({
    String? authority,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? uri,
  }) {
    return ConsentPolicy(
      authority: authority ?? this.authority,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uri: uri ?? this.uri,
    );
  }
}
