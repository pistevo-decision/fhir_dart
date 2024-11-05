part of '../fhir_dart.dart';

/// Filter Properties supported.
class TerminologyCapabilitiesCodeSystemVersionFilter extends BackboneElement
    implements FhirResource {
  /// Code of the property supported.
  final String code;

  /// Operations supported for the property.
  final List<String> op;
  TerminologyCapabilitiesCodeSystemVersionFilter({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.op,
  });

  @override
  factory TerminologyCapabilitiesCodeSystemVersionFilter.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesCodeSystemVersionFilter(
      code: json['code'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      op: (json['op'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'op': op.map((e) => e).toList(),
      };

  @override
  TerminologyCapabilitiesCodeSystemVersionFilter copyWith({
    String? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<String>? op,
  }) {
    return TerminologyCapabilitiesCodeSystemVersionFilter(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      op: op ?? this.op,
    );
  }
}
