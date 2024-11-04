part of '../fhir_dart.dart';

 /// Base StructureDefinition for MarketingStatus Type: The marketing status describes the date when a medicinal product is actually put on the market or the date as of which it is no longer available.
class MarketingStatus extends BackboneElement implements FhirResource {
   /// The country in which the marketing authorisation has been granted shall be specified It should be specified using the ISO 3166 ‑ 1 alpha-2 code elements.
  final CodeableConcept country;
   /// The date when the Medicinal Product is placed on the market by the Marketing Authorisation Holder (or where applicable, the manufacturer/distributor) in a country and/or jurisdiction shall be provided A complete date consisting of day, month and year shall be specified using the ISO 8601 date format NOTE “Placed on the market” refers to the release of the Medicinal Product into the distribution chain.
  final Period dateRange;
   /// Where a Medicines Regulatory Agency has granted a marketing authorisation for which specific provisions within a jurisdiction apply, the jurisdiction can be specified using an appropriate controlled terminology The controlled term and the controlled term identifier shall be specified.
  final CodeableConcept? jurisdiction;
   /// The date when the Medicinal Product is placed on the market by the Marketing Authorisation Holder (or where applicable, the manufacturer/distributor) in a country and/or jurisdiction shall be provided A complete date consisting of day, month and year shall be specified using the ISO 8601 date format NOTE “Placed on the market” refers to the release of the Medicinal Product into the distribution chain.
  final String? restoreDate;
   /// This attribute provides information on the status of the marketing of the medicinal product See ISO/TS 20443 for more information and examples.
  final CodeableConcept status;
  MarketingStatus({
    required this.country,
    required this.dateRange,
    super.fhirExtension,
    super.id,
    this.jurisdiction,
    super.modifierExtension,
    this.restoreDate,
    required this.status,
  });
  
  @override
  factory MarketingStatus.fromJson(Map<String, dynamic> json) {
    return MarketingStatus(
      country: CodeableConcept.fromJson(json['country'] as Map<String, dynamic>),
      dateRange: Period.fromJson(json['dateRange'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      jurisdiction: json['jurisdiction'] != null ? CodeableConcept.fromJson(json['jurisdiction'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      restoreDate: json['restoreDate'] as String?,
      status: CodeableConcept.fromJson(json['status'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'country': country.toJson(),
      'dateRange': dateRange.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'jurisdiction': jurisdiction?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'restoreDate': restoreDate,
      'status': status.toJson(),
    };
  
  @override
  MarketingStatus copyWith({
    CodeableConcept? country,
    Period? dateRange,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? jurisdiction,
    List<Extension>? modifierExtension,
    String? restoreDate,
    CodeableConcept? status,
  }) {
    return MarketingStatus(
      country: country ?? this.country,
      dateRange: dateRange ?? this.dateRange,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      restoreDate: restoreDate ?? this.restoreDate,
      status: status ?? this.status,
    );
  }
}
