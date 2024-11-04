part of '../fhir_dart.dart';

 /// Named instance provided when invoking the map
 /// A name assigned to an instance of data. The instance must be provided when the mapping is invoked.
 /// If no inputs are named, then the entry mappings are type based.
class StructureMapGroupInput extends BackboneElement implements FhirResource {
   /// Documentation for this instance of data.
  final String? documentation;
   /// source | target
   /// Mode for this instance of data.
  final String mode; // Possible values: 'source', 'target'
   /// Name for this instance of data.
  final String name;
   /// Type for this instance of data.
  final String? type;
  StructureMapGroupInput({
    this.documentation,
    super.fhirExtension,
    super.id,
    required this.mode,
    super.modifierExtension,
    required this.name,
    this.type,
  });
  
  @override
  factory StructureMapGroupInput.fromJson(Map<String, dynamic> json) {
    return StructureMapGroupInput(
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      mode: json['mode'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String,
      type: json['type'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'documentation': documentation,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'mode': mode,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'type': type,
    };
  
  @override
  StructureMapGroupInput copyWith({
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    String? mode,
    List<Extension>? modifierExtension,
    String? name,
    String? type,
  }) {
    return StructureMapGroupInput(
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}
