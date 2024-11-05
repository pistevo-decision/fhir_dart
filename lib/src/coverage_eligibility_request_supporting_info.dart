part of '../fhir_dart.dart';

/// Supporting information
/// Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues.
/// Often there are multiple jurisdiction specific valuesets which are required.
class CoverageEligibilityRequestSupportingInfo extends BackboneElement
    implements FhirResource {
  /// Applies to all items
  /// The supporting materials are applicable for all detail items, product/servce categories and specific billing codes.
  final bool? appliesToAll;

  /// Data to be provided
  /// Additional data or information such as resources, documents, images etc. including references to the data or the actual inclusion of the data.
  /// Could be used to provide references to other resources, document. For example could contain a PDF in an Attachment of the Police Report for an Accident.
  final Reference information;

  /// Information instance identifier
  /// A number to uniquely identify supporting information entries.
  final int sequence;
  CoverageEligibilityRequestSupportingInfo({
    this.appliesToAll,
    super.fhirExtension,
    super.id,
    required this.information,
    super.modifierExtension,
    required this.sequence,
  });

  @override
  factory CoverageEligibilityRequestSupportingInfo.fromJson(
      Map<String, dynamic> json) {
    return CoverageEligibilityRequestSupportingInfo(
      appliesToAll: json['appliesToAll'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      information: Reference.fromJson(
          (json['information'] as Map).cast<String, dynamic>()),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      sequence: json['sequence'] as int,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'appliesToAll': appliesToAll,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'information': information.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'sequence': sequence,
      };

  @override
  CoverageEligibilityRequestSupportingInfo copyWith({
    bool? appliesToAll,
    List<Extension>? fhirExtension,
    String? id,
    Reference? information,
    List<Extension>? modifierExtension,
    int? sequence,
  }) {
    return CoverageEligibilityRequestSupportingInfo(
      appliesToAll: appliesToAll ?? this.appliesToAll,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      information: information ?? this.information,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
    );
  }
}
