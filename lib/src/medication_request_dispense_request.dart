part of '../fhir_dart.dart';

/// Medication supply authorization
/// Indicates the specific details for the dispense or medication supply part of a medication request (also known as a Medication Prescription or Medication Order).  Note that this information is not always sent with the order.  There may be in some settings (e.g. hospitals) institutional or system support for completing the dispense details in the pharmacy department.
class MedicationRequestDispenseRequest extends BackboneElement
    implements FhirResource {
  /// Minimum period of time between dispenses
  /// The minimum period of time that must occur between dispenses of the medication.
  final Duration? dispenseInterval;

  /// Number of days supply per dispense
  /// Identifies the period time over which the supplied product is expected to be used, or the length of time the dispense is expected to last.
  /// In some situations, this attribute may be used instead of quantity to identify the amount supplied by how long it is expected to last, rather than the physical quantity issued, e.g. 90 days supply of medication (based on an ordered dosage). When possible, it is always better to specify quantity, as this tends to be more precise. expectedSupplyDuration will always be an estimate that can be influenced by external factors.
  final Duration? expectedSupplyDuration;

  /// First fill details
  /// Indicates the quantity or duration for the first dispense of the medication.
  /// If populating this element, either the quantity or the duration must be included.
  final MedicationRequestDispenseRequestInitialFill? initialFill;

  /// Number of refills authorized
  /// An integer indicating the number of times, in addition to the original dispense, (aka refills or repeats) that the patient can receive the prescribed medication. Usage Notes: This integer does not include the original order dispense. This means that if an order indicates dispense 30 tablets plus "3 repeats", then the order can be dispensed a total of 4 times and the patient can receive a total of 120 tablets.  A prescriber may explicitly say that zero refills are permitted after the initial dispense.
  /// If displaying "number of authorized fills", add 1 to this number.
  final int? numberOfRepeatsAllowed;

  /// Intended dispenser
  /// Indicates the intended dispensing Organization specified by the prescriber.
  final Reference? performer;

  /// Amount of medication to supply per dispense
  /// The amount that is to be dispensed for one fill.
  final Quantity? quantity;

  /// Time period supply is authorized for
  /// This indicates the validity period of a prescription (stale dating the Prescription).
  /// It reflects the prescribers' perspective for the validity of the prescription. Dispenses must not be made against the prescription outside of this period. The lower-bound of the Dispensing Window signifies the earliest date that the prescription can be filled for the first time. If an upper-bound is not specified then the Prescription is open-ended or will default to a stale-date based on regulations.
  final Period? validityPeriod;
  MedicationRequestDispenseRequest({
    this.dispenseInterval,
    this.expectedSupplyDuration,
    super.fhirExtension,
    super.id,
    this.initialFill,
    super.modifierExtension,
    this.numberOfRepeatsAllowed,
    this.performer,
    this.quantity,
    this.validityPeriod,
  });

  @override
  factory MedicationRequestDispenseRequest.fromJson(Map<String, dynamic> json) {
    return MedicationRequestDispenseRequest(
      dispenseInterval: json['dispenseInterval'] != null
          ? Duration.fromJson(
              (json['dispenseInterval'] as Map).cast<String, dynamic>())
          : null,
      expectedSupplyDuration: json['expectedSupplyDuration'] != null
          ? Duration.fromJson(
              (json['expectedSupplyDuration'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      initialFill: json['initialFill'] != null
          ? MedicationRequestDispenseRequestInitialFill.fromJson(
              (json['initialFill'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      numberOfRepeatsAllowed: json['numberOfRepeatsAllowed'] as int?,
      performer: json['performer'] != null
          ? Reference.fromJson(
              (json['performer'] as Map).cast<String, dynamic>())
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson((json['quantity'] as Map).cast<String, dynamic>())
          : null,
      validityPeriod: json['validityPeriod'] != null
          ? Period.fromJson(
              (json['validityPeriod'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'dispenseInterval': dispenseInterval?.toJson(),
        'expectedSupplyDuration': expectedSupplyDuration?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'initialFill': initialFill?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'numberOfRepeatsAllowed': numberOfRepeatsAllowed,
        'performer': performer?.toJson(),
        'quantity': quantity?.toJson(),
        'validityPeriod': validityPeriod?.toJson(),
      };

  @override
  MedicationRequestDispenseRequest copyWith({
    Duration? dispenseInterval,
    Duration? expectedSupplyDuration,
    List<Extension>? fhirExtension,
    String? id,
    MedicationRequestDispenseRequestInitialFill? initialFill,
    List<Extension>? modifierExtension,
    int? numberOfRepeatsAllowed,
    Reference? performer,
    Quantity? quantity,
    Period? validityPeriod,
  }) {
    return MedicationRequestDispenseRequest(
      dispenseInterval: dispenseInterval ?? this.dispenseInterval,
      expectedSupplyDuration:
          expectedSupplyDuration ?? this.expectedSupplyDuration,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      initialFill: initialFill ?? this.initialFill,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      numberOfRepeatsAllowed:
          numberOfRepeatsAllowed ?? this.numberOfRepeatsAllowed,
      performer: performer ?? this.performer,
      quantity: quantity ?? this.quantity,
      validityPeriod: validityPeriod ?? this.validityPeriod,
    );
  }
}
