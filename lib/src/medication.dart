part of '../fhir_dart.dart';

 /// This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.
class Medication extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Medication';
   /// Amount of drug in package
   /// Specific amount of the drug in the packaged product.  For example, when specifying a product that has the same strength (For example, Insulin glargine 100 unit per mL solution for injection), this attribute provides additional clarification of the package amount (For example, 3 mL, 10mL, etc.).
  final Ratio? amount;
   /// Details about packaged medications
   /// Information that only applies to packages (not products).
  final MedicationBatch? batch;
   /// Codes that identify this medication
   /// A code (or set of codes) that specify this medication, or a textual description if no code is available. Usage note: This could be a standard medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or local formulary code, optionally with translations to other code systems.
   /// Depending on the context of use, the code that was actually selected by the user (prescriber, dispenser, etc.) will have the coding.userSelected set to true.  As described in the coding datatype: "A coding may be marked as a "userSelected" if a user selected the particular coded value in a user interface (e.g. the user selects an item in a pick-list). If a user selected coding exists, it is the preferred choice for performing translations etc. Other codes can only be literal translations to alternative code systems, or codes at a lower level of granularity (e.g. a generic code for a vendor-specific primary one).
  final CodeableConcept? code;
   /// powder | tablets | capsule +
   /// Describes the form of the item.  Powder; tablets; capsule.
   /// When Medication is referenced from MedicationRequest, this is the ordered form.  When Medication is referenced within MedicationDispense, this is the dispensed form.  When Medication is referenced within MedicationAdministration, this is administered form.
  final CodeableConcept? form;
   /// Business identifier for this medication.
   /// The serial number could be included as an identifier.
  final List<Identifier>? identifier;
   /// Active or inactive ingredient
   /// Identifies a particular constituent of interest in the product.
   /// The ingredients need not be a complete list.  If an ingredient is not specified, this does not indicate whether an ingredient is present or absent.  If an ingredient is specified it does not mean that all ingredients are specified.  It is possible to specify both inactive and active ingredients.
  final List<MedicationIngredient>? ingredient;
   /// Manufacturer of the item
   /// Describes the details of the manufacturer of the medication product.  This is not intended to represent the distributor of a medication product.
  final Reference? manufacturer;
   /// A code to indicate if the medication is in active use.
   /// This status is intended to identify if the medication in a local system is in active use within a drug database or inventory.  For example, a pharmacy system may create a new drug file record for a compounded product "ABC Hospital Special Cream" with an active status.  At some point in the future, it may be determined that the drug record was created with an error and the status is changed to "entered in error".   This status is not intended to specify if a medication is part of a particular formulary.  It is possible that the drug record may be referenced by multiple formularies or catalogues and each of those entries would have a separate status.
  final String? status; // Possible values: 'active', 'inactive', 'entered-in-error'
  Medication({
    this.amount,
    this.batch,
    this.code,
    super.contained,
    super.fhirExtension,
    this.form,
    super.id,
    this.identifier,
    super.implicitRules,
    this.ingredient,
    super.language,
    this.manufacturer,
    super.meta,
    super.modifierExtension,
    this.status,
    super.text,
  });
  
  @override
  factory Medication.fromJson(Map<String, dynamic> json) {
    return Medication(
      amount: json['amount'] != null ? Ratio.fromJson(json['amount'] as Map<String, dynamic>) : null,
      batch: json['batch'] != null ? MedicationBatch.fromJson(json['batch'] as Map<String, dynamic>) : null,
      code: json['code'] != null ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>) : null,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      form: json['form'] != null ? CodeableConcept.fromJson(json['form'] as Map<String, dynamic>) : null,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      ingredient: (json['ingredient'] as List<dynamic>?)?.map((e) => MedicationIngredient.fromJson(e as Map<String, dynamic>)).toList(),
      language: json['language'] as String?,
      manufacturer: json['manufacturer'] != null ? Reference.fromJson(json['manufacturer'] as Map<String, dynamic>) : null,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      status: json['status'] as String?,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'amount': amount?.toJson(),
      'batch': batch?.toJson(),
      'code': code?.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'form': form?.toJson(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'ingredient': ingredient?.map((e) => e.toJson()).toList(),
      'language': language,
      'manufacturer': manufacturer?.toJson(),
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'status': status,
      'text': text?.toJson(),
    };
  
  @override
  Medication copyWith({
    Ratio? amount,
    MedicationBatch? batch,
    CodeableConcept? code,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    CodeableConcept? form,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<MedicationIngredient>? ingredient,
    String? language,
    Reference? manufacturer,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? status,
    Narrative? text,
  }) {
    return Medication(
      amount: amount ?? this.amount,
      batch: batch ?? this.batch,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      form: form ?? this.form,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      ingredient: ingredient ?? this.ingredient,
      language: language ?? this.language,
      manufacturer: manufacturer ?? this.manufacturer,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
