part of '../fhir_dart.dart';

 /// Base StructureDefinition for Population Type: A populatioof people with some set of grouping criteria.
class Population extends BackboneElement implements FhirResource {
   /// The age of the specific population.
  final CodeableConcept? ageCodeableConcept;
   /// The age of the specific population.
  final Range? ageRange;
   /// The gender of the specific population.
  final CodeableConcept? gender;
   /// The existing physiological conditions of the specific population to which this applies.
  final CodeableConcept? physiologicalCondition;
   /// Race of the specific population.
  final CodeableConcept? race;
  Population({
    this.ageCodeableConcept,
    this.ageRange,
    super.fhirExtension,
    this.gender,
    super.id,
    super.modifierExtension,
    this.physiologicalCondition,
    this.race,
  });
  
  @override
  factory Population.fromJson(Map<String, dynamic> json) {
    return Population(
      ageCodeableConcept: json['ageCodeableConcept'] != null ? CodeableConcept.fromJson(json['ageCodeableConcept'] as Map<String, dynamic>) : null,
      ageRange: json['ageRange'] != null ? Range.fromJson(json['ageRange'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      gender: json['gender'] != null ? CodeableConcept.fromJson(json['gender'] as Map<String, dynamic>) : null,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      physiologicalCondition: json['physiologicalCondition'] != null ? CodeableConcept.fromJson(json['physiologicalCondition'] as Map<String, dynamic>) : null,
      race: json['race'] != null ? CodeableConcept.fromJson(json['race'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'ageCodeableConcept': ageCodeableConcept?.toJson(),
      'ageRange': ageRange?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'gender': gender?.toJson(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'physiologicalCondition': physiologicalCondition?.toJson(),
      'race': race?.toJson(),
    };
  
  @override
  Population copyWith({
    CodeableConcept? ageCodeableConcept,
    Range? ageRange,
    List<Extension>? fhirExtension,
    CodeableConcept? gender,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? physiologicalCondition,
    CodeableConcept? race,
  }) {
    return Population(
      ageCodeableConcept: ageCodeableConcept ?? this.ageCodeableConcept,
      ageRange: ageRange ?? this.ageRange,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      physiologicalCondition: physiologicalCondition ?? this.physiologicalCondition,
      race: race ?? this.race,
    );
  }
}
