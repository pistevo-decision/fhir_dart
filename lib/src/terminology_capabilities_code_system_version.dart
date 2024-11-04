part of '../fhir_dart.dart';

/// Version of Code System supported
/// For the code system, a list of versions that are supported by the server.
/// Language translations might not be available for all codes.
class TerminologyCapabilitiesCodeSystemVersion extends BackboneElement
    implements FhirResource {
  /// Version identifier for this version
  /// For version-less code systems, there should be a single version with no identifier.
  final String? code;

  /// If compositional grammar is supported
  /// If the compositional grammar defined by the code system is supported.
  final bool? compositional;

  /// Filter Properties supported.
  final List<TerminologyCapabilitiesCodeSystemVersionFilter>? filter;

  /// If this is the default version for this code system.
  final bool? isDefault;

  /// Language Displays supported.
  final List<String>? language;

  /// Properties supported for $lookup.
  final List<String>? property;
  TerminologyCapabilitiesCodeSystemVersion({
    this.code,
    this.compositional,
    super.fhirExtension,
    this.filter,
    super.id,
    this.isDefault,
    this.language,
    super.modifierExtension,
    this.property,
  });

  @override
  factory TerminologyCapabilitiesCodeSystemVersion.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesCodeSystemVersion(
      code: json['code'] as String?,
      compositional: json['compositional'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      filter: (json['filter'] as List<dynamic>?)
          ?.map((e) => TerminologyCapabilitiesCodeSystemVersionFilter.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      isDefault: json['isDefault'] as bool?,
      language: (json['language'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'compositional': compositional,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'filter': filter?.map((e) => e.toJson()).toList(),
        'id': id,
        'isDefault': isDefault,
        'language': language?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'property': property?.map((e) => e).toList(),
      };

  @override
  TerminologyCapabilitiesCodeSystemVersion copyWith({
    String? code,
    bool? compositional,
    List<Extension>? fhirExtension,
    List<TerminologyCapabilitiesCodeSystemVersionFilter>? filter,
    String? id,
    bool? isDefault,
    List<String>? language,
    List<Extension>? modifierExtension,
    List<String>? property,
  }) {
    return TerminologyCapabilitiesCodeSystemVersion(
      code: code ?? this.code,
      compositional: compositional ?? this.compositional,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      filter: filter ?? this.filter,
      id: id ?? this.id,
      isDefault: isDefault ?? this.isDefault,
      language: language ?? this.language,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
    );
  }
}
