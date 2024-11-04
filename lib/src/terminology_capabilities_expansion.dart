part of '../fhir_dart.dart';

/// Information about the [ValueSet/$expand](valueset-operation-expand.html) operation.
class TerminologyCapabilitiesExpansion extends BackboneElement
    implements FhirResource {
  /// Whether the server can return nested value sets.
  final bool? hierarchical;

  /// Allow request for incomplete expansions?
  final bool? incomplete;

  /// Whether the server supports paging on expansion.
  final bool? paging;

  /// Supported expansion parameter.
  final List<TerminologyCapabilitiesExpansionParameter>? parameter;

  /// Documentation about text searching works.
  /// This documentation should cover things like case sensitivity,  use of punctuation if not ignored, what wild cards are supported (if any), whether text is starts with or contains, and whether word order matters.
  final String? textFilter;
  TerminologyCapabilitiesExpansion({
    super.fhirExtension,
    this.hierarchical,
    super.id,
    this.incomplete,
    super.modifierExtension,
    this.paging,
    this.parameter,
    this.textFilter,
  });

  @override
  factory TerminologyCapabilitiesExpansion.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesExpansion(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      hierarchical: json['hierarchical'] as bool?,
      id: json['id'] as String?,
      incomplete: json['incomplete'] as bool?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      paging: json['paging'] as bool?,
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map((e) => TerminologyCapabilitiesExpansionParameter.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      textFilter: json['textFilter'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'hierarchical': hierarchical,
        'id': id,
        'incomplete': incomplete,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'paging': paging,
        'parameter': parameter?.map((e) => e.toJson()).toList(),
        'textFilter': textFilter,
      };

  @override
  TerminologyCapabilitiesExpansion copyWith({
    List<Extension>? fhirExtension,
    bool? hierarchical,
    String? id,
    bool? incomplete,
    List<Extension>? modifierExtension,
    bool? paging,
    List<TerminologyCapabilitiesExpansionParameter>? parameter,
    String? textFilter,
  }) {
    return TerminologyCapabilitiesExpansion(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      hierarchical: hierarchical ?? this.hierarchical,
      id: id ?? this.id,
      incomplete: incomplete ?? this.incomplete,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      paging: paging ?? this.paging,
      parameter: parameter ?? this.parameter,
      textFilter: textFilter ?? this.textFilter,
    );
  }
}
