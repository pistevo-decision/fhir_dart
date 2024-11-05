part of '../fhir_dart.dart';

/// Filter that can be used in a value set
/// A filter that can be used in a value set compose statement when selecting concepts using a filter.
/// Note that filters defined in code systems usually require custom code on the part of any terminology engine that will make them available for use in value set filters. For this reason, they are generally only seen in high value published terminologies.
class CodeSystemFilter extends BackboneElement implements FhirResource {
  /// Code that identifies the filter
  /// The code that identifies this filter when it is used as a filter in [ValueSet](valueset.html#).compose.include.filter.
  final String code;

  /// How or why the filter is used
  /// A description of how or why the filter is used.
  final String? description;

  /// A list of operators that can be used with the filter.
  final List<String>
      fhirOperator; // Possible values: '=', 'is-a', 'descendent-of', 'is-not-a', 'regex', 'in', 'not-in', 'generalizes', 'exists'
  /// What to use for the value
  /// A description of what the value for the filter should be.
  final String value;
  CodeSystemFilter({
    required this.code,
    this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.fhirOperator,
    required this.value,
  });

  @override
  factory CodeSystemFilter.fromJson(Map<String, dynamic> json) {
    return CodeSystemFilter(
      code: json['code'] as String,
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirOperator:
          (json['operator'] as List<dynamic>).map((e) => e as String).toList(),
      value: json['value'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'operator': fhirOperator.map((e) => e).toList(),
        'value': value,
      };

  @override
  CodeSystemFilter copyWith({
    String? code,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<String>? fhirOperator,
    String? value,
  }) {
    return CodeSystemFilter(
      code: code ?? this.code,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      fhirOperator: fhirOperator ?? this.fhirOperator,
      value: value ?? this.value,
    );
  }
}
