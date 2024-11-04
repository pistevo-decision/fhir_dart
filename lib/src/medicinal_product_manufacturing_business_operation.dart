part of '../fhir_dart.dart';

/// An operation applied to the product, for manufacturing or adminsitrative purpose.
class MedicinalProductManufacturingBusinessOperation extends BackboneElement
    implements FhirResource {
  /// Regulatory authorization reference number.
  final Identifier? authorisationReferenceNumber;

  /// To indicate if this proces is commercially confidential.
  final CodeableConcept? confidentialityIndicator;

  /// Regulatory authorization date.
  final String? effectiveDate;

  /// The manufacturer or establishment associated with the process.
  final List<Reference>? manufacturer;

  /// The type of manufacturing operation.
  final CodeableConcept? operationType;

  /// A regulator which oversees the operation.
  final Reference? regulator;
  MedicinalProductManufacturingBusinessOperation({
    this.authorisationReferenceNumber,
    this.confidentialityIndicator,
    this.effectiveDate,
    super.fhirExtension,
    super.id,
    this.manufacturer,
    super.modifierExtension,
    this.operationType,
    this.regulator,
  });

  @override
  factory MedicinalProductManufacturingBusinessOperation.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductManufacturingBusinessOperation(
      authorisationReferenceNumber: json['authorisationReferenceNumber'] != null
          ? Identifier.fromJson(
              json['authorisationReferenceNumber'] as Map<String, dynamic>)
          : null,
      confidentialityIndicator: json['confidentialityIndicator'] != null
          ? CodeableConcept.fromJson(
              json['confidentialityIndicator'] as Map<String, dynamic>)
          : null,
      effectiveDate: json['effectiveDate'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      operationType: json['operationType'] != null
          ? CodeableConcept.fromJson(
              json['operationType'] as Map<String, dynamic>)
          : null,
      regulator: json['regulator'] != null
          ? Reference.fromJson(json['regulator'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'authorisationReferenceNumber': authorisationReferenceNumber?.toJson(),
        'confidentialityIndicator': confidentialityIndicator?.toJson(),
        'effectiveDate': effectiveDate,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'manufacturer': manufacturer?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'operationType': operationType?.toJson(),
        'regulator': regulator?.toJson(),
      };

  @override
  MedicinalProductManufacturingBusinessOperation copyWith({
    Identifier? authorisationReferenceNumber,
    CodeableConcept? confidentialityIndicator,
    String? effectiveDate,
    List<Extension>? fhirExtension,
    String? id,
    List<Reference>? manufacturer,
    List<Extension>? modifierExtension,
    CodeableConcept? operationType,
    Reference? regulator,
  }) {
    return MedicinalProductManufacturingBusinessOperation(
      authorisationReferenceNumber:
          authorisationReferenceNumber ?? this.authorisationReferenceNumber,
      confidentialityIndicator:
          confidentialityIndicator ?? this.confidentialityIndicator,
      effectiveDate: effectiveDate ?? this.effectiveDate,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      manufacturer: manufacturer ?? this.manufacturer,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      operationType: operationType ?? this.operationType,
      regulator: regulator ?? this.regulator,
    );
  }
}
