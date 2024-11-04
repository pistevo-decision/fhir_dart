part of '../fhir_dart.dart';

 /// Base StructureDefinition for Contributor Type: A contributor to the content of a knowledge asset, including authors, editors, reviewers, and endorsers.
 /// Need to track contributor information in the same way across multiple resources.
class Contributor extends Element implements FhirResource {
   /// Contact details of the contributor
   /// Contact details to assist a user in finding and communicating with the contributor.
  final List<ContactDetail>? contact;
   /// Who contributed the content
   /// The name of the individual or organization responsible for the contribution.
  final String name;
   /// The type of contributor.
  final String type; // Possible values: 'author', 'editor', 'reviewer', 'endorser'
  Contributor({
    this.contact,
    super.fhirExtension,
    super.id,
    required this.name,
    required this.type,
  });
  
  @override
  factory Contributor.fromJson(Map<String, dynamic> json) {
    return Contributor(
      contact: (json['contact'] as List<dynamic>?)?.map((e) => ContactDetail.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      name: json['name'] as String,
      type: json['type'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contact': contact?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'name': name,
      'type': type,
    };
  
  @override
  Contributor copyWith({
    List<ContactDetail>? contact,
    List<Extension>? fhirExtension,
    String? id,
    String? name,
    String? type,
  }) {
    return Contributor(
      contact: contact ?? this.contact,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
