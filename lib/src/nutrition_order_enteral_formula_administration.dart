part of '../fhir_dart.dart';

/// Formula feeding instruction as structured data
/// Formula administration instructions as structured data.  This repeating structure allows for changing the administration rate or volume over time for both bolus and continuous feeding.  An example of this would be an instruction to increase the rate of continuous feeding every 2 hours.
/// See implementation notes below for further discussion on how to order continuous vs bolus enteral feeding using this resource.
class NutritionOrderEnteralFormulaAdministration extends BackboneElement
    implements FhirResource {
  /// The volume of formula to provide to the patient per the specified administration schedule.
  final Quantity? quantity;

  /// Speed with which the formula is provided per period of time
  /// The rate of administration of formula via a feeding pump, e.g. 60 mL per hour, according to the specified schedule.
  /// Ratio is used when the quantity value in the denominator is not "1", otherwise use Quantity. For example, the Ratio datatype is used for "200 mL/4 hrs" versus the Quantity datatype for "50 mL/hr".
  final Quantity? rateQuantity;

  /// Speed with which the formula is provided per period of time
  /// The rate of administration of formula via a feeding pump, e.g. 60 mL per hour, according to the specified schedule.
  /// Ratio is used when the quantity value in the denominator is not "1", otherwise use Quantity. For example, the Ratio datatype is used for "200 mL/4 hrs" versus the Quantity datatype for "50 mL/hr".
  final Ratio? rateRatio;

  /// Scheduled frequency of enteral feeding
  /// The time period and frequency at which the enteral formula should be delivered to the patient.
  final Timing? schedule;
  NutritionOrderEnteralFormulaAdministration({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.quantity,
    this.rateQuantity,
    this.rateRatio,
    this.schedule,
  });

  @override
  factory NutritionOrderEnteralFormulaAdministration.fromJson(
      Map<String, dynamic> json) {
    return NutritionOrderEnteralFormulaAdministration(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      rateQuantity: json['rateQuantity'] != null
          ? Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>)
          : null,
      rateRatio: json['rateRatio'] != null
          ? Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>)
          : null,
      schedule: json['schedule'] != null
          ? Timing.fromJson(json['schedule'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'quantity': quantity?.toJson(),
        'rateQuantity': rateQuantity?.toJson(),
        'rateRatio': rateRatio?.toJson(),
        'schedule': schedule?.toJson(),
      };

  @override
  NutritionOrderEnteralFormulaAdministration copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Quantity? quantity,
    Quantity? rateQuantity,
    Ratio? rateRatio,
    Timing? schedule,
  }) {
    return NutritionOrderEnteralFormulaAdministration(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      rateQuantity: rateQuantity ?? this.rateQuantity,
      rateRatio: rateRatio ?? this.rateRatio,
      schedule: schedule ?? this.schedule,
    );
  }
}
