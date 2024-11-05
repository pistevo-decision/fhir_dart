part of '../fhir_dart.dart';

/// What codes are expected
/// Code filters specify additional constraints on the data, specifying the value set of interest for a particular element of the data. Each code filter defines an additional constraint on the data, i.e. code filters are AND'ed, not OR'ed.
class DataRequirementCodeFilter extends Element implements FhirResource {
  /// What code is expected
  /// The codes for the code filter. If values are given, the filter will return only those data items for which the code-valued attribute specified by the path has a value that is one of the specified codes. If codes are specified in addition to a value set, the filter returns items matching a code in the value set or one of the specified codes.
  final List<Coding>? code;

  /// A code-valued attribute to filter on
  /// The code-valued attribute of the filter. The specified path SHALL be a FHIRPath resolveable on the specified type of the DataRequirement, and SHALL consist only of identifiers, constant indexers, and .resolve(). The path is allowed to contain qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to traverse multiple-cardinality sub-elements (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full details). Note that the index must be an integer constant. The path must resolve to an element of type code, Coding, or CodeableConcept.
  /// The path attribute contains a [Simple FHIRPath Subset](fhirpath.html#simple) that allows path traversal, but not calculation.
  final String? path;

  /// A coded (token) parameter to search on
  /// A token parameter that refers to a search parameter defined on the specified type of the DataRequirement, and which searches on elements of type code, Coding, or CodeableConcept.
  final String? searchParam;

  /// Valueset for the filter
  /// The valueset for the code filter. The valueSet and code elements are additive. If valueSet is specified, the filter will return only those data items for which the value of the code-valued element specified in the path is a member of the specified valueset.
  final String? valueSet;
  DataRequirementCodeFilter({
    this.code,
    super.fhirExtension,
    super.id,
    this.path,
    this.searchParam,
    this.valueSet,
  });

  @override
  factory DataRequirementCodeFilter.fromJson(Map<String, dynamic> json) {
    return DataRequirementCodeFilter(
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      path: json['path'] as String?,
      searchParam: json['searchParam'] as String?,
      valueSet: json['valueSet'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'path': path,
        'searchParam': searchParam,
        'valueSet': valueSet,
      };

  @override
  DataRequirementCodeFilter copyWith({
    List<Coding>? code,
    List<Extension>? fhirExtension,
    String? id,
    String? path,
    String? searchParam,
    String? valueSet,
  }) {
    return DataRequirementCodeFilter(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      path: path ?? this.path,
      searchParam: searchParam ?? this.searchParam,
      valueSet: valueSet ?? this.valueSet,
    );
  }
}
