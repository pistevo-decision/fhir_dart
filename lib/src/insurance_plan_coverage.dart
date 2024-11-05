part of '../fhir_dart.dart';

/// Coverage details
/// Details about the coverage offered by the insurance product.
class InsurancePlanCoverage extends BackboneElement implements FhirResource {
  /// List of benefits
  /// Specific benefits under this type of coverage.
  final List<InsurancePlanCoverageBenefit> benefit;

  /// What networks provide coverage
  /// Reference to the network that providing the type of coverage.
  /// Networks are represented as a hierarchy of organization resources.
  final List<Reference>? network;

  /// Type of coverage  (Medical; Dental; Mental Health; Substance Abuse; Vision; Drug; Short Term; Long Term Care; Hospice; Home Health).
  final CodeableConcept type;
  InsurancePlanCoverage({
    required this.benefit,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.network,
    required this.type,
  });

  @override
  factory InsurancePlanCoverage.fromJson(Map<String, dynamic> json) {
    return InsurancePlanCoverage(
      benefit: (json['benefit'] as List<dynamic>)
          .map((e) => InsurancePlanCoverageBenefit.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      network: (json['network'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'benefit': benefit.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'network': network?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  InsurancePlanCoverage copyWith({
    List<InsurancePlanCoverageBenefit>? benefit,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Reference>? network,
    CodeableConcept? type,
  }) {
    return InsurancePlanCoverage(
      benefit: benefit ?? this.benefit,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      network: network ?? this.network,
      type: type ?? this.type,
    );
  }
}
