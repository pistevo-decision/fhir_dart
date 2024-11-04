part of '../fhir_dart.dart';

 /// Specimen handling before testing
 /// Set of instructions for preservation/transport of the specimen at a defined temperature interval, prior the testing process.
class SpecimenDefinitionTypeTestedHandling extends BackboneElement implements FhirResource {
   /// Preservation instruction
   /// Additional textual instructions for the preservation or transport of the specimen. For instance, 'Protect from light exposure'.
  final String? instruction;
   /// Maximum preservation time
   /// The maximum time interval of preservation of the specimen with these conditions.
  final Duration? maxDuration;
   /// Temperature qualifier
   /// It qualifies the interval of temperature, which characterizes an occurrence of handling. Conditions that are not related to temperature may be handled in the instruction element.
  final CodeableConcept? temperatureQualifier;
   /// Temperature range
   /// The temperature interval for this set of handling instructions.
  final Range? temperatureRange;
  SpecimenDefinitionTypeTestedHandling({
    super.fhirExtension,
    super.id,
    this.instruction,
    this.maxDuration,
    super.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
  });
  
  @override
  factory SpecimenDefinitionTypeTestedHandling.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionTypeTestedHandling(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      instruction: json['instruction'] as String?,
      maxDuration: json['maxDuration'] != null ? Duration.fromJson(json['maxDuration'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      temperatureQualifier: json['temperatureQualifier'] != null ? CodeableConcept.fromJson(json['temperatureQualifier'] as Map<String, dynamic>) : null,
      temperatureRange: json['temperatureRange'] != null ? Range.fromJson(json['temperatureRange'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'instruction': instruction,
      'maxDuration': maxDuration?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'temperatureQualifier': temperatureQualifier?.toJson(),
      'temperatureRange': temperatureRange?.toJson(),
    };
  
  @override
  SpecimenDefinitionTypeTestedHandling copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? instruction,
    Duration? maxDuration,
    List<Extension>? modifierExtension,
    CodeableConcept? temperatureQualifier,
    Range? temperatureRange,
  }) {
    return SpecimenDefinitionTypeTestedHandling(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      instruction: instruction ?? this.instruction,
      maxDuration: maxDuration ?? this.maxDuration,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      temperatureQualifier: temperatureQualifier ?? this.temperatureQualifier,
      temperatureRange: temperatureRange ?? this.temperatureRange,
    );
  }
}
