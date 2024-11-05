part of '../fhir_dart.dart';

/// Information about a medication that is used to support knowledge.
class MedicationKnowledge extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'MedicationKnowledge';

  /// Guidelines for administration of the medication
  /// Guidelines for the administration of the medication.
  final List<MedicationKnowledgeAdministrationGuidelines>?
      administrationGuidelines;

  /// Amount of drug in package
  /// Specific amount of the drug in the packaged product.  For example, when specifying a product that has the same strength (For example, Insulin glargine 100 unit per mL solution for injection), this attribute provides additional clarification of the package amount (For example, 3 mL, 10mL, etc.).
  /// This is the quantity of medication in a package.  To specify the strength of the medication, the Ingredient.strength attribute is used.
  final Quantity? amount;

  /// A medication resource that is associated with this medication
  /// Associated or related medications.  For example, if the medication is a branded product (e.g. Crestor), this is the Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication (e.g. Rosuvastatin), this would link to a branded product (e.g. Crestor).
  final List<Reference>? associatedMedication;

  /// Code that identifies this medication
  /// A code that specifies this medication, or a textual description if no code is available. Usage note: This could be a standard medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or local formulary code, optionally with translations to other code systems.
  /// Depending on the context of use, the code that was actually selected by the user (prescriber, dispenser, etc.) will have the coding.userSelected set to true.  As described in the coding datatype: "A coding may be marked as a "userSelected" if a user selected the particular coded value in a user interface (e.g. the user selects an item in a pick-list). If a user selected coding exists, it is the preferred choice for performing translations etc. Other codes can only be literal translations to alternative code systems, or codes at a lower level of granularity (e.g. a generic code for a vendor-specific primary one).
  final CodeableConcept? code;

  /// Potential clinical issue with or between medication(s) (for example, drug-drug interaction, drug-disease contraindication, drug-allergy interaction, etc.).
  final List<Reference>? contraindication;

  /// The pricing of the medication
  /// The price of the medication.
  final List<MedicationKnowledgeCost>? cost;

  /// powder | tablets | capsule +
  /// Describes the form of the item.  Powder; tablets; capsule.
  /// When Medication is referenced from MedicationRequest, this is the ordered form.  When Medication is referenced within MedicationDispense, this is the dispensed form.  When Medication is referenced within MedicationAdministration, this is administered form.
  final CodeableConcept? doseForm;

  /// Specifies descriptive properties of the medicine, such as color, shape, imprints, etc.
  final List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic;

  /// Active or inactive ingredient
  /// Identifies a particular constituent of interest in the product.
  final List<MedicationKnowledgeIngredient>? ingredient;

  /// The intended or approved route of administration.
  final List<CodeableConcept>? intendedRoute;

  /// The time course of drug absorption, distribution, metabolism and excretion of a medication from the body.
  final List<MedicationKnowledgeKinetics>? kinetics;

  /// Manufacturer of the item
  /// Describes the details of the manufacturer of the medication product.  This is not intended to represent the distributor of a medication product.
  final Reference? manufacturer;

  /// Categorization of the medication within a formulary or classification system.
  final List<MedicationKnowledgeMedicineClassification>? medicineClassification;

  /// Program under which a medication is reviewed
  /// The program under which the medication is reviewed.
  final List<MedicationKnowledgeMonitoringProgram>? monitoringProgram;

  /// Associated documentation about the medication.
  final List<MedicationKnowledgeMonograph>? monograph;

  /// Details about packaged medications
  /// Information that only applies to packages (not products).
  final MedicationKnowledgePackaging? packaging;

  /// The instructions for preparing the medication.
  final String? preparationInstruction;

  /// Category of the medication or product (e.g. branded product, therapeutic moeity, generic product, innovator product, etc.).
  final List<CodeableConcept>? productType;

  /// Regulatory information about a medication.
  final List<MedicationKnowledgeRegulatory>? regulatory;

  /// Associated or related medication information
  /// Associated or related knowledge about a medication.
  final List<MedicationKnowledgeRelatedMedicationKnowledge>?
      relatedMedicationKnowledge;

  /// A code to indicate if the medication is in active use.  The status refers to the validity about the information of the medication and not to its medicinal properties.
  /// This status is intended to identify if the medication in a local system is in active use within a drug database or inventory.  For example, a pharmacy system may create a new drug file record for a compounded product "ABC Hospital Special Cream" with an active status.  At some point in the future, it may be determined that the drug record was created with an error and the status is changed to "entered in error".   This status is not intended to specify if a medication is part of a particular formulary.  It is possible that the drug record may be referenced by multiple formularies or catalogues and each of those entries would have a separate status.
  final String?
      status; // Possible values: 'active', 'inactive', 'entered-in-error'
  /// Additional names for a medication, for example, the name(s) given to a medication in different countries.  For example, acetaminophen and paracetamol or salbutamol and albuterol.
  final List<String>? synonym;
  MedicationKnowledge({
    this.administrationGuidelines,
    this.amount,
    this.associatedMedication,
    this.code,
    super.contained,
    this.contraindication,
    this.cost,
    this.doseForm,
    this.drugCharacteristic,
    super.fhirExtension,
    super.id,
    super.implicitRules,
    this.ingredient,
    this.intendedRoute,
    this.kinetics,
    super.language,
    this.manufacturer,
    this.medicineClassification,
    super.meta,
    super.modifierExtension,
    this.monitoringProgram,
    this.monograph,
    this.packaging,
    this.preparationInstruction,
    this.productType,
    this.regulatory,
    this.relatedMedicationKnowledge,
    this.status,
    this.synonym,
    super.text,
  });

  @override
  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledge(
      administrationGuidelines:
          (json['administrationGuidelines'] as List<dynamic>?)
              ?.map((e) => MedicationKnowledgeAdministrationGuidelines.fromJson(
                  (e as Map).cast<String, dynamic>()))
              .toList(),
      amount: json['amount'] != null
          ? Quantity.fromJson((json['amount'] as Map).cast<String, dynamic>())
          : null,
      associatedMedication: (json['associatedMedication'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contraindication: (json['contraindication'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      cost: (json['cost'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeCost.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      doseForm: json['doseForm'] != null
          ? CodeableConcept.fromJson(
              (json['doseForm'] as Map).cast<String, dynamic>())
          : null,
      drugCharacteristic: (json['drugCharacteristic'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeDrugCharacteristic.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeIngredient.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      intendedRoute: (json['intendedRoute'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      kinetics: (json['kinetics'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeKinetics.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      manufacturer: json['manufacturer'] != null
          ? Reference.fromJson(
              (json['manufacturer'] as Map).cast<String, dynamic>())
          : null,
      medicineClassification: (json['medicineClassification'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeMedicineClassification.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      monitoringProgram: (json['monitoringProgram'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeMonitoringProgram.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      monograph: (json['monograph'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeMonograph.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      packaging: json['packaging'] != null
          ? MedicationKnowledgePackaging.fromJson(
              (json['packaging'] as Map).cast<String, dynamic>())
          : null,
      preparationInstruction: json['preparationInstruction'] as String?,
      productType: (json['productType'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      regulatory: (json['regulatory'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeRegulatory.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      relatedMedicationKnowledge: (json['relatedMedicationKnowledge']
              as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String?,
      synonym:
          (json['synonym'] as List<dynamic>?)?.map((e) => e as String).toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'administrationGuidelines':
            administrationGuidelines?.map((e) => e.toJson()).toList(),
        'amount': amount?.toJson(),
        'associatedMedication':
            associatedMedication?.map((e) => e.toJson()).toList(),
        'code': code?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'contraindication': contraindication?.map((e) => e.toJson()).toList(),
        'cost': cost?.map((e) => e.toJson()).toList(),
        'doseForm': doseForm?.toJson(),
        'drugCharacteristic':
            drugCharacteristic?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'implicitRules': implicitRules,
        'ingredient': ingredient?.map((e) => e.toJson()).toList(),
        'intendedRoute': intendedRoute?.map((e) => e.toJson()).toList(),
        'kinetics': kinetics?.map((e) => e.toJson()).toList(),
        'language': language,
        'manufacturer': manufacturer?.toJson(),
        'medicineClassification':
            medicineClassification?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'monitoringProgram': monitoringProgram?.map((e) => e.toJson()).toList(),
        'monograph': monograph?.map((e) => e.toJson()).toList(),
        'packaging': packaging?.toJson(),
        'preparationInstruction': preparationInstruction,
        'productType': productType?.map((e) => e.toJson()).toList(),
        'regulatory': regulatory?.map((e) => e.toJson()).toList(),
        'relatedMedicationKnowledge':
            relatedMedicationKnowledge?.map((e) => e.toJson()).toList(),
        'status': status,
        'synonym': synonym?.map((e) => e).toList(),
        'text': text?.toJson(),
      };

  @override
  MedicationKnowledge copyWith({
    List<MedicationKnowledgeAdministrationGuidelines>? administrationGuidelines,
    Quantity? amount,
    List<Reference>? associatedMedication,
    CodeableConcept? code,
    List<Resource>? contained,
    List<Reference>? contraindication,
    List<MedicationKnowledgeCost>? cost,
    CodeableConcept? doseForm,
    List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic,
    List<Extension>? fhirExtension,
    String? id,
    String? implicitRules,
    List<MedicationKnowledgeIngredient>? ingredient,
    List<CodeableConcept>? intendedRoute,
    List<MedicationKnowledgeKinetics>? kinetics,
    String? language,
    Reference? manufacturer,
    List<MedicationKnowledgeMedicineClassification>? medicineClassification,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<MedicationKnowledgeMonitoringProgram>? monitoringProgram,
    List<MedicationKnowledgeMonograph>? monograph,
    MedicationKnowledgePackaging? packaging,
    String? preparationInstruction,
    List<CodeableConcept>? productType,
    List<MedicationKnowledgeRegulatory>? regulatory,
    List<MedicationKnowledgeRelatedMedicationKnowledge>?
        relatedMedicationKnowledge,
    String? status,
    List<String>? synonym,
    Narrative? text,
  }) {
    return MedicationKnowledge(
      administrationGuidelines:
          administrationGuidelines ?? this.administrationGuidelines,
      amount: amount ?? this.amount,
      associatedMedication: associatedMedication ?? this.associatedMedication,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      contraindication: contraindication ?? this.contraindication,
      cost: cost ?? this.cost,
      doseForm: doseForm ?? this.doseForm,
      drugCharacteristic: drugCharacteristic ?? this.drugCharacteristic,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      ingredient: ingredient ?? this.ingredient,
      intendedRoute: intendedRoute ?? this.intendedRoute,
      kinetics: kinetics ?? this.kinetics,
      language: language ?? this.language,
      manufacturer: manufacturer ?? this.manufacturer,
      medicineClassification:
          medicineClassification ?? this.medicineClassification,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      monitoringProgram: monitoringProgram ?? this.monitoringProgram,
      monograph: monograph ?? this.monograph,
      packaging: packaging ?? this.packaging,
      preparationInstruction:
          preparationInstruction ?? this.preparationInstruction,
      productType: productType ?? this.productType,
      regulatory: regulatory ?? this.regulatory,
      relatedMedicationKnowledge:
          relatedMedicationKnowledge ?? this.relatedMedicationKnowledge,
      status: status ?? this.status,
      synonym: synonym ?? this.synonym,
      text: text ?? this.text,
    );
  }
}
