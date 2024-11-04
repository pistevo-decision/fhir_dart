part of '../fhir_dart.dart';

/// Include one or more codes from a code system or other value set(s).
/// All the conditions in an include must be true. If a system is listed, all the codes from the system are listed. If one or more filters are listed, all of the filters must apply. If one or more value sets are listed, the codes must be in all the value sets. E.g. each include is 'include all the codes that meet all these conditions'.
class ValueSetComposeInclude extends BackboneElement implements FhirResource {
  /// A concept defined in the system
  /// Specifies a concept to be included or excluded.
  /// The list of concepts is considered ordered, though the order might not have any particular significance. Typically, the order of an expansion follows that defined in the compose element.
  final List<ValueSetComposeIncludeConcept>? concept;

  /// Select codes/concepts by their properties (including relationships)
  /// Select concepts by specify a matching criterion based on the properties (including relationships) defined by the system, or on filters defined by the system. If multiple filters are specified, they SHALL all be true.
  /// Selecting codes by specifying filters based on properties is only possible where the underlying code system defines appropriate properties. Note that in some cases, the underlying code system defines the logical concepts but not the literal codes for the concepts. In such cases, the literal definitions may be provided by a third party.
  final List<ValueSetComposeIncludeFilter>? filter;

  /// The system the codes come from
  /// An absolute URI which is the code system from which the selected codes come from.
  /// If there are no codes or filters, the entire code system is included. Note that the set of codes that are included may contain abstract codes. See ''Coding.system'' for further documentation about the correct value for the system element.
  final String? system;

  /// Select the contents included in this value set
  /// Selects the concepts found in this value set (based on its value set definition). This is an absolute URI that is a reference to ValueSet.url.  If multiple value sets are specified this includes the union of the contents of all of the referenced value sets.
  /// The value set URI is either a logical reference to a defined value set such as a [SNOMED CT reference set](snomedct.html#implicit), or a direct reference to a value set definition using ValueSet.url. The reference might not refer to an actual FHIR ValueSet resource; in this case, whatever is referred to is an implicit definition of a value set that needs to be clear about how versions are resolved.
  final List<String>? valueSet;

  /// Specific version of the code system referred to
  /// The version of the code system that the codes are selected from, or the special version '*' for all versions.
  /// This is used when selecting the descendants of a concept - they may change between versions. If no version is specified, then the exact contents of the value set might not be known until a context of use binds it to a particular version. The special value '*' means all versions; It is at server discretion regarding expansions and which versions must be supported.
  final String? version;
  ValueSetComposeInclude({
    this.concept,
    super.fhirExtension,
    this.filter,
    super.id,
    super.modifierExtension,
    this.system,
    this.valueSet,
    this.version,
  });

  @override
  factory ValueSetComposeInclude.fromJson(Map<String, dynamic> json) {
    return ValueSetComposeInclude(
      concept: (json['concept'] as List<dynamic>?)
          ?.map((e) =>
              ValueSetComposeIncludeConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      filter: (json['filter'] as List<dynamic>?)
          ?.map((e) =>
              ValueSetComposeIncludeFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      system: json['system'] as String?,
      valueSet: (json['valueSet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      version: json['version'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'concept': concept?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'filter': filter?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'system': system,
        'valueSet': valueSet?.map((e) => e).toList(),
        'version': version,
      };

  @override
  ValueSetComposeInclude copyWith({
    List<ValueSetComposeIncludeConcept>? concept,
    List<Extension>? fhirExtension,
    List<ValueSetComposeIncludeFilter>? filter,
    String? id,
    List<Extension>? modifierExtension,
    String? system,
    List<String>? valueSet,
    String? version,
  }) {
    return ValueSetComposeInclude(
      concept: concept ?? this.concept,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      filter: filter ?? this.filter,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      valueSet: valueSet ?? this.valueSet,
      version: version ?? this.version,
    );
  }
}
