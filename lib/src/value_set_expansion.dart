part of '../fhir_dart.dart';

 /// Used when the value set is "expanded"
 /// A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This element holds the expansion, if it has been performed.
 /// Expansion is performed to produce a collection of codes that are ready to use for data entry or validation. Value set expansions are always considered to be stateless - they are a record of the set of codes in the value set at a point in time under a given set of conditions, and are not subject to ongoing maintenance.
 /// Expansion.parameter is  a simplified list of parameters - a subset of the features of the [Parameters](parameters.html) resource.
class ValueSetExpansion extends BackboneElement implements FhirResource {
   /// Codes in the value set
   /// The codes that are contained in the value set expansion.
  final List<ValueSetExpansionContains>? contains;
   /// Identifies the value set expansion (business identifier)
   /// An identifier that uniquely identifies this expansion of the valueset, based on a unique combination of the provided parameters, the system default parameters, and the underlying system code system versions etc. Systems may re-use the same identifier as long as those factors remain the same, and the expansion is the same, but are not required to do so. This is a business identifier.
   /// Typically, this uri is a UUID (e.g. urn:uuid:8230ff20-c97a-4167-a59d-dc2cb9df16dd).
  final String? identifier;
   /// Offset at which this resource starts
   /// If paging is being used, the offset at which this resource starts.  I.e. this resource is a partial view into the expansion. If paging is not being used, this element SHALL NOT be present.
   /// Paging only applies to flat expansions. If a filter is applied, the count is the number of concepts that matched the filter, not the number of concepts in an unfiltered view of the expansion.
  final int? offset;
   /// Parameter that controlled the expansion process
   /// A parameter that controlled the expansion process. These parameters may be used by users of expanded value sets to check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
   /// The server decides which parameters to include here, but at a minimum, the list SHOULD include all of the parameters that affect the $expand operation. If the expansion will be persisted all of these parameters SHALL be included. If the codeSystem on the server has a specified version then this version SHALL be provided as a parameter in the expansion (note that not all code systems have a version).
  final List<ValueSetExpansionParameter>? parameter;
   /// Time ValueSet expansion happened
   /// The time at which the expansion was produced by the expanding system.
   /// This SHOULD be a fully populated instant, but in some circumstances, value sets are expanded by hand, and the expansion is published without that precision.
  final String timestamp;
   /// Total number of codes in the expansion
   /// The total number of concepts in the expansion. If the number of concept nodes in this resource is less than the stated number, then the server can return more using the offset parameter.
   /// Paging only applies to flat expansions.
  final int? total;
  ValueSetExpansion({
    this.contains,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.offset,
    this.parameter,
    required this.timestamp,
    this.total,
  });
  
  @override
  factory ValueSetExpansion.fromJson(Map<String, dynamic> json) {
    return ValueSetExpansion(
      contains: (json['contains'] as List<dynamic>?)?.map((e) => ValueSetExpansionContains.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      offset: json['offset'] as int?,
      parameter: (json['parameter'] as List<dynamic>?)?.map((e) => ValueSetExpansionParameter.fromJson(e as Map<String, dynamic>)).toList(),
      timestamp: json['timestamp'] as String,
      total: json['total'] as int?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contains': contains?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'offset': offset,
      'parameter': parameter?.map((e) => e.toJson()).toList(),
      'timestamp': timestamp,
      'total': total,
    };
  
  @override
  ValueSetExpansion copyWith({
    List<ValueSetExpansionContains>? contains,
    List<Extension>? fhirExtension,
    String? id,
    String? identifier,
    List<Extension>? modifierExtension,
    int? offset,
    List<ValueSetExpansionParameter>? parameter,
    String? timestamp,
    int? total,
  }) {
    return ValueSetExpansion(
      contains: contains ?? this.contains,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      offset: offset ?? this.offset,
      parameter: parameter ?? this.parameter,
      timestamp: timestamp ?? this.timestamp,
      total: total ?? this.total,
    );
  }
}
