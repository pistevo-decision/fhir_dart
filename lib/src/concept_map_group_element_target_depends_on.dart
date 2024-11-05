part of '../fhir_dart.dart';

/// Other elements required for this mapping (from context)
/// A set of additional dependencies for this mapping to hold. This mapping is only applicable if the specified element can be resolved, and it has the specified value.
class ConceptMapGroupElementTargetDependsOn extends BackboneElement
    implements FhirResource {
  /// Display for the code (if value is a code)
  /// The display for the code. The display is only provided to help editors when editing the concept map.
  /// The display is ignored when processing the map.
  final String? display;

  /// Reference to property mapping depends on
  /// A reference to an element that holds a coded value that corresponds to a code system property. The idea is that the information model carries an element somewhere that is labeled to correspond with a code system property.
  final String property;

  /// Code System (if necessary)
  /// An absolute URI that identifies the code system of the dependency code (if the source/dependency is a value set that crosses code systems).
  final String? system;

  /// Value of the referenced element
  /// Identity (code or path) or the element/item/ValueSet/text that the map depends on / refers to.
  final String value;
  ConceptMapGroupElementTargetDependsOn({
    this.display,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.property,
    this.system,
    required this.value,
  });

  @override
  factory ConceptMapGroupElementTargetDependsOn.fromJson(
      Map<String, dynamic> json) {
    return ConceptMapGroupElementTargetDependsOn(
      display: json['display'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      property: json['property'] as String,
      system: json['system'] as String?,
      value: json['value'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'display': display,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'property': property,
        'system': system,
        'value': value,
      };

  @override
  ConceptMapGroupElementTargetDependsOn copyWith({
    String? display,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? property,
    String? system,
    String? value,
  }) {
    return ConceptMapGroupElementTargetDependsOn(
      display: display ?? this.display,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      system: system ?? this.system,
      value: value ?? this.value,
    );
  }
}
