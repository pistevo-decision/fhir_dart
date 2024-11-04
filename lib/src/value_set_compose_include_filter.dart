part of '../fhir_dart.dart';

/// Select codes/concepts by their properties (including relationships)
/// Select concepts by specify a matching criterion based on the properties (including relationships) defined by the system, or on filters defined by the system. If multiple filters are specified, they SHALL all be true.
/// Selecting codes by specifying filters based on properties is only possible where the underlying code system defines appropriate properties. Note that in some cases, the underlying code system defines the logical concepts but not the literal codes for the concepts. In such cases, the literal definitions may be provided by a third party.
class ValueSetComposeIncludeFilter extends BackboneElement
    implements FhirResource {
  /// The kind of operation to perform as a part of the filter criteria.
  /// In case filter.property represents a property of the system, the operation applies to the selected property. In case filter.property represents a filter of the system, the operation SHALL match one of the CodeSystem.filter.operator values.
  final String
      op; // Possible values: '=', 'is-a', 'descendent-of', 'is-not-a', 'regex', 'in', 'not-in', 'generalizes', 'exists'
  /// A property/filter defined by the code system
  /// A code that identifies a property or a filter defined in the code system.
  final String property;

  /// Code from the system, or regex criteria, or boolean value for exists
  /// The match value may be either a code defined by the system, or a string value, which is a regex match on the literal string of the property value  (if the filter represents a property defined in CodeSystem) or of the system filter value (if the filter represents a filter defined in CodeSystem) when the operation is 'regex', or one of the values (true and false), when the operation is 'exists'.
  /// Use regex matching with care - full regex matching on every SNOMED CT term is prohibitive, for example.
  final String value;
  ValueSetComposeIncludeFilter({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.op,
    required this.property,
    required this.value,
  });

  @override
  factory ValueSetComposeIncludeFilter.fromJson(Map<String, dynamic> json) {
    return ValueSetComposeIncludeFilter(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      op: json['op'] as String,
      property: json['property'] as String,
      value: json['value'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'op': op,
        'property': property,
        'value': value,
      };

  @override
  ValueSetComposeIncludeFilter copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? op,
    String? property,
    String? value,
  }) {
    return ValueSetComposeIncludeFilter(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      op: op ?? this.op,
      property: property ?? this.property,
      value: value ?? this.value,
    );
  }
}
