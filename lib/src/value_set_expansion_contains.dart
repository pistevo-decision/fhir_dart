part of '../fhir_dart.dart';

 /// Codes in the value set
 /// The codes that are contained in the value set expansion.
class ValueSetExpansionContains extends BackboneElement implements FhirResource {
   /// If user cannot select this entry
   /// If true, this entry is included in the expansion for navigational purposes, and the user cannot select the code directly as a proper value.
   /// This should not be understood to exclude its use for searching (e.g. by subsumption testing). The client should know whether it is appropriate for the user to select an abstract code or not.
  final bool? fhirAbstract;
   /// Code - if blank, this is not a selectable code
   /// The code for this item in the expansion hierarchy. If this code is missing the entry in the hierarchy is a place holder (abstract) and does not represent a valid code in the value set.
  final String? code;
   /// Codes contained under this entry
   /// Other codes and entries contained under this entry in the hierarchy.
   /// If the expansion uses this element, there is  no implication about the logical relationship between them, and the  structure cannot be used for logical inferencing. The structure  exists to provide navigational assistance for helping human users to  locate codes in the expansion.
  final List<ValueSetExpansionContains>? contains;
   /// Additional representations for this item - other languages, aliases, specialized purposes, used for particular purposes, etc. These are relevant when the conditions of the expansion do not fix to a single correct representation.
   /// The designations provided must be based on the value set and code system definitions.
  final List<ValueSetComposeIncludeConceptDesignation>? designation;
   /// User display for the concept
   /// The recommended display for this item in the expansion.
  final String? display;
   /// If concept is inactive in the code system
   /// If the concept is inactive in the code system that defines it. Inactive codes are those that are no longer to be used, but are maintained by the code system for understanding legacy data. It might not be known or specified whether an concept is inactive (and it may depend on the context of use).
   /// This should only have a value if the concept is inactive.
  final bool? inactive;
   /// System value for the code
   /// An absolute URI which is the code system in which the code for this item in the expansion is defined.
  final String? system;
   /// Version in which this code/display is defined
   /// The version of the code system from this code was taken. Note that a well-maintained code system does not need the version reported, because the meaning of codes is consistent across versions. However this cannot consistently be assured, and when the meaning is not guaranteed to be consistent, the version SHOULD be exchanged.
   /// The exact value of the version string is specified by the system from which the code is derived.
  final String? version;
  ValueSetExpansionContains({
    this.fhirAbstract,
    this.code,
    this.contains,
    this.designation,
    this.display,
    super.fhirExtension,
    super.id,
    this.inactive,
    super.modifierExtension,
    this.system,
    this.version,
  });
  
  @override
  factory ValueSetExpansionContains.fromJson(Map<String, dynamic> json) {
    return ValueSetExpansionContains(
      fhirAbstract: json['abstract'] as bool?,
      code: json['code'] as String?,
      contains: (json['contains'] as List<dynamic>?)?.map((e) => ValueSetExpansionContains.fromJson(e as Map<String, dynamic>)).toList(),
      designation: (json['designation'] as List<dynamic>?)?.map((e) => ValueSetComposeIncludeConceptDesignation.fromJson(e as Map<String, dynamic>)).toList(),
      display: json['display'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      inactive: json['inactive'] as bool?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      system: json['system'] as String?,
      version: json['version'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'abstract': fhirAbstract,
      'code': code,
      'contains': contains?.map((e) => e.toJson()).toList(),
      'designation': designation?.map((e) => e.toJson()).toList(),
      'display': display,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'inactive': inactive,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'system': system,
      'version': version,
    };
  
  @override
  ValueSetExpansionContains copyWith({
    bool? fhirAbstract,
    String? code,
    List<ValueSetExpansionContains>? contains,
    List<ValueSetComposeIncludeConceptDesignation>? designation,
    String? display,
    List<Extension>? fhirExtension,
    String? id,
    bool? inactive,
    List<Extension>? modifierExtension,
    String? system,
    String? version,
  }) {
    return ValueSetExpansionContains(
      fhirAbstract: fhirAbstract ?? this.fhirAbstract,
      code: code ?? this.code,
      contains: contains ?? this.contains,
      designation: designation ?? this.designation,
      display: display ?? this.display,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      inactive: inactive ?? this.inactive,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      version: version ?? this.version,
    );
  }
}
