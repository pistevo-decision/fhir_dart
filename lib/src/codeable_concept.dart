part of '../fhir_dart.dart';

 /// Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination.
 /// Base StructureDefinition for CodeableConcept Type: A concept that may be defined by a formal reference to a terminology or ontology or may be provided by text.
 /// This is a common pattern in healthcare - a concept that may be defined by one or more codes from formal definitions including LOINC and SNOMED CT, and/or defined by the provision of text that captures a human sense of the concept.
class CodeableConcept extends Element implements FhirResource {
   /// Code defined by a terminology system
   /// A reference to a code defined by a terminology system.
   /// Codes may be defined very casually in enumerations, or code lists, up to very formal definitions such as SNOMED CT - see the HL7 v3 Core Principles for more information.  Ordering of codings is undefined and SHALL NOT be used to infer meaning. Generally, at most only one of the coding values will be labeled as UserSelected = true.
  final List<Coding>? coding;
   /// Plain text representation of the concept
   /// A human language representation of the concept as seen/selected/uttered by the user who entered the data and/or which represents the intended meaning of the user.
   /// Very often the text is the same as a displayName of one of the codings.
  final String? text;
  CodeableConcept({
    this.coding,
    super.fhirExtension,
    super.id,
    this.text,
  });
  
  @override
  factory CodeableConcept.fromJson(Map<String, dynamic> json) {
    return CodeableConcept(
      coding: (json['coding'] as List<dynamic>?)?.map((e) => Coding.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      text: json['text'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'coding': coding?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'text': text,
    };
  
  @override
  CodeableConcept copyWith({
    List<Coding>? coding,
    List<Extension>? fhirExtension,
    String? id,
    String? text,
  }) {
    return CodeableConcept(
      coding: coding ?? this.coding,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      text: text ?? this.text,
    );
  }
}
