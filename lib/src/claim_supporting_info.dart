part of '../fhir_dart.dart';

 /// Supporting information
 /// Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues.
 /// Often there are multiple jurisdiction specific valuesets which are required.
class ClaimSupportingInfo extends BackboneElement implements FhirResource {
   /// Classification of the supplied information
   /// The general class of the information supplied: information; exception; accident, employment; onset, etc.
   /// This may contain a category for the local bill type codes.
  final CodeableConcept category;
   /// Type of information
   /// System and code pertaining to the specific information regarding special conditions relating to the setting, treatment or patient  for which care is sought.
  final CodeableConcept? code;
   /// Explanation for the information
   /// Provides the reason in the situation where a reason code is required in addition to the content.
   /// For example: the reason for the additional stay, or why a tooth is  missing.
  final CodeableConcept? reason;
   /// Information instance identifier
   /// A number to uniquely identify supporting information entries.
  final int sequence;
   /// When it occurred
   /// The date when or period to which this information refers.
  final String? timingDate;
   /// When it occurred
   /// The date when or period to which this information refers.
  final Period? timingPeriod;
   /// Data to be provided
   /// Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
   /// Could be used to provide references to other resources, document. For example could contain a PDF in an Attachment of the Police Report for an Accident.
  final Attachment? valueAttachment;
   /// Data to be provided
   /// Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
   /// Could be used to provide references to other resources, document. For example could contain a PDF in an Attachment of the Police Report for an Accident.
  final bool? valueBoolean;
   /// Data to be provided
   /// Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
   /// Could be used to provide references to other resources, document. For example could contain a PDF in an Attachment of the Police Report for an Accident.
  final Quantity? valueQuantity;
   /// Data to be provided
   /// Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
   /// Could be used to provide references to other resources, document. For example could contain a PDF in an Attachment of the Police Report for an Accident.
  final Reference? valueReference;
   /// Data to be provided
   /// Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
   /// Could be used to provide references to other resources, document. For example could contain a PDF in an Attachment of the Police Report for an Accident.
  final String? valueString;
  ClaimSupportingInfo({
    required this.category,
    this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.reason,
    required this.sequence,
    this.timingDate,
    this.timingPeriod,
    this.valueAttachment,
    this.valueBoolean,
    this.valueQuantity,
    this.valueReference,
    this.valueString,
  });
  
  @override
  factory ClaimSupportingInfo.fromJson(Map<String, dynamic> json) {
    return ClaimSupportingInfo(
      category: CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      code: json['code'] != null ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      reason: json['reason'] != null ? CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>) : null,
      sequence: json['sequence'] as int,
      timingDate: json['timingDate'] as String?,
      timingPeriod: json['timingPeriod'] != null ? Period.fromJson(json['timingPeriod'] as Map<String, dynamic>) : null,
      valueAttachment: json['valueAttachment'] != null ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>) : null,
      valueBoolean: json['valueBoolean'] as bool?,
      valueQuantity: json['valueQuantity'] != null ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>) : null,
      valueReference: json['valueReference'] != null ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>) : null,
      valueString: json['valueString'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'category': category.toJson(),
      'code': code?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'reason': reason?.toJson(),
      'sequence': sequence,
      'timingDate': timingDate,
      'timingPeriod': timingPeriod?.toJson(),
      'valueAttachment': valueAttachment?.toJson(),
      'valueBoolean': valueBoolean,
      'valueQuantity': valueQuantity?.toJson(),
      'valueReference': valueReference?.toJson(),
      'valueString': valueString,
    };
  
  @override
  ClaimSupportingInfo copyWith({
    CodeableConcept? category,
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? reason,
    int? sequence,
    String? timingDate,
    Period? timingPeriod,
    Attachment? valueAttachment,
    bool? valueBoolean,
    Quantity? valueQuantity,
    Reference? valueReference,
    String? valueString,
  }) {
    return ClaimSupportingInfo(
      category: category ?? this.category,
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      reason: reason ?? this.reason,
      sequence: sequence ?? this.sequence,
      timingDate: timingDate ?? this.timingDate,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueReference: valueReference ?? this.valueReference,
      valueString: valueString ?? this.valueString,
    );
  }
}
