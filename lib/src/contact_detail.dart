part of '../fhir_dart.dart';

 /// Base StructureDefinition for ContactDetail Type: Specifies contact information for a person or organization.
 /// Need to track contact information in the same way across multiple resources.
class ContactDetail extends Element implements FhirResource {
   /// Name of an individual to contact
   /// The name of an individual to contact.
   /// If there is no named individual, the telecom information is for the organization as a whole.
  final String? name;
   /// Contact details for individual or organization
   /// The contact details for the individual (if a name was provided) or the organization.
  final List<ContactPoint>? telecom;
  ContactDetail({
    super.fhirExtension,
    super.id,
    this.name,
    this.telecom,
  });
  
  @override
  factory ContactDetail.fromJson(Map<String, dynamic> json) {
    return ContactDetail(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      name: json['name'] as String?,
      telecom: (json['telecom'] as List<dynamic>?)?.map((e) => ContactPoint.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'name': name,
      'telecom': telecom?.map((e) => e.toJson()).toList(),
    };
  
  @override
  ContactDetail copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? name,
    List<ContactPoint>? telecom,
  }) {
    return ContactDetail(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      name: name ?? this.name,
      telecom: telecom ?? this.telecom,
    );
  }
}
