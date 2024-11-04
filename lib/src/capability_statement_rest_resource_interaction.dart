part of '../fhir_dart.dart';

 /// What operations are supported?
 /// Identifies a restful operation supported by the solution.
 /// In general, a Resource will only appear in a CapabilityStatement if the server actually has some capabilities - e.g. there is at least one interaction supported. However interactions can be omitted to support summarization (_summary = true).
class CapabilityStatementRestResourceInteraction extends BackboneElement implements FhirResource {
   /// Coded identifier of the operation, supported by the system resource.
  final String code; // Possible values: 'read', 'vread', 'update', 'patch', 'delete', 'history-instance', 'history-type', 'create', 'search-type'
   /// Anything special about operation behavior
   /// Guidance specific to the implementation of this operation, such as 'delete is a logical delete' or 'updates are only allowed with version id' or 'creates permitted from pre-authorized certificates only'.
  final String? documentation;
  CapabilityStatementRestResourceInteraction({
    required this.code,
    this.documentation,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory CapabilityStatementRestResourceInteraction.fromJson(Map<String, dynamic> json) {
    return CapabilityStatementRestResourceInteraction(
      code: json['code'] as String,
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code,
      'documentation': documentation,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  CapabilityStatementRestResourceInteraction copyWith({
    String? code,
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return CapabilityStatementRestResourceInteraction(
      code: code ?? this.code,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
