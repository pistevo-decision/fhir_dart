part of '../fhir_dart.dart';

 /// Balance by Benefit Category.
class ExplanationOfBenefitBenefitBalance extends BackboneElement implements FhirResource {
   /// Benefit classification
   /// Code to identify the general type of benefits under which products and services are provided.
   /// Examples include Medical Care, Periodontics, Renal Dialysis, Vision Coverage.
  final CodeableConcept category;
   /// Description of the benefit or services covered
   /// A richer description of the benefit or services covered.
   /// For example, 'DENT2 covers 100% of basic, 50% of major but excludes Ortho, Implants and Cosmetic services'.
  final String? description;
   /// Excluded from the plan
   /// True if the indicated class of service is excluded from the plan, missing or False indicates the product or service is included in the coverage.
  final bool? excluded;
   /// Benefit Summary
   /// Benefits Used to date.
  final List<ExplanationOfBenefitBenefitBalanceFinancial>? financial;
   /// Short name for the benefit
   /// A short name or tag for the benefit.
   /// For example: MED01, or DENT2.
  final String? name;
   /// In or out of network
   /// Is a flag to indicate whether the benefits refer to in-network providers or out-of-network providers.
  final CodeableConcept? network;
   /// Annual or lifetime
   /// The term or period of the values such as 'maximum lifetime benefit' or 'maximum annual visits'.
  final CodeableConcept? term;
   /// Individual or family
   /// Indicates if the benefits apply to an individual or to the family.
  final CodeableConcept? unit;
  ExplanationOfBenefitBenefitBalance({
    required this.category,
    this.description,
    this.excluded,
    super.fhirExtension,
    this.financial,
    super.id,
    super.modifierExtension,
    this.name,
    this.network,
    this.term,
    this.unit,
  });
  
  @override
  factory ExplanationOfBenefitBenefitBalance.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitBenefitBalance(
      category: CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      description: json['description'] as String?,
      excluded: json['excluded'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      financial: (json['financial'] as List<dynamic>?)?.map((e) => ExplanationOfBenefitBenefitBalanceFinancial.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String?,
      network: json['network'] != null ? CodeableConcept.fromJson(json['network'] as Map<String, dynamic>) : null,
      term: json['term'] != null ? CodeableConcept.fromJson(json['term'] as Map<String, dynamic>) : null,
      unit: json['unit'] != null ? CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'category': category.toJson(),
      'description': description,
      'excluded': excluded,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'financial': financial?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'network': network?.toJson(),
      'term': term?.toJson(),
      'unit': unit?.toJson(),
    };
  
  @override
  ExplanationOfBenefitBenefitBalance copyWith({
    CodeableConcept? category,
    String? description,
    bool? excluded,
    List<Extension>? fhirExtension,
    List<ExplanationOfBenefitBenefitBalanceFinancial>? financial,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    CodeableConcept? network,
    CodeableConcept? term,
    CodeableConcept? unit,
  }) {
    return ExplanationOfBenefitBenefitBalance(
      category: category ?? this.category,
      description: description ?? this.description,
      excluded: excluded ?? this.excluded,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      financial: financial ?? this.financial,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      network: network ?? this.network,
      term: term ?? this.term,
      unit: unit ?? this.unit,
    );
  }
}
