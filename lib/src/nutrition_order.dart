part of '../fhir_dart.dart';

/// Referenced by an Order Request (workflow).
/// A request to supply a diet, formula feeding (enteral) or oral nutritional supplement to a patient/resident.
class NutritionOrder extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'NutritionOrder';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// List of the patient's food and nutrition-related allergies and intolerances
  /// A link to a record of allergies or intolerances  which should be included in the nutrition order.
  /// Information on a patient's food allergies and intolerances to inform healthcare personnel about the type of foods that the patient shouldn't receive or consume.
  final List<Reference>? allergyIntolerance;

  /// Date and time the nutrition order was requested
  /// The date and time that this nutrition order was requested.
  final String dateTime;

  /// The encounter associated with this nutrition order
  /// An encounter that provides additional information about the healthcare context in which this request is made.
  final Reference? encounter;

  /// Enteral formula components
  /// Feeding provided through the gastrointestinal tract via a tube, catheter, or stoma that delivers nutrition distal to the oral cavity.
  final NutritionOrderEnteralFormula? enteralFormula;

  /// Order-specific modifier about the type of food that should not be given
  /// This modifier is used to convey Order-specific modifier about the type of oral food or oral fluids that should not be given. These can be derived from patient allergies, intolerances, or preferences such as No Red Meat, No Soy or No Wheat or  Gluten-Free.  While it should not be necessary to repeat allergy or intolerance information captured in the referenced AllergyIntolerance resource in the excludeFoodModifier, this element may be used to convey additional specificity related to foods that should be eliminated from the patient’s diet for any reason.  This modifier applies to the entire nutrition order inclusive of the oral diet, nutritional supplements and enteral formula feedings.
  /// Information on a patient's food allergies, intolerances and preferences to inform healthcare personnel about the type  of foods that the patient shouldn't receive or consume.
  final List<CodeableConcept>? excludeFoodModifier;

  /// Order-specific modifier about the type of food that should be given
  /// This modifier is used to convey order-specific modifiers about the type of food that should be given. These can be derived from patient allergies, intolerances, or preferences such as Halal, Vegan or Kosher. This modifier applies to the entire nutrition order inclusive of the oral diet, nutritional supplements and enteral formula feedings.
  /// Information on a patient's food preferences that inform healthcare personnel about the food that the patient should receive or consume.
  final List<CodeableConcept>? foodPreferenceModifier;

  /// Identifiers assigned to this order by the order sender or by the order receiver.
  /// The Identifier.type element can be to indicate filler vs. placer if needed.  This is explained in further detail [here](servicerequest.html#notes).
  final List<Identifier>? identifier;

  /// Instantiates protocol or definition
  /// The URL pointing to a protocol, guideline, orderset or other definition that is adhered to in whole or in part by this NutritionOrder.
  final List<String>? instantiates;

  /// Instantiates FHIR protocol or definition
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this NutritionOrder.
  /// Note: This is a business identifier, not a resource identifier (see [discussion](resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.
  final List<String>? instantiatesCanonical;

  /// Instantiates external protocol or definition
  /// The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this NutritionOrder.
  /// This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.
  final List<String>? instantiatesUri;

  /// Indicates the level of authority/intentionality associated with the NutrionOrder and where the request fits into the workflow chain.
  /// When resources map to this element, they are free to define as many codes as necessary to cover their space and will map to "proposal, plan or order".  Can have multiple codes that map to one of these.  E.g. "original order", "encoded order", "reflex order" would all map to "order".  Expectation is that the set of codes is mutually exclusive or a strict all-encompassing hierarchy.
  final String
      intent; // Possible values: 'proposal', 'plan', 'directive', 'order', 'original-order', 'reflex-order', 'filler-order', 'instance-order', 'option'
  /// Comments made about the {{title}} by the requester, performer, subject or other participants.
  /// This element SHALL NOT be used to supply free text instructions for the diet which are represented in the `.oralDiet.instruction`, `supplement.instruction`, or `enteralFormula.administrationInstruction` elements.
  final List<Annotation>? note;

  /// Oral diet components
  /// Diet given orally in contrast to enteral (tube) feeding.
  final NutritionOrderOralDiet? oralDiet;

  /// Who ordered the diet, formula or nutritional supplement
  /// The practitioner that holds legal responsibility for ordering the diet, nutritional supplement, or formula feedings.
  final Reference? orderer;

  /// The person who requires the diet, formula or nutritional supplement
  /// The person (patient) who needs the nutrition order for an oral diet, nutritional supplement and/or enteral or formula feeding.
  final Reference patient;

  /// The workflow status of the nutrition order/request.
  /// Typically the system placing the order sets the status to "requested". Thereafter, the order is maintained by the receiver that updates the status as the request is handled.  This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'draft', 'active', 'on-hold', 'revoked', 'completed', 'entered-in-error', 'unknown'
  /// Supplement components
  /// Oral nutritional products given in order to add further nutritional value to the patient's diet.
  final List<NutritionOrderSupplement>? supplement;
  NutritionOrder({
    this.allergyIntolerance,
    super.contained,
    required this.dateTime,
    this.encounter,
    this.enteralFormula,
    this.excludeFoodModifier,
    super.fhirExtension,
    this.foodPreferenceModifier,
    super.id,
    this.identifier,
    super.implicitRules,
    this.instantiates,
    this.instantiatesCanonical,
    this.instantiatesUri,
    required this.intent,
    super.language,
    super.meta,
    super.modifierExtension,
    this.note,
    this.oralDiet,
    this.orderer,
    required this.patient,
    required this.status,
    this.supplement,
    super.text,
  });

  @override
  factory NutritionOrder.fromJson(Map<String, dynamic> json) {
    return NutritionOrder(
      allergyIntolerance: (json['allergyIntolerance'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      dateTime: json['dateTime'] as String,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      enteralFormula: json['enteralFormula'] != null
          ? NutritionOrderEnteralFormula.fromJson(
              (json['enteralFormula'] as Map).cast<String, dynamic>())
          : null,
      excludeFoodModifier: (json['excludeFoodModifier'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      foodPreferenceModifier: (json['foodPreferenceModifier'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      instantiates: (json['instantiates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instantiatesCanonical: (json['instantiatesCanonical'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      instantiatesUri: (json['instantiatesUri'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      intent: json['intent'] as String,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      oralDiet: json['oralDiet'] != null
          ? NutritionOrderOralDiet.fromJson(
              (json['oralDiet'] as Map).cast<String, dynamic>())
          : null,
      orderer: json['orderer'] != null
          ? Reference.fromJson((json['orderer'] as Map).cast<String, dynamic>())
          : null,
      patient:
          Reference.fromJson((json['patient'] as Map).cast<String, dynamic>()),
      status: json['status'] as String,
      supplement: (json['supplement'] as List<dynamic>?)
          ?.map((e) => NutritionOrderSupplement.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'allergyIntolerance':
            allergyIntolerance?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'dateTime': dateTime,
        'encounter': encounter?.toJson(),
        'enteralFormula': enteralFormula?.toJson(),
        'excludeFoodModifier':
            excludeFoodModifier?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'foodPreferenceModifier':
            foodPreferenceModifier?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'instantiates': instantiates?.map((e) => e).toList(),
        'instantiatesCanonical': instantiatesCanonical?.map((e) => e).toList(),
        'instantiatesUri': instantiatesUri?.map((e) => e).toList(),
        'intent': intent,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'oralDiet': oralDiet?.toJson(),
        'orderer': orderer?.toJson(),
        'patient': patient.toJson(),
        'status': status,
        'supplement': supplement?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  NutritionOrder copyWith({
    List<Reference>? allergyIntolerance,
    List<Resource>? contained,
    String? dateTime,
    Reference? encounter,
    NutritionOrderEnteralFormula? enteralFormula,
    List<CodeableConcept>? excludeFoodModifier,
    List<Extension>? fhirExtension,
    List<CodeableConcept>? foodPreferenceModifier,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<String>? instantiates,
    List<String>? instantiatesCanonical,
    List<String>? instantiatesUri,
    String? intent,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    NutritionOrderOralDiet? oralDiet,
    Reference? orderer,
    Reference? patient,
    String? status,
    List<NutritionOrderSupplement>? supplement,
    Narrative? text,
  }) {
    return NutritionOrder(
      allergyIntolerance: allergyIntolerance ?? this.allergyIntolerance,
      contained: contained ?? this.contained,
      dateTime: dateTime ?? this.dateTime,
      encounter: encounter ?? this.encounter,
      enteralFormula: enteralFormula ?? this.enteralFormula,
      excludeFoodModifier: excludeFoodModifier ?? this.excludeFoodModifier,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      foodPreferenceModifier:
          foodPreferenceModifier ?? this.foodPreferenceModifier,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      instantiates: instantiates ?? this.instantiates,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      intent: intent ?? this.intent,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      oralDiet: oralDiet ?? this.oralDiet,
      orderer: orderer ?? this.orderer,
      patient: patient ?? this.patient,
      status: status ?? this.status,
      supplement: supplement ?? this.supplement,
      text: text ?? this.text,
    );
  }
}
