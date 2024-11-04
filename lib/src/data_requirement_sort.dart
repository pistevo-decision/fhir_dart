part of '../fhir_dart.dart';

 /// Order of the results
 /// Specifies the order of the results to be returned.
 /// This element can be used in combination with the sort element to specify quota requirements such as "the most recent 5" or "the highest 5". When multiple sorts are specified, they are applied in the order they appear in the resource.
class DataRequirementSort extends Element implements FhirResource {
   /// ascending | descending
   /// The direction of the sort, ascending or descending.
  final String direction; // Possible values: 'ascending', 'descending'
   /// The name of the attribute to perform the sort
   /// The attribute of the sort. The specified path must be resolvable from the type of the required data. The path is allowed to contain qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to traverse multiple-cardinality sub-elements. Note that the index must be an integer constant.
  final String path;
  DataRequirementSort({
    required this.direction,
    super.fhirExtension,
    super.id,
    required this.path,
  });
  
  @override
  factory DataRequirementSort.fromJson(Map<String, dynamic> json) {
    return DataRequirementSort(
      direction: json['direction'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      path: json['path'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'direction': direction,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'path': path,
    };
  
  @override
  DataRequirementSort copyWith({
    String? direction,
    List<Extension>? fhirExtension,
    String? id,
    String? path,
  }) {
    return DataRequirementSort(
      direction: direction ?? this.direction,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      path: path ?? this.path,
    );
  }
}
