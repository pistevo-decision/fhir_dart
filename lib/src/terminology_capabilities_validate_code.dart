part of '../fhir_dart.dart';

 /// Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
class TerminologyCapabilitiesValidateCode extends BackboneElement implements FhirResource {
   /// Whether translations are validated.
  final bool translations;
  TerminologyCapabilitiesValidateCode({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.translations,
  });
  
  @override
  factory TerminologyCapabilitiesValidateCode.fromJson(Map<String, dynamic> json) {
    return TerminologyCapabilitiesValidateCode(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      translations: json['translations'] as bool,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'translations': translations,
    };
  
  @override
  TerminologyCapabilitiesValidateCode copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    bool? translations,
  }) {
    return TerminologyCapabilitiesValidateCode(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      translations: translations ?? this.translations,
    );
  }
}
