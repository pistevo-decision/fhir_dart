part of '../fhir_dart.dart';

 /// ValueSet details if this is coded
 /// Binds to a value set if this element is coded (code, Coding, CodeableConcept, Quantity), or the data types (string, uri).
 /// For a CodeableConcept, when no codes are allowed - only text, use a binding of strength "required" with a description explaining that no coded values are allowed and what sort of information to put in the "text" element.
class ElementDefinitionBinding extends Element implements FhirResource {
   /// Human explanation of the value set
   /// Describes the intended use of this particular set of codes.
  final String? description;
   /// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the provided value set must be adhered to in the instances.
   /// For further discussion, see [Using Terminologies](terminologies.html).
  final String strength; // Possible values: 'required', 'extensible', 'preferred', 'example'
   /// Source of value set
   /// Refers to the value set that identifies the set of codes the binding refers to.
   /// The reference may be version-specific or not (e.g. have a |[version] at the end of the canonical URL).
  final String? valueSet;
  ElementDefinitionBinding({
    this.description,
    super.fhirExtension,
    super.id,
    required this.strength,
    this.valueSet,
  });
  
  @override
  factory ElementDefinitionBinding.fromJson(Map<String, dynamic> json) {
    return ElementDefinitionBinding(
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      strength: json['strength'] as String,
      valueSet: json['valueSet'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'strength': strength,
      'valueSet': valueSet,
    };
  
  @override
  ElementDefinitionBinding copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    String? strength,
    String? valueSet,
  }) {
    return ElementDefinitionBinding(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      strength: strength ?? this.strength,
      valueSet: valueSet ?? this.valueSet,
    );
  }
}
