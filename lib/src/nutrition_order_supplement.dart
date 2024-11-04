part of '../fhir_dart.dart';

 /// Supplement components
 /// Oral nutritional products given in order to add further nutritional value to the patient's diet.
class NutritionOrderSupplement extends BackboneElement implements FhirResource {
   /// Instructions or additional information about the oral supplement
   /// Free text or additional instructions or information pertaining to the oral supplement.
   /// Free text dosage instructions can be used for cases where the instructions are too complex to code.
  final String? instruction;
   /// Product or brand name of the nutritional supplement
   /// The product or brand name of the nutritional supplement such as "Acme Protein Shake".
  final String? productName;
   /// Amount of the nutritional supplement
   /// The amount of the nutritional supplement to be given.
  final Quantity? quantity;
   /// Scheduled frequency of supplement
   /// The time period and frequency at which the supplement(s) should be given.  The supplement should be given for the combination of all schedules if more than one schedule is present.
  final List<Timing>? schedule;
   /// Type of supplement product requested
   /// The kind of nutritional supplement product required such as a high protein or pediatric clear liquid supplement.
  final CodeableConcept? type;
  NutritionOrderSupplement({
    super.fhirExtension,
    super.id,
    this.instruction,
    super.modifierExtension,
    this.productName,
    this.quantity,
    this.schedule,
    this.type,
  });
  
  @override
  factory NutritionOrderSupplement.fromJson(Map<String, dynamic> json) {
    return NutritionOrderSupplement(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      instruction: json['instruction'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      productName: json['productName'] as String?,
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
      schedule: (json['schedule'] as List<dynamic>?)?.map((e) => Timing.fromJson(e as Map<String, dynamic>)).toList(),
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'instruction': instruction,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'productName': productName,
      'quantity': quantity?.toJson(),
      'schedule': schedule?.map((e) => e.toJson()).toList(),
      'type': type?.toJson(),
    };
  
  @override
  NutritionOrderSupplement copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? instruction,
    List<Extension>? modifierExtension,
    String? productName,
    Quantity? quantity,
    List<Timing>? schedule,
    CodeableConcept? type,
  }) {
    return NutritionOrderSupplement(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      instruction: instruction ?? this.instruction,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productName: productName ?? this.productName,
      quantity: quantity ?? this.quantity,
      schedule: schedule ?? this.schedule,
      type: type ?? this.type,
    );
  }
}
