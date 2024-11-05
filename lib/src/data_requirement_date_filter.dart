part of '../fhir_dart.dart';

/// What dates/date ranges are expected
/// Date filters specify additional constraints on the data in terms of the applicable date range for specific elements. Each date filter specifies an additional constraint on the data, i.e. date filters are AND'ed, not OR'ed.
class DataRequirementDateFilter extends Element implements FhirResource {
  /// A date-valued attribute to filter on
  /// The date-valued attribute of the filter. The specified path SHALL be a FHIRPath resolveable on the specified type of the DataRequirement, and SHALL consist only of identifiers, constant indexers, and .resolve(). The path is allowed to contain qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to traverse multiple-cardinality sub-elements (see the [Simple FHIRPath Profile](fhirpath.html#simple) for full details). Note that the index must be an integer constant. The path must resolve to an element of type date, dateTime, Period, Schedule, or Timing.
  /// The path attribute contains a [Simple FHIR Subset](fhirpath.html#simple) that allows path traversal, but not calculation.
  final String? path;

  /// A date valued parameter to search on
  /// A date parameter that refers to a search parameter defined on the specified type of the DataRequirement, and which searches on elements of type date, dateTime, Period, Schedule, or Timing.
  final String? searchParam;

  /// The value of the filter, as a Period, DateTime, or Duration value
  /// The value of the filter. If period is specified, the filter will return only those data items that fall within the bounds determined by the Period, inclusive of the period boundaries. If dateTime is specified, the filter will return only those data items that are equal to the specified dateTime. If a Duration is specified, the filter will return only those data items that fall within Duration before now.
  final String? valueDateTime;

  /// The value of the filter, as a Period, DateTime, or Duration value
  /// The value of the filter. If period is specified, the filter will return only those data items that fall within the bounds determined by the Period, inclusive of the period boundaries. If dateTime is specified, the filter will return only those data items that are equal to the specified dateTime. If a Duration is specified, the filter will return only those data items that fall within Duration before now.
  final Duration? valueDuration;

  /// The value of the filter, as a Period, DateTime, or Duration value
  /// The value of the filter. If period is specified, the filter will return only those data items that fall within the bounds determined by the Period, inclusive of the period boundaries. If dateTime is specified, the filter will return only those data items that are equal to the specified dateTime. If a Duration is specified, the filter will return only those data items that fall within Duration before now.
  final Period? valuePeriod;
  DataRequirementDateFilter({
    super.fhirExtension,
    super.id,
    this.path,
    this.searchParam,
    this.valueDateTime,
    this.valueDuration,
    this.valuePeriod,
  });

  @override
  factory DataRequirementDateFilter.fromJson(Map<String, dynamic> json) {
    return DataRequirementDateFilter(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      path: json['path'] as String?,
      searchParam: json['searchParam'] as String?,
      valueDateTime: json['valueDateTime'] as String?,
      valueDuration: json['valueDuration'] != null
          ? Duration.fromJson(
              (json['valueDuration'] as Map).cast<String, dynamic>())
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(
              (json['valuePeriod'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'path': path,
        'searchParam': searchParam,
        'valueDateTime': valueDateTime,
        'valueDuration': valueDuration?.toJson(),
        'valuePeriod': valuePeriod?.toJson(),
      };

  @override
  DataRequirementDateFilter copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? path,
    String? searchParam,
    String? valueDateTime,
    Duration? valueDuration,
    Period? valuePeriod,
  }) {
    return DataRequirementDateFilter(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      path: path ?? this.path,
      searchParam: searchParam ?? this.searchParam,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDuration: valueDuration ?? this.valueDuration,
      valuePeriod: valuePeriod ?? this.valuePeriod,
    );
  }
}
