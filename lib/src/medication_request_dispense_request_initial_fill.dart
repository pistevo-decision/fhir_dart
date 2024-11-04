part of '../fhir_dart.dart';

 /// First fill details
 /// Indicates the quantity or duration for the first dispense of the medication.
 /// If populating this element, either the quantity or the duration must be included.
class MedicationRequestDispenseRequestInitialFill extends BackboneElement implements FhirResource {
   /// First fill duration
   /// The length of time that the first dispense is expected to last.
  final Duration? duration;
   /// First fill quantity
   /// The amount or quantity to provide as part of the first dispense.
  final Quantity? quantity;
  MedicationRequestDispenseRequestInitialFill({
    this.duration,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.quantity,
  });
  
  @override
  factory MedicationRequestDispenseRequestInitialFill.fromJson(Map<String, dynamic> json) {
    return MedicationRequestDispenseRequestInitialFill(
      duration: json['duration'] != null ? Duration.fromJson(json['duration'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'duration': duration?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'quantity': quantity?.toJson(),
    };
  
  @override
  MedicationRequestDispenseRequestInitialFill copyWith({
    Duration? duration,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Quantity? quantity,
  }) {
    return MedicationRequestDispenseRequestInitialFill(
      duration: duration ?? this.duration,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
    );
  }
}
