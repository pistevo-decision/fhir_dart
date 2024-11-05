part of '../fhir_dart.dart';

/// Content logical definition of the value set (CLD)
/// A set of criteria that define the contents of the value set by including or excluding codes selected from the specified code system(s) that the value set draws from. This is also known as the Content Logical Definition (CLD).
class ValueSetCompose extends BackboneElement implements FhirResource {
  /// Explicitly exclude codes from a code system or other value sets
  /// Exclude one or more codes from the value set based on code system filters and/or other value sets.
  /// Usually this is used to selectively exclude codes that were included by subsumption in the inclusions. Any display names specified for the codes are ignored.
  final List<ValueSetComposeInclude>? exclude;

  /// Whether inactive codes are in the value set
  /// Whether inactive codes - codes that are not approved for current use - are in the value set. If inactive = true, inactive codes are to be included in the expansion, if inactive = false, the inactive codes will not be included in the expansion. If absent, the behavior is determined by the implementation, or by the applicable $expand parameters (but generally, inactive codes would be expected to be included).
  /// Note that in the FHIR terminology framework, "deprecated" does not mean inactive, but in some code systems, e.g. LOINC, "deprecated" does mean inactive. Code systems should define what codes are considered to be inactive. If this is not clearly defined (including in the FHIR code system resource), then all codes are assumed to be active.
  /// The Value Set Definition specification defines an ActiveOnly element, which is the reverse of this element e.g. (ValueSet.compose.inactive=FALSE) is the same as (VSD.ActiveOnly=TRUE).
  final bool? inactive;

  /// Include one or more codes from a code system or other value set(s).
  /// All the conditions in an include must be true. If a system is listed, all the codes from the system are listed. If one or more filters are listed, all of the filters must apply. If one or more value sets are listed, the codes must be in all the value sets. E.g. each include is 'include all the codes that meet all these conditions'.
  final List<ValueSetComposeInclude> include;

  /// Fixed date for references with no specified version (transitive)
  /// The Locked Date is  the effective date that is used to determine the version of all referenced Code Systems and Value Set Definitions included in the compose that are not already tied to a specific version.
  /// With a defined lockedDate the value set is considered "Locked". Otherwise, the value set may have different expansions as underlying code systems and/or value sets evolve.  The interpretation of lockedDate is often dependent on the context - e.g. a SNOMED CT derived value set with a lockedDate will have a different expansion in USA than in UK.  If a value set specifies a version for include and exclude statements, and also specifies a locked date, the specified versions need to be available that date, or the value set will not be usable.
  final String? lockedDate;
  ValueSetCompose({
    this.exclude,
    super.fhirExtension,
    super.id,
    this.inactive,
    required this.include,
    this.lockedDate,
    super.modifierExtension,
  });

  @override
  factory ValueSetCompose.fromJson(Map<String, dynamic> json) {
    return ValueSetCompose(
      exclude: (json['exclude'] as List<dynamic>?)
          ?.map((e) => ValueSetComposeInclude.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      inactive: json['inactive'] as bool?,
      include: (json['include'] as List<dynamic>)
          .map((e) => ValueSetComposeInclude.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      lockedDate: json['lockedDate'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'exclude': exclude?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'inactive': inactive,
        'include': include.map((e) => e.toJson()).toList(),
        'lockedDate': lockedDate,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ValueSetCompose copyWith({
    List<ValueSetComposeInclude>? exclude,
    List<Extension>? fhirExtension,
    String? id,
    bool? inactive,
    List<ValueSetComposeInclude>? include,
    String? lockedDate,
    List<Extension>? modifierExtension,
  }) {
    return ValueSetCompose(
      exclude: exclude ?? this.exclude,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      inactive: inactive ?? this.inactive,
      include: include ?? this.include,
      lockedDate: lockedDate ?? this.lockedDate,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
