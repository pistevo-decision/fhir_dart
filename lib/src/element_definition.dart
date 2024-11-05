part of '../fhir_dart.dart';

/// Base StructureDefinition for ElementDefinition Type: Captures constraints on each element within the resource, profile, or extension.
class ElementDefinition extends BackboneElement implements FhirResource {
  /// Other names
  /// Identifies additional names by which this element might also be known.
  final List<String>? alias;

  /// Base definition information for tools
  /// Information about the base definition of the element, provided to make it unnecessary for tools to trace the deviation of the element through the derived and related profiles. When the element definition is not the original definition of an element - i.g. either in a constraint on another type, or for elements from a super type in a snap shot - then the information in provided in the element definition may be different to the base definition. On the original definition of the element, it will be same.
  /// The base information does not carry any information that could not be determined from the path and related profiles, but making this determination requires both that the related profiles are available, and that the algorithm to determine them be available. For tooling simplicity, the base information must always be populated in element definitions in snap shots, even if it is the same.
  final ElementDefinitionBase? base;

  /// ValueSet details if this is coded
  /// Binds to a value set if this element is coded (code, Coding, CodeableConcept, Quantity), or the data types (string, uri).
  /// For a CodeableConcept, when no codes are allowed - only text, use a binding of strength "required" with a description explaining that no coded values are allowed and what sort of information to put in the "text" element.
  final ElementDefinitionBinding? binding;

  /// Corresponding codes in terminologies
  /// A code that has the same meaning as the element in a particular terminology.
  /// The concept SHALL be properly aligned with the data element definition and other constraints, as defined in the code system, including relationships, of any code listed here.  Where multiple codes exist in a terminology that could correspond to the data element, the most granular code(s) should be selected, so long as they are not more restrictive than the data element itself. The mappings may be used to provide more or less granular or structured equivalences in the code system.
  final List<Coding>? code;

  /// Comments about the use of this element
  /// Explanatory notes and implementation guidance about the data element, including notes about how to use the data properly, exceptions to proper use, etc. (Note: The text you are reading is specified in ElementDefinition.comment).
  /// If it is possible to capture usage rules using constraints, that mechanism should be used in preference to this element.
  final String? comment;

  /// Reference to invariant about presence
  /// A reference to an invariant that may make additional statements about the cardinality or value in the instance.
  final List<String>? condition;

  /// Condition that must evaluate to true
  /// Formal constraints such as co-occurrence and other constraints that can be computationally evaluated within the context of the instance.
  /// Constraints should be declared on the "context" element - the lowest element in the hierarchy that is common to all nodes referenced by the constraint.
  final List<ElementDefinitionConstraint>? constraint;

  /// Reference to definition of content for the element
  /// Identifies an element defined elsewhere in the definition whose content rules should be applied to the current element. ContentReferences bring across all the rules that are in the ElementDefinition for the element, including definitions, cardinality constraints, bindings, invariants etc.
  /// ContentReferences can only be defined in specializations, not constrained types, and they cannot be changed and always reference the non-constrained definition.
  final String? contentReference;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Address? defaultValueAddress;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Age? defaultValueAge;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Annotation? defaultValueAnnotation;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Attachment? defaultValueAttachment;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueBase64Binary;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final bool? defaultValueBoolean;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueCanonical;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueCode;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final CodeableConcept? defaultValueCodeableConcept;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Coding? defaultValueCoding;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final ContactDetail? defaultValueContactDetail;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final ContactPoint? defaultValueContactPoint;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Contributor? defaultValueContributor;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Count? defaultValueCount;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final DataRequirement? defaultValueDataRequirement;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueDate;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueDateTime;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final num? defaultValueDecimal;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Distance? defaultValueDistance;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Dosage? defaultValueDosage;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Duration? defaultValueDuration;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Expression? defaultValueExpression;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final HumanName? defaultValueHumanName;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueId;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Identifier? defaultValueIdentifier;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueInstant;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final int? defaultValueInteger;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueMarkdown;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Meta? defaultValueMeta;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Money? defaultValueMoney;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueOid;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final ParameterDefinition? defaultValueParameterDefinition;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Period? defaultValuePeriod;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final int? defaultValuePositiveInt;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Quantity? defaultValueQuantity;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Range? defaultValueRange;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Ratio? defaultValueRatio;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Reference? defaultValueReference;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final RelatedArtifact? defaultValueRelatedArtifact;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final SampledData? defaultValueSampledData;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Signature? defaultValueSignature;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueString;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueTime;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final Timing? defaultValueTiming;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final TriggerDefinition? defaultValueTriggerDefinition;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final int? defaultValueUnsignedInt;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueUri;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueUrl;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final UsageContext? defaultValueUsageContext;

  /// Specified value if missing from instance
  /// The value that should be used if there is no value stated in the instance (e.g. 'if not otherwise specified, the abstract is false').
  /// Specifying a default value means that the property can never been unknown - it must always have a value. Further, the default value can never be changed, or changed in constraints on content models. Defining default values creates many difficulties in implementation (e.g. when is a value missing?). For these reasons, default values are (and should be) used extremely sparingly.
  /// No default values are ever defined in the FHIR specification, nor can they be defined in constraints ("profiles") on data types or resources. This element only exists so that default values may be defined in logical models.
  final String? defaultValueUuid;

  /// Full formal definition as narrative text
  /// Provides a complete explanation of the meaning of the data element for human readability.  For the case of elements derived from existing elements (e.g. constraints), the definition SHALL be consistent with the base definition, but convey the meaning of the element in the particular context of use of the resource. (Note: The text you are reading is specified in ElementDefinition.definition).
  /// It is easy for a different definition to change the meaning of an element and this can have nasty downstream consequences. Please be careful when providing definitions in a profile.
  final String? definition;

  /// Example value (as defined for type)
  /// A sample value for this element demonstrating the type of information that would typically be found in the element.
  /// Examples will most commonly be present for data where it's not implicitly obvious from either the data type or value set what the values might be.  (I.e. Example values for dates or quantities would generally be unnecessary.)  If the example value is fully populated, the publication tool can generate an instance automatically.
  final List<ElementDefinitionExample>? example;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Address? fixedAddress;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Age? fixedAge;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Annotation? fixedAnnotation;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Attachment? fixedAttachment;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedBase64Binary;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final bool? fixedBoolean;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedCanonical;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedCode;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final CodeableConcept? fixedCodeableConcept;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Coding? fixedCoding;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final ContactDetail? fixedContactDetail;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final ContactPoint? fixedContactPoint;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Contributor? fixedContributor;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Count? fixedCount;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final DataRequirement? fixedDataRequirement;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedDate;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedDateTime;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final num? fixedDecimal;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Distance? fixedDistance;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Dosage? fixedDosage;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Duration? fixedDuration;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Expression? fixedExpression;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final HumanName? fixedHumanName;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedId;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Identifier? fixedIdentifier;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedInstant;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final int? fixedInteger;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedMarkdown;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Meta? fixedMeta;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Money? fixedMoney;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedOid;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final ParameterDefinition? fixedParameterDefinition;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Period? fixedPeriod;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final int? fixedPositiveInt;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Quantity? fixedQuantity;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Range? fixedRange;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Ratio? fixedRatio;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Reference? fixedReference;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final RelatedArtifact? fixedRelatedArtifact;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final SampledData? fixedSampledData;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Signature? fixedSignature;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedString;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedTime;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final Timing? fixedTiming;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final TriggerDefinition? fixedTriggerDefinition;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final int? fixedUnsignedInt;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedUri;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedUrl;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final UsageContext? fixedUsageContext;

  /// Value must be exactly this
  /// Specifies a value that SHALL be exactly the value  for this element in the instance. For purposes of comparison, non-significant whitespace is ignored, and all values must be an exact match (case and accent sensitive). Missing elements/attributes must also be missing.
  /// This is not recommended for Coding and CodeableConcept since these often have highly contextual properties such as version or display.
  final String? fixedUuid;

  /// If this modifies the meaning of other elements
  /// If true, the value of this element affects the interpretation of the element or resource that contains it, and the value of the element cannot be ignored. Typically, this is used for status, negation and qualification codes. The effect of this is that the element cannot be ignored by systems: they SHALL either recognize the element and process it, and/or a pre-determination has been made that it is not relevant to their particular system.
  /// Only the definition of an element can set IsModifier true - either the specification itself or where an extension is originally defined. Once set, it cannot be changed in derived profiles. An element/extension that has isModifier=true SHOULD also have a minimum cardinality of 1, so that there is no lack of clarity about what to do if it is missing. If it can be missing, the definition SHALL make the meaning of a missing element clear.
  final bool? isModifier;

  /// Reason that this element is marked as a modifier
  /// Explains how that element affects the interpretation of the resource or element that contains it.
  final String? isModifierReason;

  /// Include when _summary = true?
  /// Whether the element should be included if a client requests a search with the parameter _summary=true.
  /// Some resources include a set of simple metadata, and some very large data. This element is used to reduce the quantity of data returned in searches. Note that servers may pre-cache summarized resources for optimal performance, so servers might not support per-profile use of the isSummary flag. When a request is made with _summary=true, serailisers only include elements marked as 'isSummary = true'. Other than Attachment.data, all data type properties are included in the summary form. In resource and data type definitions, if an element is at the root or has a parent that is 'mustSupport' and the minimum cardinality is 1 or the element is a modifier, it must be marked as isSummary=true.
  final bool? isSummary;

  /// Name for element to display with or prompt for element
  /// A single preferred label which is the text to display beside the element indicating its meaning or to use to prompt for the element in a user display or form.
  /// See also the extension (http://hl7.org/fhir/StructureDefinition/elementdefinition-question)[extension-elementdefinition-question.html].
  final String? label;

  /// Map element to another set of definitions
  /// Identifies a concept from an external specification that roughly corresponds to this element.
  /// Mappings are not necessarily specific enough for safe translation.
  final List<ElementDefinitionMapping>? mapping;

  /// Maximum Cardinality (a number or *)
  /// The maximum number of times this element is permitted to appear in the instance.
  final String? max;

  /// Max length for strings
  /// Indicates the maximum length in characters that is permitted to be present in conformant instances and which is expected to be supported by conformant consumers that support the element.
  /// Receivers are not required to reject instances that exceed the maximum length.  The full length could be stored.  In some cases, data might be truncated, though truncation should be undertaken with care and an understanding of the consequences of doing so. If not specified, there is no conformance expectation for length support.
  final int? maxLength;

  /// Maximum Allowed Value (for some types)
  /// The maximum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the maxValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of maxValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is added to the current clock to determine the maximum allowable value.   A maximum value for a Quantity is interpreted as an canonical maximum - e.g. you cannot provide 10g if the maximum value is 50mg.
  final String? maxValueDate;

  /// Maximum Allowed Value (for some types)
  /// The maximum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the maxValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of maxValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is added to the current clock to determine the maximum allowable value.   A maximum value for a Quantity is interpreted as an canonical maximum - e.g. you cannot provide 10g if the maximum value is 50mg.
  final String? maxValueDateTime;

  /// Maximum Allowed Value (for some types)
  /// The maximum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the maxValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of maxValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is added to the current clock to determine the maximum allowable value.   A maximum value for a Quantity is interpreted as an canonical maximum - e.g. you cannot provide 10g if the maximum value is 50mg.
  final num? maxValueDecimal;

  /// Maximum Allowed Value (for some types)
  /// The maximum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the maxValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of maxValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is added to the current clock to determine the maximum allowable value.   A maximum value for a Quantity is interpreted as an canonical maximum - e.g. you cannot provide 10g if the maximum value is 50mg.
  final String? maxValueInstant;

  /// Maximum Allowed Value (for some types)
  /// The maximum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the maxValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of maxValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is added to the current clock to determine the maximum allowable value.   A maximum value for a Quantity is interpreted as an canonical maximum - e.g. you cannot provide 10g if the maximum value is 50mg.
  final int? maxValueInteger;

  /// Maximum Allowed Value (for some types)
  /// The maximum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the maxValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of maxValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is added to the current clock to determine the maximum allowable value.   A maximum value for a Quantity is interpreted as an canonical maximum - e.g. you cannot provide 10g if the maximum value is 50mg.
  final int? maxValuePositiveInt;

  /// Maximum Allowed Value (for some types)
  /// The maximum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the maxValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of maxValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is added to the current clock to determine the maximum allowable value.   A maximum value for a Quantity is interpreted as an canonical maximum - e.g. you cannot provide 10g if the maximum value is 50mg.
  final Quantity? maxValueQuantity;

  /// Maximum Allowed Value (for some types)
  /// The maximum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the maxValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of maxValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is added to the current clock to determine the maximum allowable value.   A maximum value for a Quantity is interpreted as an canonical maximum - e.g. you cannot provide 10g if the maximum value is 50mg.
  final String? maxValueTime;

  /// Maximum Allowed Value (for some types)
  /// The maximum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the maxValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of maxValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is added to the current clock to determine the maximum allowable value.   A maximum value for a Quantity is interpreted as an canonical maximum - e.g. you cannot provide 10g if the maximum value is 50mg.
  final int? maxValueUnsignedInt;

  /// Implicit meaning when this element is missing
  /// The Implicit meaning that is to be understood when this element is missing (e.g. 'when this element is missing, the period is ongoing').
  /// Implicit meanings for missing values can only be specified on a resource, data type, or extension definition, and never in a profile that applies to one of these. An implicit meaning for a missing value can never be changed, and specifying one has the consequence that constraining its use in profiles eliminates use cases as possibilities, not merely moving them out of scope.
  final String? meaningWhenMissing;

  /// Minimum Cardinality
  /// The minimum number of times this element SHALL appear in the instance.
  final int? min;

  /// Minimum Allowed Value (for some types)
  /// The minimum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the minValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of minValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is subtracted from the current clock to determine the minimum allowable value.   A minimum value for a Quantity is interpreted as an canonical minimum - e.g. you cannot provide 100mg if the minimum value is 10g.
  final String? minValueDate;

  /// Minimum Allowed Value (for some types)
  /// The minimum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the minValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of minValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is subtracted from the current clock to determine the minimum allowable value.   A minimum value for a Quantity is interpreted as an canonical minimum - e.g. you cannot provide 100mg if the minimum value is 10g.
  final String? minValueDateTime;

  /// Minimum Allowed Value (for some types)
  /// The minimum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the minValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of minValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is subtracted from the current clock to determine the minimum allowable value.   A minimum value for a Quantity is interpreted as an canonical minimum - e.g. you cannot provide 100mg if the minimum value is 10g.
  final num? minValueDecimal;

  /// Minimum Allowed Value (for some types)
  /// The minimum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the minValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of minValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is subtracted from the current clock to determine the minimum allowable value.   A minimum value for a Quantity is interpreted as an canonical minimum - e.g. you cannot provide 100mg if the minimum value is 10g.
  final String? minValueInstant;

  /// Minimum Allowed Value (for some types)
  /// The minimum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the minValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of minValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is subtracted from the current clock to determine the minimum allowable value.   A minimum value for a Quantity is interpreted as an canonical minimum - e.g. you cannot provide 100mg if the minimum value is 10g.
  final int? minValueInteger;

  /// Minimum Allowed Value (for some types)
  /// The minimum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the minValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of minValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is subtracted from the current clock to determine the minimum allowable value.   A minimum value for a Quantity is interpreted as an canonical minimum - e.g. you cannot provide 100mg if the minimum value is 10g.
  final int? minValuePositiveInt;

  /// Minimum Allowed Value (for some types)
  /// The minimum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the minValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of minValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is subtracted from the current clock to determine the minimum allowable value.   A minimum value for a Quantity is interpreted as an canonical minimum - e.g. you cannot provide 100mg if the minimum value is 10g.
  final Quantity? minValueQuantity;

  /// Minimum Allowed Value (for some types)
  /// The minimum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the minValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of minValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is subtracted from the current clock to determine the minimum allowable value.   A minimum value for a Quantity is interpreted as an canonical minimum - e.g. you cannot provide 100mg if the minimum value is 10g.
  final String? minValueTime;

  /// Minimum Allowed Value (for some types)
  /// The minimum allowed value for the element. The value is inclusive. This is allowed for the types date, dateTime, instant, time, decimal, integer, and Quantity.
  /// Except for date/date/instant, the type of the minValue[x] SHALL be the same as the specified type of the element. For the date/dateTime/instant values, the type of minValue[x] SHALL be either the same, or a [Duration](datatypes.html#Duration) which specifies a relative time limit to the current time. The duration value is positive, and is subtracted from the current clock to determine the minimum allowable value.   A minimum value for a Quantity is interpreted as an canonical minimum - e.g. you cannot provide 100mg if the minimum value is 10g.
  final int? minValueUnsignedInt;

  /// If the element must be supported
  /// If true, implementations that produce or consume resources SHALL provide "support" for the element in some meaningful way.  If false, the element may be ignored and not supported. If false, whether to populate or use the data element in any way is at the discretion of the implementation.
  /// "Something useful" is context dependent and impossible to describe in the base FHIR specification. For this reason, tue mustSupport flag is never set to true by the FHIR specification itself - it is only set to true in profiles.  A profile on a type can always make musSupport = true if it is false in the base type but cannot make mustSupport = false if it is true in the base type.   This is done in [Resource Profiles](profiling.html#mustsupport), where the profile labels an element as mustSupport=true. When a profile does this, it SHALL also make clear exactly what kind of "support" is required, as this can mean many things.    Note that an element that has the property IsModifier is not necessarily a "key" element (e.g. one of the important elements to make use of the resource), nor is it automatically mustSupport - however both of these things are more likely to be true for IsModifier elements than for other elements.
  final bool? mustSupport;

  /// What the order of the elements means
  /// If present, indicates that the order of the repeating element has meaning and describes what that meaning is.  If absent, it means that the order of the element has no meaning.
  /// This element can only be asserted on repeating elements and can only be introduced when defining resources or data types.  It can be further refined profiled elements but if absent in the base type, a profile cannot assert meaning.
  final String? orderMeaning;

  /// Path of the element in the hierarchy of elements
  /// The path identifies the element and is expressed as a "."-separated list of ancestor elements, beginning with the name of the resource or extension.
  final String path;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Address? patternAddress;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Age? patternAge;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Annotation? patternAnnotation;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Attachment? patternAttachment;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternBase64Binary;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final bool? patternBoolean;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternCanonical;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternCode;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final CodeableConcept? patternCodeableConcept;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Coding? patternCoding;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final ContactDetail? patternContactDetail;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final ContactPoint? patternContactPoint;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Contributor? patternContributor;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Count? patternCount;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final DataRequirement? patternDataRequirement;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternDate;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternDateTime;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final num? patternDecimal;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Distance? patternDistance;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Dosage? patternDosage;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Duration? patternDuration;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Expression? patternExpression;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final HumanName? patternHumanName;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternId;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Identifier? patternIdentifier;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternInstant;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final int? patternInteger;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternMarkdown;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Meta? patternMeta;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Money? patternMoney;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternOid;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final ParameterDefinition? patternParameterDefinition;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Period? patternPeriod;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final int? patternPositiveInt;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Quantity? patternQuantity;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Range? patternRange;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Ratio? patternRatio;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Reference? patternReference;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final RelatedArtifact? patternRelatedArtifact;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final SampledData? patternSampledData;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Signature? patternSignature;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternString;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternTime;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final Timing? patternTiming;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final TriggerDefinition? patternTriggerDefinition;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final int? patternUnsignedInt;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternUri;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternUrl;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final UsageContext? patternUsageContext;

  /// Value must have at least these property values
  /// Specifies a value that the value in the instance SHALL follow - that is, any value in the pattern must be found in the instance. Other additional values may be found too. This is effectively constraint by example.
  /// When pattern[x] is used to constrain a primitive, it means that the value provided in the pattern[x] must match the instance value exactly.
  /// When pattern[x] is used to constrain an array, it means that each element provided in the pattern[x] array must (recursively) match at least one element from the instance array.
  /// When pattern[x] is used to constrain a complex object, it means that each property in the pattern must be present in the complex object, and its value must recursively match -- i.e.,
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value.
  /// Mostly used for fixing values of CodeableConcept. In general, pattern[x] is not intended for use with primitive types, where is has the same meaning as fixed[x].
  final String? patternUuid;

  /// Codes that define how this element is represented in instances, when the deviation varies from the normal case.
  /// In resources, this is rarely used except for special cases where the representation deviates from the normal, and can only be done in the base standard (and profiles must reproduce what the base standard does). This element is used quite commonly in Logical models when the logical models represent a specific serialization format (e.g. CDA, v2 etc.).
  final List<String>?
      representation; // Possible values: 'xmlAttr', 'xmlText', 'typeAttr', 'cdaText', 'xhtml'
  /// Why this resource has been created
  /// This element is for traceability of why the element was created and why the constraints exist as they do. This may be used to point to source materials or specifications that drove the structure of this element.
  /// This element does not describe the usage of the element (that's done in comments), rather it's for traceability of *why* the element is either needed or why the constraints exist as they do.  This may be used to point to source materials or specifications that drove the structure of this data element.
  final String? requirements;

  /// Concise definition for space-constrained presentation
  /// A concise description of what this element means (e.g. for use in autogenerated summaries).
  /// It is easy for a different short definition to change the meaning of an element and this can have nasty downstream consequences. Please be careful when providing short definitions in a profile.
  final String? short;

  /// If this slice definition constrains an inherited slice definition (or not)
  /// If true, indicates that this slice definition is constraining a slice definition with the same name in an inherited profile. If false, the slice is not overriding any slice in an inherited profile. If missing, the slice might or might not be overriding a slice in an inherited profile, depending on the sliceName.
  /// If set to true, an ancestor profile SHALL have a slicing definition with this name.  If set to false, no ancestor profile is permitted to have a slicing definition with this name.
  final bool? sliceIsConstraining;

  /// Name for this particular element (in a set of slices)
  /// The name of this element definition slice, when slicing is working. The name must be a token with no dots or spaces. This is a unique name referring to a specific set of constraints applied to this element, used to provide a name to different slices of the same element.
  /// The name SHALL be unique within the structure within the context of the constrained resource element.  (Though to avoid confusion, uniqueness across all elements is recommended.).
  final String? sliceName;

  /// This element is sliced - slices follow
  /// Indicates that the element is sliced into a set of alternative definitions (i.e. in a structure definition, there are multiple different constraints on a single element in the base resource). Slicing can be used in any resource that has cardinality ..* on the base resource, or any resource with a choice of types. The set of slices is any elements that come after this in the element sequence that have the same path, until a shorter path occurs (the shorter path terminates the set).
  /// The first element in the sequence, the one that carries the slicing, is the definition that applies to all the slices. This is based on the unconstrained element, but can apply any constraints as appropriate. This may include the common constraints on the children of the element.
  final ElementDefinitionSlicing? slicing;

  /// Data type and Profile for this element
  /// The data type or resource that the value of this element is permitted to be.
  /// The Type of the element can be left blank in a differential constraint, in which case the type is inherited from the resource. Abstract types are not permitted to appear as a type when multiple types are listed.  (I.e. Abstract types cannot be part of a choice).
  final List<ElementDefinitionType>? type;
  ElementDefinition({
    this.alias,
    this.base,
    this.binding,
    this.code,
    this.comment,
    this.condition,
    this.constraint,
    this.contentReference,
    this.defaultValueAddress,
    this.defaultValueAge,
    this.defaultValueAnnotation,
    this.defaultValueAttachment,
    this.defaultValueBase64Binary,
    this.defaultValueBoolean,
    this.defaultValueCanonical,
    this.defaultValueCode,
    this.defaultValueCodeableConcept,
    this.defaultValueCoding,
    this.defaultValueContactDetail,
    this.defaultValueContactPoint,
    this.defaultValueContributor,
    this.defaultValueCount,
    this.defaultValueDataRequirement,
    this.defaultValueDate,
    this.defaultValueDateTime,
    this.defaultValueDecimal,
    this.defaultValueDistance,
    this.defaultValueDosage,
    this.defaultValueDuration,
    this.defaultValueExpression,
    this.defaultValueHumanName,
    this.defaultValueId,
    this.defaultValueIdentifier,
    this.defaultValueInstant,
    this.defaultValueInteger,
    this.defaultValueMarkdown,
    this.defaultValueMeta,
    this.defaultValueMoney,
    this.defaultValueOid,
    this.defaultValueParameterDefinition,
    this.defaultValuePeriod,
    this.defaultValuePositiveInt,
    this.defaultValueQuantity,
    this.defaultValueRange,
    this.defaultValueRatio,
    this.defaultValueReference,
    this.defaultValueRelatedArtifact,
    this.defaultValueSampledData,
    this.defaultValueSignature,
    this.defaultValueString,
    this.defaultValueTime,
    this.defaultValueTiming,
    this.defaultValueTriggerDefinition,
    this.defaultValueUnsignedInt,
    this.defaultValueUri,
    this.defaultValueUrl,
    this.defaultValueUsageContext,
    this.defaultValueUuid,
    this.definition,
    this.example,
    super.fhirExtension,
    this.fixedAddress,
    this.fixedAge,
    this.fixedAnnotation,
    this.fixedAttachment,
    this.fixedBase64Binary,
    this.fixedBoolean,
    this.fixedCanonical,
    this.fixedCode,
    this.fixedCodeableConcept,
    this.fixedCoding,
    this.fixedContactDetail,
    this.fixedContactPoint,
    this.fixedContributor,
    this.fixedCount,
    this.fixedDataRequirement,
    this.fixedDate,
    this.fixedDateTime,
    this.fixedDecimal,
    this.fixedDistance,
    this.fixedDosage,
    this.fixedDuration,
    this.fixedExpression,
    this.fixedHumanName,
    this.fixedId,
    this.fixedIdentifier,
    this.fixedInstant,
    this.fixedInteger,
    this.fixedMarkdown,
    this.fixedMeta,
    this.fixedMoney,
    this.fixedOid,
    this.fixedParameterDefinition,
    this.fixedPeriod,
    this.fixedPositiveInt,
    this.fixedQuantity,
    this.fixedRange,
    this.fixedRatio,
    this.fixedReference,
    this.fixedRelatedArtifact,
    this.fixedSampledData,
    this.fixedSignature,
    this.fixedString,
    this.fixedTime,
    this.fixedTiming,
    this.fixedTriggerDefinition,
    this.fixedUnsignedInt,
    this.fixedUri,
    this.fixedUrl,
    this.fixedUsageContext,
    this.fixedUuid,
    super.id,
    this.isModifier,
    this.isModifierReason,
    this.isSummary,
    this.label,
    this.mapping,
    this.max,
    this.maxLength,
    this.maxValueDate,
    this.maxValueDateTime,
    this.maxValueDecimal,
    this.maxValueInstant,
    this.maxValueInteger,
    this.maxValuePositiveInt,
    this.maxValueQuantity,
    this.maxValueTime,
    this.maxValueUnsignedInt,
    this.meaningWhenMissing,
    this.min,
    this.minValueDate,
    this.minValueDateTime,
    this.minValueDecimal,
    this.minValueInstant,
    this.minValueInteger,
    this.minValuePositiveInt,
    this.minValueQuantity,
    this.minValueTime,
    this.minValueUnsignedInt,
    super.modifierExtension,
    this.mustSupport,
    this.orderMeaning,
    required this.path,
    this.patternAddress,
    this.patternAge,
    this.patternAnnotation,
    this.patternAttachment,
    this.patternBase64Binary,
    this.patternBoolean,
    this.patternCanonical,
    this.patternCode,
    this.patternCodeableConcept,
    this.patternCoding,
    this.patternContactDetail,
    this.patternContactPoint,
    this.patternContributor,
    this.patternCount,
    this.patternDataRequirement,
    this.patternDate,
    this.patternDateTime,
    this.patternDecimal,
    this.patternDistance,
    this.patternDosage,
    this.patternDuration,
    this.patternExpression,
    this.patternHumanName,
    this.patternId,
    this.patternIdentifier,
    this.patternInstant,
    this.patternInteger,
    this.patternMarkdown,
    this.patternMeta,
    this.patternMoney,
    this.patternOid,
    this.patternParameterDefinition,
    this.patternPeriod,
    this.patternPositiveInt,
    this.patternQuantity,
    this.patternRange,
    this.patternRatio,
    this.patternReference,
    this.patternRelatedArtifact,
    this.patternSampledData,
    this.patternSignature,
    this.patternString,
    this.patternTime,
    this.patternTiming,
    this.patternTriggerDefinition,
    this.patternUnsignedInt,
    this.patternUri,
    this.patternUrl,
    this.patternUsageContext,
    this.patternUuid,
    this.representation,
    this.requirements,
    this.short,
    this.sliceIsConstraining,
    this.sliceName,
    this.slicing,
    this.type,
  });

  @override
  factory ElementDefinition.fromJson(Map<String, dynamic> json) {
    return ElementDefinition(
      alias:
          (json['alias'] as List<dynamic>?)?.map((e) => e as String).toList(),
      base: json['base'] != null
          ? ElementDefinitionBase.fromJson(
              (json['base'] as Map).cast<String, dynamic>())
          : null,
      binding: json['binding'] != null
          ? ElementDefinitionBinding.fromJson(
              (json['binding'] as Map).cast<String, dynamic>())
          : null,
      code: (json['code'] as List<dynamic>?)
          ?.map((e) => Coding.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      comment: json['comment'] as String?,
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      constraint: (json['constraint'] as List<dynamic>?)
          ?.map((e) => ElementDefinitionConstraint.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      contentReference: json['contentReference'] as String?,
      defaultValueAddress: json['defaultValueAddress'] != null
          ? Address.fromJson(
              (json['defaultValueAddress'] as Map).cast<String, dynamic>())
          : null,
      defaultValueAge: json['defaultValueAge'] != null
          ? Age.fromJson(
              (json['defaultValueAge'] as Map).cast<String, dynamic>())
          : null,
      defaultValueAnnotation: json['defaultValueAnnotation'] != null
          ? Annotation.fromJson(
              (json['defaultValueAnnotation'] as Map).cast<String, dynamic>())
          : null,
      defaultValueAttachment: json['defaultValueAttachment'] != null
          ? Attachment.fromJson(
              (json['defaultValueAttachment'] as Map).cast<String, dynamic>())
          : null,
      defaultValueBase64Binary: json['defaultValueBase64Binary'] as String?,
      defaultValueBoolean: json['defaultValueBoolean'] as bool?,
      defaultValueCanonical: json['defaultValueCanonical'] as String?,
      defaultValueCode: json['defaultValueCode'] as String?,
      defaultValueCodeableConcept: json['defaultValueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['defaultValueCodeableConcept'] as Map)
                  .cast<String, dynamic>())
          : null,
      defaultValueCoding: json['defaultValueCoding'] != null
          ? Coding.fromJson(
              (json['defaultValueCoding'] as Map).cast<String, dynamic>())
          : null,
      defaultValueContactDetail: json['defaultValueContactDetail'] != null
          ? ContactDetail.fromJson((json['defaultValueContactDetail'] as Map)
              .cast<String, dynamic>())
          : null,
      defaultValueContactPoint: json['defaultValueContactPoint'] != null
          ? ContactPoint.fromJson(
              (json['defaultValueContactPoint'] as Map).cast<String, dynamic>())
          : null,
      defaultValueContributor: json['defaultValueContributor'] != null
          ? Contributor.fromJson(
              (json['defaultValueContributor'] as Map).cast<String, dynamic>())
          : null,
      defaultValueCount: json['defaultValueCount'] != null
          ? Count.fromJson(
              (json['defaultValueCount'] as Map).cast<String, dynamic>())
          : null,
      defaultValueDataRequirement: json['defaultValueDataRequirement'] != null
          ? DataRequirement.fromJson(
              (json['defaultValueDataRequirement'] as Map)
                  .cast<String, dynamic>())
          : null,
      defaultValueDate: json['defaultValueDate'] as String?,
      defaultValueDateTime: json['defaultValueDateTime'] as String?,
      defaultValueDecimal: json['defaultValueDecimal'] as num?,
      defaultValueDistance: json['defaultValueDistance'] != null
          ? Distance.fromJson(
              (json['defaultValueDistance'] as Map).cast<String, dynamic>())
          : null,
      defaultValueDosage: json['defaultValueDosage'] != null
          ? Dosage.fromJson(
              (json['defaultValueDosage'] as Map).cast<String, dynamic>())
          : null,
      defaultValueDuration: json['defaultValueDuration'] != null
          ? Duration.fromJson(
              (json['defaultValueDuration'] as Map).cast<String, dynamic>())
          : null,
      defaultValueExpression: json['defaultValueExpression'] != null
          ? Expression.fromJson(
              (json['defaultValueExpression'] as Map).cast<String, dynamic>())
          : null,
      defaultValueHumanName: json['defaultValueHumanName'] != null
          ? HumanName.fromJson(
              (json['defaultValueHumanName'] as Map).cast<String, dynamic>())
          : null,
      defaultValueId: json['defaultValueId'] as String?,
      defaultValueIdentifier: json['defaultValueIdentifier'] != null
          ? Identifier.fromJson(
              (json['defaultValueIdentifier'] as Map).cast<String, dynamic>())
          : null,
      defaultValueInstant: json['defaultValueInstant'] as String?,
      defaultValueInteger: json['defaultValueInteger'] as int?,
      defaultValueMarkdown: json['defaultValueMarkdown'] as String?,
      defaultValueMeta: json['defaultValueMeta'] != null
          ? Meta.fromJson(
              (json['defaultValueMeta'] as Map).cast<String, dynamic>())
          : null,
      defaultValueMoney: json['defaultValueMoney'] != null
          ? Money.fromJson(
              (json['defaultValueMoney'] as Map).cast<String, dynamic>())
          : null,
      defaultValueOid: json['defaultValueOid'] as String?,
      defaultValueParameterDefinition:
          json['defaultValueParameterDefinition'] != null
              ? ParameterDefinition.fromJson(
                  (json['defaultValueParameterDefinition'] as Map)
                      .cast<String, dynamic>())
              : null,
      defaultValuePeriod: json['defaultValuePeriod'] != null
          ? Period.fromJson(
              (json['defaultValuePeriod'] as Map).cast<String, dynamic>())
          : null,
      defaultValuePositiveInt: json['defaultValuePositiveInt'] as int?,
      defaultValueQuantity: json['defaultValueQuantity'] != null
          ? Quantity.fromJson(
              (json['defaultValueQuantity'] as Map).cast<String, dynamic>())
          : null,
      defaultValueRange: json['defaultValueRange'] != null
          ? Range.fromJson(
              (json['defaultValueRange'] as Map).cast<String, dynamic>())
          : null,
      defaultValueRatio: json['defaultValueRatio'] != null
          ? Ratio.fromJson(
              (json['defaultValueRatio'] as Map).cast<String, dynamic>())
          : null,
      defaultValueReference: json['defaultValueReference'] != null
          ? Reference.fromJson(
              (json['defaultValueReference'] as Map).cast<String, dynamic>())
          : null,
      defaultValueRelatedArtifact: json['defaultValueRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              (json['defaultValueRelatedArtifact'] as Map)
                  .cast<String, dynamic>())
          : null,
      defaultValueSampledData: json['defaultValueSampledData'] != null
          ? SampledData.fromJson(
              (json['defaultValueSampledData'] as Map).cast<String, dynamic>())
          : null,
      defaultValueSignature: json['defaultValueSignature'] != null
          ? Signature.fromJson(
              (json['defaultValueSignature'] as Map).cast<String, dynamic>())
          : null,
      defaultValueString: json['defaultValueString'] as String?,
      defaultValueTime: json['defaultValueTime'] as String?,
      defaultValueTiming: json['defaultValueTiming'] != null
          ? Timing.fromJson(
              (json['defaultValueTiming'] as Map).cast<String, dynamic>())
          : null,
      defaultValueTriggerDefinition:
          json['defaultValueTriggerDefinition'] != null
              ? TriggerDefinition.fromJson(
                  (json['defaultValueTriggerDefinition'] as Map)
                      .cast<String, dynamic>())
              : null,
      defaultValueUnsignedInt: json['defaultValueUnsignedInt'] as int?,
      defaultValueUri: json['defaultValueUri'] as String?,
      defaultValueUrl: json['defaultValueUrl'] as String?,
      defaultValueUsageContext: json['defaultValueUsageContext'] != null
          ? UsageContext.fromJson(
              (json['defaultValueUsageContext'] as Map).cast<String, dynamic>())
          : null,
      defaultValueUuid: json['defaultValueUuid'] as String?,
      definition: json['definition'] as String?,
      example: (json['example'] as List<dynamic>?)
          ?.map((e) => ElementDefinitionExample.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fixedAddress: json['fixedAddress'] != null
          ? Address.fromJson(
              (json['fixedAddress'] as Map).cast<String, dynamic>())
          : null,
      fixedAge: json['fixedAge'] != null
          ? Age.fromJson((json['fixedAge'] as Map).cast<String, dynamic>())
          : null,
      fixedAnnotation: json['fixedAnnotation'] != null
          ? Annotation.fromJson(
              (json['fixedAnnotation'] as Map).cast<String, dynamic>())
          : null,
      fixedAttachment: json['fixedAttachment'] != null
          ? Attachment.fromJson(
              (json['fixedAttachment'] as Map).cast<String, dynamic>())
          : null,
      fixedBase64Binary: json['fixedBase64Binary'] as String?,
      fixedBoolean: json['fixedBoolean'] as bool?,
      fixedCanonical: json['fixedCanonical'] as String?,
      fixedCode: json['fixedCode'] as String?,
      fixedCodeableConcept: json['fixedCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['fixedCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      fixedCoding: json['fixedCoding'] != null
          ? Coding.fromJson(
              (json['fixedCoding'] as Map).cast<String, dynamic>())
          : null,
      fixedContactDetail: json['fixedContactDetail'] != null
          ? ContactDetail.fromJson(
              (json['fixedContactDetail'] as Map).cast<String, dynamic>())
          : null,
      fixedContactPoint: json['fixedContactPoint'] != null
          ? ContactPoint.fromJson(
              (json['fixedContactPoint'] as Map).cast<String, dynamic>())
          : null,
      fixedContributor: json['fixedContributor'] != null
          ? Contributor.fromJson(
              (json['fixedContributor'] as Map).cast<String, dynamic>())
          : null,
      fixedCount: json['fixedCount'] != null
          ? Count.fromJson((json['fixedCount'] as Map).cast<String, dynamic>())
          : null,
      fixedDataRequirement: json['fixedDataRequirement'] != null
          ? DataRequirement.fromJson(
              (json['fixedDataRequirement'] as Map).cast<String, dynamic>())
          : null,
      fixedDate: json['fixedDate'] as String?,
      fixedDateTime: json['fixedDateTime'] as String?,
      fixedDecimal: json['fixedDecimal'] as num?,
      fixedDistance: json['fixedDistance'] != null
          ? Distance.fromJson(
              (json['fixedDistance'] as Map).cast<String, dynamic>())
          : null,
      fixedDosage: json['fixedDosage'] != null
          ? Dosage.fromJson(
              (json['fixedDosage'] as Map).cast<String, dynamic>())
          : null,
      fixedDuration: json['fixedDuration'] != null
          ? Duration.fromJson(
              (json['fixedDuration'] as Map).cast<String, dynamic>())
          : null,
      fixedExpression: json['fixedExpression'] != null
          ? Expression.fromJson(
              (json['fixedExpression'] as Map).cast<String, dynamic>())
          : null,
      fixedHumanName: json['fixedHumanName'] != null
          ? HumanName.fromJson(
              (json['fixedHumanName'] as Map).cast<String, dynamic>())
          : null,
      fixedId: json['fixedId'] as String?,
      fixedIdentifier: json['fixedIdentifier'] != null
          ? Identifier.fromJson(
              (json['fixedIdentifier'] as Map).cast<String, dynamic>())
          : null,
      fixedInstant: json['fixedInstant'] as String?,
      fixedInteger: json['fixedInteger'] as int?,
      fixedMarkdown: json['fixedMarkdown'] as String?,
      fixedMeta: json['fixedMeta'] != null
          ? Meta.fromJson((json['fixedMeta'] as Map).cast<String, dynamic>())
          : null,
      fixedMoney: json['fixedMoney'] != null
          ? Money.fromJson((json['fixedMoney'] as Map).cast<String, dynamic>())
          : null,
      fixedOid: json['fixedOid'] as String?,
      fixedParameterDefinition: json['fixedParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              (json['fixedParameterDefinition'] as Map).cast<String, dynamic>())
          : null,
      fixedPeriod: json['fixedPeriod'] != null
          ? Period.fromJson(
              (json['fixedPeriod'] as Map).cast<String, dynamic>())
          : null,
      fixedPositiveInt: json['fixedPositiveInt'] as int?,
      fixedQuantity: json['fixedQuantity'] != null
          ? Quantity.fromJson(
              (json['fixedQuantity'] as Map).cast<String, dynamic>())
          : null,
      fixedRange: json['fixedRange'] != null
          ? Range.fromJson((json['fixedRange'] as Map).cast<String, dynamic>())
          : null,
      fixedRatio: json['fixedRatio'] != null
          ? Ratio.fromJson((json['fixedRatio'] as Map).cast<String, dynamic>())
          : null,
      fixedReference: json['fixedReference'] != null
          ? Reference.fromJson(
              (json['fixedReference'] as Map).cast<String, dynamic>())
          : null,
      fixedRelatedArtifact: json['fixedRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              (json['fixedRelatedArtifact'] as Map).cast<String, dynamic>())
          : null,
      fixedSampledData: json['fixedSampledData'] != null
          ? SampledData.fromJson(
              (json['fixedSampledData'] as Map).cast<String, dynamic>())
          : null,
      fixedSignature: json['fixedSignature'] != null
          ? Signature.fromJson(
              (json['fixedSignature'] as Map).cast<String, dynamic>())
          : null,
      fixedString: json['fixedString'] as String?,
      fixedTime: json['fixedTime'] as String?,
      fixedTiming: json['fixedTiming'] != null
          ? Timing.fromJson(
              (json['fixedTiming'] as Map).cast<String, dynamic>())
          : null,
      fixedTriggerDefinition: json['fixedTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              (json['fixedTriggerDefinition'] as Map).cast<String, dynamic>())
          : null,
      fixedUnsignedInt: json['fixedUnsignedInt'] as int?,
      fixedUri: json['fixedUri'] as String?,
      fixedUrl: json['fixedUrl'] as String?,
      fixedUsageContext: json['fixedUsageContext'] != null
          ? UsageContext.fromJson(
              (json['fixedUsageContext'] as Map).cast<String, dynamic>())
          : null,
      fixedUuid: json['fixedUuid'] as String?,
      id: json['id'] as String?,
      isModifier: json['isModifier'] as bool?,
      isModifierReason: json['isModifierReason'] as String?,
      isSummary: json['isSummary'] as bool?,
      label: json['label'] as String?,
      mapping: (json['mapping'] as List<dynamic>?)
          ?.map((e) => ElementDefinitionMapping.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      max: json['max'] as String?,
      maxLength: json['maxLength'] as int?,
      maxValueDate: json['maxValueDate'] as String?,
      maxValueDateTime: json['maxValueDateTime'] as String?,
      maxValueDecimal: json['maxValueDecimal'] as num?,
      maxValueInstant: json['maxValueInstant'] as String?,
      maxValueInteger: json['maxValueInteger'] as int?,
      maxValuePositiveInt: json['maxValuePositiveInt'] as int?,
      maxValueQuantity: json['maxValueQuantity'] != null
          ? Quantity.fromJson(
              (json['maxValueQuantity'] as Map).cast<String, dynamic>())
          : null,
      maxValueTime: json['maxValueTime'] as String?,
      maxValueUnsignedInt: json['maxValueUnsignedInt'] as int?,
      meaningWhenMissing: json['meaningWhenMissing'] as String?,
      min: json['min'] as int?,
      minValueDate: json['minValueDate'] as String?,
      minValueDateTime: json['minValueDateTime'] as String?,
      minValueDecimal: json['minValueDecimal'] as num?,
      minValueInstant: json['minValueInstant'] as String?,
      minValueInteger: json['minValueInteger'] as int?,
      minValuePositiveInt: json['minValuePositiveInt'] as int?,
      minValueQuantity: json['minValueQuantity'] != null
          ? Quantity.fromJson(
              (json['minValueQuantity'] as Map).cast<String, dynamic>())
          : null,
      minValueTime: json['minValueTime'] as String?,
      minValueUnsignedInt: json['minValueUnsignedInt'] as int?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      mustSupport: json['mustSupport'] as bool?,
      orderMeaning: json['orderMeaning'] as String?,
      path: json['path'] as String,
      patternAddress: json['patternAddress'] != null
          ? Address.fromJson(
              (json['patternAddress'] as Map).cast<String, dynamic>())
          : null,
      patternAge: json['patternAge'] != null
          ? Age.fromJson((json['patternAge'] as Map).cast<String, dynamic>())
          : null,
      patternAnnotation: json['patternAnnotation'] != null
          ? Annotation.fromJson(
              (json['patternAnnotation'] as Map).cast<String, dynamic>())
          : null,
      patternAttachment: json['patternAttachment'] != null
          ? Attachment.fromJson(
              (json['patternAttachment'] as Map).cast<String, dynamic>())
          : null,
      patternBase64Binary: json['patternBase64Binary'] as String?,
      patternBoolean: json['patternBoolean'] as bool?,
      patternCanonical: json['patternCanonical'] as String?,
      patternCode: json['patternCode'] as String?,
      patternCodeableConcept: json['patternCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['patternCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      patternCoding: json['patternCoding'] != null
          ? Coding.fromJson(
              (json['patternCoding'] as Map).cast<String, dynamic>())
          : null,
      patternContactDetail: json['patternContactDetail'] != null
          ? ContactDetail.fromJson(
              (json['patternContactDetail'] as Map).cast<String, dynamic>())
          : null,
      patternContactPoint: json['patternContactPoint'] != null
          ? ContactPoint.fromJson(
              (json['patternContactPoint'] as Map).cast<String, dynamic>())
          : null,
      patternContributor: json['patternContributor'] != null
          ? Contributor.fromJson(
              (json['patternContributor'] as Map).cast<String, dynamic>())
          : null,
      patternCount: json['patternCount'] != null
          ? Count.fromJson(
              (json['patternCount'] as Map).cast<String, dynamic>())
          : null,
      patternDataRequirement: json['patternDataRequirement'] != null
          ? DataRequirement.fromJson(
              (json['patternDataRequirement'] as Map).cast<String, dynamic>())
          : null,
      patternDate: json['patternDate'] as String?,
      patternDateTime: json['patternDateTime'] as String?,
      patternDecimal: json['patternDecimal'] as num?,
      patternDistance: json['patternDistance'] != null
          ? Distance.fromJson(
              (json['patternDistance'] as Map).cast<String, dynamic>())
          : null,
      patternDosage: json['patternDosage'] != null
          ? Dosage.fromJson(
              (json['patternDosage'] as Map).cast<String, dynamic>())
          : null,
      patternDuration: json['patternDuration'] != null
          ? Duration.fromJson(
              (json['patternDuration'] as Map).cast<String, dynamic>())
          : null,
      patternExpression: json['patternExpression'] != null
          ? Expression.fromJson(
              (json['patternExpression'] as Map).cast<String, dynamic>())
          : null,
      patternHumanName: json['patternHumanName'] != null
          ? HumanName.fromJson(
              (json['patternHumanName'] as Map).cast<String, dynamic>())
          : null,
      patternId: json['patternId'] as String?,
      patternIdentifier: json['patternIdentifier'] != null
          ? Identifier.fromJson(
              (json['patternIdentifier'] as Map).cast<String, dynamic>())
          : null,
      patternInstant: json['patternInstant'] as String?,
      patternInteger: json['patternInteger'] as int?,
      patternMarkdown: json['patternMarkdown'] as String?,
      patternMeta: json['patternMeta'] != null
          ? Meta.fromJson((json['patternMeta'] as Map).cast<String, dynamic>())
          : null,
      patternMoney: json['patternMoney'] != null
          ? Money.fromJson(
              (json['patternMoney'] as Map).cast<String, dynamic>())
          : null,
      patternOid: json['patternOid'] as String?,
      patternParameterDefinition: json['patternParameterDefinition'] != null
          ? ParameterDefinition.fromJson(
              (json['patternParameterDefinition'] as Map)
                  .cast<String, dynamic>())
          : null,
      patternPeriod: json['patternPeriod'] != null
          ? Period.fromJson(
              (json['patternPeriod'] as Map).cast<String, dynamic>())
          : null,
      patternPositiveInt: json['patternPositiveInt'] as int?,
      patternQuantity: json['patternQuantity'] != null
          ? Quantity.fromJson(
              (json['patternQuantity'] as Map).cast<String, dynamic>())
          : null,
      patternRange: json['patternRange'] != null
          ? Range.fromJson(
              (json['patternRange'] as Map).cast<String, dynamic>())
          : null,
      patternRatio: json['patternRatio'] != null
          ? Ratio.fromJson(
              (json['patternRatio'] as Map).cast<String, dynamic>())
          : null,
      patternReference: json['patternReference'] != null
          ? Reference.fromJson(
              (json['patternReference'] as Map).cast<String, dynamic>())
          : null,
      patternRelatedArtifact: json['patternRelatedArtifact'] != null
          ? RelatedArtifact.fromJson(
              (json['patternRelatedArtifact'] as Map).cast<String, dynamic>())
          : null,
      patternSampledData: json['patternSampledData'] != null
          ? SampledData.fromJson(
              (json['patternSampledData'] as Map).cast<String, dynamic>())
          : null,
      patternSignature: json['patternSignature'] != null
          ? Signature.fromJson(
              (json['patternSignature'] as Map).cast<String, dynamic>())
          : null,
      patternString: json['patternString'] as String?,
      patternTime: json['patternTime'] as String?,
      patternTiming: json['patternTiming'] != null
          ? Timing.fromJson(
              (json['patternTiming'] as Map).cast<String, dynamic>())
          : null,
      patternTriggerDefinition: json['patternTriggerDefinition'] != null
          ? TriggerDefinition.fromJson(
              (json['patternTriggerDefinition'] as Map).cast<String, dynamic>())
          : null,
      patternUnsignedInt: json['patternUnsignedInt'] as int?,
      patternUri: json['patternUri'] as String?,
      patternUrl: json['patternUrl'] as String?,
      patternUsageContext: json['patternUsageContext'] != null
          ? UsageContext.fromJson(
              (json['patternUsageContext'] as Map).cast<String, dynamic>())
          : null,
      patternUuid: json['patternUuid'] as String?,
      representation: (json['representation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      requirements: json['requirements'] as String?,
      short: json['short'] as String?,
      sliceIsConstraining: json['sliceIsConstraining'] as bool?,
      sliceName: json['sliceName'] as String?,
      slicing: json['slicing'] != null
          ? ElementDefinitionSlicing.fromJson(
              (json['slicing'] as Map).cast<String, dynamic>())
          : null,
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => ElementDefinitionType.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'alias': alias?.map((e) => e).toList(),
        'base': base?.toJson(),
        'binding': binding?.toJson(),
        'code': code?.map((e) => e.toJson()).toList(),
        'comment': comment,
        'condition': condition?.map((e) => e).toList(),
        'constraint': constraint?.map((e) => e.toJson()).toList(),
        'contentReference': contentReference,
        'defaultValueAddress': defaultValueAddress?.toJson(),
        'defaultValueAge': defaultValueAge?.toJson(),
        'defaultValueAnnotation': defaultValueAnnotation?.toJson(),
        'defaultValueAttachment': defaultValueAttachment?.toJson(),
        'defaultValueBase64Binary': defaultValueBase64Binary,
        'defaultValueBoolean': defaultValueBoolean,
        'defaultValueCanonical': defaultValueCanonical,
        'defaultValueCode': defaultValueCode,
        'defaultValueCodeableConcept': defaultValueCodeableConcept?.toJson(),
        'defaultValueCoding': defaultValueCoding?.toJson(),
        'defaultValueContactDetail': defaultValueContactDetail?.toJson(),
        'defaultValueContactPoint': defaultValueContactPoint?.toJson(),
        'defaultValueContributor': defaultValueContributor?.toJson(),
        'defaultValueCount': defaultValueCount?.toJson(),
        'defaultValueDataRequirement': defaultValueDataRequirement?.toJson(),
        'defaultValueDate': defaultValueDate,
        'defaultValueDateTime': defaultValueDateTime,
        'defaultValueDecimal': defaultValueDecimal,
        'defaultValueDistance': defaultValueDistance?.toJson(),
        'defaultValueDosage': defaultValueDosage?.toJson(),
        'defaultValueDuration': defaultValueDuration?.toJson(),
        'defaultValueExpression': defaultValueExpression?.toJson(),
        'defaultValueHumanName': defaultValueHumanName?.toJson(),
        'defaultValueId': defaultValueId,
        'defaultValueIdentifier': defaultValueIdentifier?.toJson(),
        'defaultValueInstant': defaultValueInstant,
        'defaultValueInteger': defaultValueInteger,
        'defaultValueMarkdown': defaultValueMarkdown,
        'defaultValueMeta': defaultValueMeta?.toJson(),
        'defaultValueMoney': defaultValueMoney?.toJson(),
        'defaultValueOid': defaultValueOid,
        'defaultValueParameterDefinition':
            defaultValueParameterDefinition?.toJson(),
        'defaultValuePeriod': defaultValuePeriod?.toJson(),
        'defaultValuePositiveInt': defaultValuePositiveInt,
        'defaultValueQuantity': defaultValueQuantity?.toJson(),
        'defaultValueRange': defaultValueRange?.toJson(),
        'defaultValueRatio': defaultValueRatio?.toJson(),
        'defaultValueReference': defaultValueReference?.toJson(),
        'defaultValueRelatedArtifact': defaultValueRelatedArtifact?.toJson(),
        'defaultValueSampledData': defaultValueSampledData?.toJson(),
        'defaultValueSignature': defaultValueSignature?.toJson(),
        'defaultValueString': defaultValueString,
        'defaultValueTime': defaultValueTime,
        'defaultValueTiming': defaultValueTiming?.toJson(),
        'defaultValueTriggerDefinition':
            defaultValueTriggerDefinition?.toJson(),
        'defaultValueUnsignedInt': defaultValueUnsignedInt,
        'defaultValueUri': defaultValueUri,
        'defaultValueUrl': defaultValueUrl,
        'defaultValueUsageContext': defaultValueUsageContext?.toJson(),
        'defaultValueUuid': defaultValueUuid,
        'definition': definition,
        'example': example?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'fixedAddress': fixedAddress?.toJson(),
        'fixedAge': fixedAge?.toJson(),
        'fixedAnnotation': fixedAnnotation?.toJson(),
        'fixedAttachment': fixedAttachment?.toJson(),
        'fixedBase64Binary': fixedBase64Binary,
        'fixedBoolean': fixedBoolean,
        'fixedCanonical': fixedCanonical,
        'fixedCode': fixedCode,
        'fixedCodeableConcept': fixedCodeableConcept?.toJson(),
        'fixedCoding': fixedCoding?.toJson(),
        'fixedContactDetail': fixedContactDetail?.toJson(),
        'fixedContactPoint': fixedContactPoint?.toJson(),
        'fixedContributor': fixedContributor?.toJson(),
        'fixedCount': fixedCount?.toJson(),
        'fixedDataRequirement': fixedDataRequirement?.toJson(),
        'fixedDate': fixedDate,
        'fixedDateTime': fixedDateTime,
        'fixedDecimal': fixedDecimal,
        'fixedDistance': fixedDistance?.toJson(),
        'fixedDosage': fixedDosage?.toJson(),
        'fixedDuration': fixedDuration?.toJson(),
        'fixedExpression': fixedExpression?.toJson(),
        'fixedHumanName': fixedHumanName?.toJson(),
        'fixedId': fixedId,
        'fixedIdentifier': fixedIdentifier?.toJson(),
        'fixedInstant': fixedInstant,
        'fixedInteger': fixedInteger,
        'fixedMarkdown': fixedMarkdown,
        'fixedMeta': fixedMeta?.toJson(),
        'fixedMoney': fixedMoney?.toJson(),
        'fixedOid': fixedOid,
        'fixedParameterDefinition': fixedParameterDefinition?.toJson(),
        'fixedPeriod': fixedPeriod?.toJson(),
        'fixedPositiveInt': fixedPositiveInt,
        'fixedQuantity': fixedQuantity?.toJson(),
        'fixedRange': fixedRange?.toJson(),
        'fixedRatio': fixedRatio?.toJson(),
        'fixedReference': fixedReference?.toJson(),
        'fixedRelatedArtifact': fixedRelatedArtifact?.toJson(),
        'fixedSampledData': fixedSampledData?.toJson(),
        'fixedSignature': fixedSignature?.toJson(),
        'fixedString': fixedString,
        'fixedTime': fixedTime,
        'fixedTiming': fixedTiming?.toJson(),
        'fixedTriggerDefinition': fixedTriggerDefinition?.toJson(),
        'fixedUnsignedInt': fixedUnsignedInt,
        'fixedUri': fixedUri,
        'fixedUrl': fixedUrl,
        'fixedUsageContext': fixedUsageContext?.toJson(),
        'fixedUuid': fixedUuid,
        'id': id,
        'isModifier': isModifier,
        'isModifierReason': isModifierReason,
        'isSummary': isSummary,
        'label': label,
        'mapping': mapping?.map((e) => e.toJson()).toList(),
        'max': max,
        'maxLength': maxLength,
        'maxValueDate': maxValueDate,
        'maxValueDateTime': maxValueDateTime,
        'maxValueDecimal': maxValueDecimal,
        'maxValueInstant': maxValueInstant,
        'maxValueInteger': maxValueInteger,
        'maxValuePositiveInt': maxValuePositiveInt,
        'maxValueQuantity': maxValueQuantity?.toJson(),
        'maxValueTime': maxValueTime,
        'maxValueUnsignedInt': maxValueUnsignedInt,
        'meaningWhenMissing': meaningWhenMissing,
        'min': min,
        'minValueDate': minValueDate,
        'minValueDateTime': minValueDateTime,
        'minValueDecimal': minValueDecimal,
        'minValueInstant': minValueInstant,
        'minValueInteger': minValueInteger,
        'minValuePositiveInt': minValuePositiveInt,
        'minValueQuantity': minValueQuantity?.toJson(),
        'minValueTime': minValueTime,
        'minValueUnsignedInt': minValueUnsignedInt,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'mustSupport': mustSupport,
        'orderMeaning': orderMeaning,
        'path': path,
        'patternAddress': patternAddress?.toJson(),
        'patternAge': patternAge?.toJson(),
        'patternAnnotation': patternAnnotation?.toJson(),
        'patternAttachment': patternAttachment?.toJson(),
        'patternBase64Binary': patternBase64Binary,
        'patternBoolean': patternBoolean,
        'patternCanonical': patternCanonical,
        'patternCode': patternCode,
        'patternCodeableConcept': patternCodeableConcept?.toJson(),
        'patternCoding': patternCoding?.toJson(),
        'patternContactDetail': patternContactDetail?.toJson(),
        'patternContactPoint': patternContactPoint?.toJson(),
        'patternContributor': patternContributor?.toJson(),
        'patternCount': patternCount?.toJson(),
        'patternDataRequirement': patternDataRequirement?.toJson(),
        'patternDate': patternDate,
        'patternDateTime': patternDateTime,
        'patternDecimal': patternDecimal,
        'patternDistance': patternDistance?.toJson(),
        'patternDosage': patternDosage?.toJson(),
        'patternDuration': patternDuration?.toJson(),
        'patternExpression': patternExpression?.toJson(),
        'patternHumanName': patternHumanName?.toJson(),
        'patternId': patternId,
        'patternIdentifier': patternIdentifier?.toJson(),
        'patternInstant': patternInstant,
        'patternInteger': patternInteger,
        'patternMarkdown': patternMarkdown,
        'patternMeta': patternMeta?.toJson(),
        'patternMoney': patternMoney?.toJson(),
        'patternOid': patternOid,
        'patternParameterDefinition': patternParameterDefinition?.toJson(),
        'patternPeriod': patternPeriod?.toJson(),
        'patternPositiveInt': patternPositiveInt,
        'patternQuantity': patternQuantity?.toJson(),
        'patternRange': patternRange?.toJson(),
        'patternRatio': patternRatio?.toJson(),
        'patternReference': patternReference?.toJson(),
        'patternRelatedArtifact': patternRelatedArtifact?.toJson(),
        'patternSampledData': patternSampledData?.toJson(),
        'patternSignature': patternSignature?.toJson(),
        'patternString': patternString,
        'patternTime': patternTime,
        'patternTiming': patternTiming?.toJson(),
        'patternTriggerDefinition': patternTriggerDefinition?.toJson(),
        'patternUnsignedInt': patternUnsignedInt,
        'patternUri': patternUri,
        'patternUrl': patternUrl,
        'patternUsageContext': patternUsageContext?.toJson(),
        'patternUuid': patternUuid,
        'representation': representation?.map((e) => e).toList(),
        'requirements': requirements,
        'short': short,
        'sliceIsConstraining': sliceIsConstraining,
        'sliceName': sliceName,
        'slicing': slicing?.toJson(),
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  ElementDefinition copyWith({
    List<String>? alias,
    ElementDefinitionBase? base,
    ElementDefinitionBinding? binding,
    List<Coding>? code,
    String? comment,
    List<String>? condition,
    List<ElementDefinitionConstraint>? constraint,
    String? contentReference,
    Address? defaultValueAddress,
    Age? defaultValueAge,
    Annotation? defaultValueAnnotation,
    Attachment? defaultValueAttachment,
    String? defaultValueBase64Binary,
    bool? defaultValueBoolean,
    String? defaultValueCanonical,
    String? defaultValueCode,
    CodeableConcept? defaultValueCodeableConcept,
    Coding? defaultValueCoding,
    ContactDetail? defaultValueContactDetail,
    ContactPoint? defaultValueContactPoint,
    Contributor? defaultValueContributor,
    Count? defaultValueCount,
    DataRequirement? defaultValueDataRequirement,
    String? defaultValueDate,
    String? defaultValueDateTime,
    num? defaultValueDecimal,
    Distance? defaultValueDistance,
    Dosage? defaultValueDosage,
    Duration? defaultValueDuration,
    Expression? defaultValueExpression,
    HumanName? defaultValueHumanName,
    String? defaultValueId,
    Identifier? defaultValueIdentifier,
    String? defaultValueInstant,
    int? defaultValueInteger,
    String? defaultValueMarkdown,
    Meta? defaultValueMeta,
    Money? defaultValueMoney,
    String? defaultValueOid,
    ParameterDefinition? defaultValueParameterDefinition,
    Period? defaultValuePeriod,
    int? defaultValuePositiveInt,
    Quantity? defaultValueQuantity,
    Range? defaultValueRange,
    Ratio? defaultValueRatio,
    Reference? defaultValueReference,
    RelatedArtifact? defaultValueRelatedArtifact,
    SampledData? defaultValueSampledData,
    Signature? defaultValueSignature,
    String? defaultValueString,
    String? defaultValueTime,
    Timing? defaultValueTiming,
    TriggerDefinition? defaultValueTriggerDefinition,
    int? defaultValueUnsignedInt,
    String? defaultValueUri,
    String? defaultValueUrl,
    UsageContext? defaultValueUsageContext,
    String? defaultValueUuid,
    String? definition,
    List<ElementDefinitionExample>? example,
    List<Extension>? fhirExtension,
    Address? fixedAddress,
    Age? fixedAge,
    Annotation? fixedAnnotation,
    Attachment? fixedAttachment,
    String? fixedBase64Binary,
    bool? fixedBoolean,
    String? fixedCanonical,
    String? fixedCode,
    CodeableConcept? fixedCodeableConcept,
    Coding? fixedCoding,
    ContactDetail? fixedContactDetail,
    ContactPoint? fixedContactPoint,
    Contributor? fixedContributor,
    Count? fixedCount,
    DataRequirement? fixedDataRequirement,
    String? fixedDate,
    String? fixedDateTime,
    num? fixedDecimal,
    Distance? fixedDistance,
    Dosage? fixedDosage,
    Duration? fixedDuration,
    Expression? fixedExpression,
    HumanName? fixedHumanName,
    String? fixedId,
    Identifier? fixedIdentifier,
    String? fixedInstant,
    int? fixedInteger,
    String? fixedMarkdown,
    Meta? fixedMeta,
    Money? fixedMoney,
    String? fixedOid,
    ParameterDefinition? fixedParameterDefinition,
    Period? fixedPeriod,
    int? fixedPositiveInt,
    Quantity? fixedQuantity,
    Range? fixedRange,
    Ratio? fixedRatio,
    Reference? fixedReference,
    RelatedArtifact? fixedRelatedArtifact,
    SampledData? fixedSampledData,
    Signature? fixedSignature,
    String? fixedString,
    String? fixedTime,
    Timing? fixedTiming,
    TriggerDefinition? fixedTriggerDefinition,
    int? fixedUnsignedInt,
    String? fixedUri,
    String? fixedUrl,
    UsageContext? fixedUsageContext,
    String? fixedUuid,
    String? id,
    bool? isModifier,
    String? isModifierReason,
    bool? isSummary,
    String? label,
    List<ElementDefinitionMapping>? mapping,
    String? max,
    int? maxLength,
    String? maxValueDate,
    String? maxValueDateTime,
    num? maxValueDecimal,
    String? maxValueInstant,
    int? maxValueInteger,
    int? maxValuePositiveInt,
    Quantity? maxValueQuantity,
    String? maxValueTime,
    int? maxValueUnsignedInt,
    String? meaningWhenMissing,
    int? min,
    String? minValueDate,
    String? minValueDateTime,
    num? minValueDecimal,
    String? minValueInstant,
    int? minValueInteger,
    int? minValuePositiveInt,
    Quantity? minValueQuantity,
    String? minValueTime,
    int? minValueUnsignedInt,
    List<Extension>? modifierExtension,
    bool? mustSupport,
    String? orderMeaning,
    String? path,
    Address? patternAddress,
    Age? patternAge,
    Annotation? patternAnnotation,
    Attachment? patternAttachment,
    String? patternBase64Binary,
    bool? patternBoolean,
    String? patternCanonical,
    String? patternCode,
    CodeableConcept? patternCodeableConcept,
    Coding? patternCoding,
    ContactDetail? patternContactDetail,
    ContactPoint? patternContactPoint,
    Contributor? patternContributor,
    Count? patternCount,
    DataRequirement? patternDataRequirement,
    String? patternDate,
    String? patternDateTime,
    num? patternDecimal,
    Distance? patternDistance,
    Dosage? patternDosage,
    Duration? patternDuration,
    Expression? patternExpression,
    HumanName? patternHumanName,
    String? patternId,
    Identifier? patternIdentifier,
    String? patternInstant,
    int? patternInteger,
    String? patternMarkdown,
    Meta? patternMeta,
    Money? patternMoney,
    String? patternOid,
    ParameterDefinition? patternParameterDefinition,
    Period? patternPeriod,
    int? patternPositiveInt,
    Quantity? patternQuantity,
    Range? patternRange,
    Ratio? patternRatio,
    Reference? patternReference,
    RelatedArtifact? patternRelatedArtifact,
    SampledData? patternSampledData,
    Signature? patternSignature,
    String? patternString,
    String? patternTime,
    Timing? patternTiming,
    TriggerDefinition? patternTriggerDefinition,
    int? patternUnsignedInt,
    String? patternUri,
    String? patternUrl,
    UsageContext? patternUsageContext,
    String? patternUuid,
    List<String>? representation,
    String? requirements,
    String? short,
    bool? sliceIsConstraining,
    String? sliceName,
    ElementDefinitionSlicing? slicing,
    List<ElementDefinitionType>? type,
  }) {
    return ElementDefinition(
      alias: alias ?? this.alias,
      base: base ?? this.base,
      binding: binding ?? this.binding,
      code: code ?? this.code,
      comment: comment ?? this.comment,
      condition: condition ?? this.condition,
      constraint: constraint ?? this.constraint,
      contentReference: contentReference ?? this.contentReference,
      defaultValueAddress: defaultValueAddress ?? this.defaultValueAddress,
      defaultValueAge: defaultValueAge ?? this.defaultValueAge,
      defaultValueAnnotation:
          defaultValueAnnotation ?? this.defaultValueAnnotation,
      defaultValueAttachment:
          defaultValueAttachment ?? this.defaultValueAttachment,
      defaultValueBase64Binary:
          defaultValueBase64Binary ?? this.defaultValueBase64Binary,
      defaultValueBoolean: defaultValueBoolean ?? this.defaultValueBoolean,
      defaultValueCanonical:
          defaultValueCanonical ?? this.defaultValueCanonical,
      defaultValueCode: defaultValueCode ?? this.defaultValueCode,
      defaultValueCodeableConcept:
          defaultValueCodeableConcept ?? this.defaultValueCodeableConcept,
      defaultValueCoding: defaultValueCoding ?? this.defaultValueCoding,
      defaultValueContactDetail:
          defaultValueContactDetail ?? this.defaultValueContactDetail,
      defaultValueContactPoint:
          defaultValueContactPoint ?? this.defaultValueContactPoint,
      defaultValueContributor:
          defaultValueContributor ?? this.defaultValueContributor,
      defaultValueCount: defaultValueCount ?? this.defaultValueCount,
      defaultValueDataRequirement:
          defaultValueDataRequirement ?? this.defaultValueDataRequirement,
      defaultValueDate: defaultValueDate ?? this.defaultValueDate,
      defaultValueDateTime: defaultValueDateTime ?? this.defaultValueDateTime,
      defaultValueDecimal: defaultValueDecimal ?? this.defaultValueDecimal,
      defaultValueDistance: defaultValueDistance ?? this.defaultValueDistance,
      defaultValueDosage: defaultValueDosage ?? this.defaultValueDosage,
      defaultValueDuration: defaultValueDuration ?? this.defaultValueDuration,
      defaultValueExpression:
          defaultValueExpression ?? this.defaultValueExpression,
      defaultValueHumanName:
          defaultValueHumanName ?? this.defaultValueHumanName,
      defaultValueId: defaultValueId ?? this.defaultValueId,
      defaultValueIdentifier:
          defaultValueIdentifier ?? this.defaultValueIdentifier,
      defaultValueInstant: defaultValueInstant ?? this.defaultValueInstant,
      defaultValueInteger: defaultValueInteger ?? this.defaultValueInteger,
      defaultValueMarkdown: defaultValueMarkdown ?? this.defaultValueMarkdown,
      defaultValueMeta: defaultValueMeta ?? this.defaultValueMeta,
      defaultValueMoney: defaultValueMoney ?? this.defaultValueMoney,
      defaultValueOid: defaultValueOid ?? this.defaultValueOid,
      defaultValueParameterDefinition: defaultValueParameterDefinition ??
          this.defaultValueParameterDefinition,
      defaultValuePeriod: defaultValuePeriod ?? this.defaultValuePeriod,
      defaultValuePositiveInt:
          defaultValuePositiveInt ?? this.defaultValuePositiveInt,
      defaultValueQuantity: defaultValueQuantity ?? this.defaultValueQuantity,
      defaultValueRange: defaultValueRange ?? this.defaultValueRange,
      defaultValueRatio: defaultValueRatio ?? this.defaultValueRatio,
      defaultValueReference:
          defaultValueReference ?? this.defaultValueReference,
      defaultValueRelatedArtifact:
          defaultValueRelatedArtifact ?? this.defaultValueRelatedArtifact,
      defaultValueSampledData:
          defaultValueSampledData ?? this.defaultValueSampledData,
      defaultValueSignature:
          defaultValueSignature ?? this.defaultValueSignature,
      defaultValueString: defaultValueString ?? this.defaultValueString,
      defaultValueTime: defaultValueTime ?? this.defaultValueTime,
      defaultValueTiming: defaultValueTiming ?? this.defaultValueTiming,
      defaultValueTriggerDefinition:
          defaultValueTriggerDefinition ?? this.defaultValueTriggerDefinition,
      defaultValueUnsignedInt:
          defaultValueUnsignedInt ?? this.defaultValueUnsignedInt,
      defaultValueUri: defaultValueUri ?? this.defaultValueUri,
      defaultValueUrl: defaultValueUrl ?? this.defaultValueUrl,
      defaultValueUsageContext:
          defaultValueUsageContext ?? this.defaultValueUsageContext,
      defaultValueUuid: defaultValueUuid ?? this.defaultValueUuid,
      definition: definition ?? this.definition,
      example: example ?? this.example,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fixedAddress: fixedAddress ?? this.fixedAddress,
      fixedAge: fixedAge ?? this.fixedAge,
      fixedAnnotation: fixedAnnotation ?? this.fixedAnnotation,
      fixedAttachment: fixedAttachment ?? this.fixedAttachment,
      fixedBase64Binary: fixedBase64Binary ?? this.fixedBase64Binary,
      fixedBoolean: fixedBoolean ?? this.fixedBoolean,
      fixedCanonical: fixedCanonical ?? this.fixedCanonical,
      fixedCode: fixedCode ?? this.fixedCode,
      fixedCodeableConcept: fixedCodeableConcept ?? this.fixedCodeableConcept,
      fixedCoding: fixedCoding ?? this.fixedCoding,
      fixedContactDetail: fixedContactDetail ?? this.fixedContactDetail,
      fixedContactPoint: fixedContactPoint ?? this.fixedContactPoint,
      fixedContributor: fixedContributor ?? this.fixedContributor,
      fixedCount: fixedCount ?? this.fixedCount,
      fixedDataRequirement: fixedDataRequirement ?? this.fixedDataRequirement,
      fixedDate: fixedDate ?? this.fixedDate,
      fixedDateTime: fixedDateTime ?? this.fixedDateTime,
      fixedDecimal: fixedDecimal ?? this.fixedDecimal,
      fixedDistance: fixedDistance ?? this.fixedDistance,
      fixedDosage: fixedDosage ?? this.fixedDosage,
      fixedDuration: fixedDuration ?? this.fixedDuration,
      fixedExpression: fixedExpression ?? this.fixedExpression,
      fixedHumanName: fixedHumanName ?? this.fixedHumanName,
      fixedId: fixedId ?? this.fixedId,
      fixedIdentifier: fixedIdentifier ?? this.fixedIdentifier,
      fixedInstant: fixedInstant ?? this.fixedInstant,
      fixedInteger: fixedInteger ?? this.fixedInteger,
      fixedMarkdown: fixedMarkdown ?? this.fixedMarkdown,
      fixedMeta: fixedMeta ?? this.fixedMeta,
      fixedMoney: fixedMoney ?? this.fixedMoney,
      fixedOid: fixedOid ?? this.fixedOid,
      fixedParameterDefinition:
          fixedParameterDefinition ?? this.fixedParameterDefinition,
      fixedPeriod: fixedPeriod ?? this.fixedPeriod,
      fixedPositiveInt: fixedPositiveInt ?? this.fixedPositiveInt,
      fixedQuantity: fixedQuantity ?? this.fixedQuantity,
      fixedRange: fixedRange ?? this.fixedRange,
      fixedRatio: fixedRatio ?? this.fixedRatio,
      fixedReference: fixedReference ?? this.fixedReference,
      fixedRelatedArtifact: fixedRelatedArtifact ?? this.fixedRelatedArtifact,
      fixedSampledData: fixedSampledData ?? this.fixedSampledData,
      fixedSignature: fixedSignature ?? this.fixedSignature,
      fixedString: fixedString ?? this.fixedString,
      fixedTime: fixedTime ?? this.fixedTime,
      fixedTiming: fixedTiming ?? this.fixedTiming,
      fixedTriggerDefinition:
          fixedTriggerDefinition ?? this.fixedTriggerDefinition,
      fixedUnsignedInt: fixedUnsignedInt ?? this.fixedUnsignedInt,
      fixedUri: fixedUri ?? this.fixedUri,
      fixedUrl: fixedUrl ?? this.fixedUrl,
      fixedUsageContext: fixedUsageContext ?? this.fixedUsageContext,
      fixedUuid: fixedUuid ?? this.fixedUuid,
      id: id ?? this.id,
      isModifier: isModifier ?? this.isModifier,
      isModifierReason: isModifierReason ?? this.isModifierReason,
      isSummary: isSummary ?? this.isSummary,
      label: label ?? this.label,
      mapping: mapping ?? this.mapping,
      max: max ?? this.max,
      maxLength: maxLength ?? this.maxLength,
      maxValueDate: maxValueDate ?? this.maxValueDate,
      maxValueDateTime: maxValueDateTime ?? this.maxValueDateTime,
      maxValueDecimal: maxValueDecimal ?? this.maxValueDecimal,
      maxValueInstant: maxValueInstant ?? this.maxValueInstant,
      maxValueInteger: maxValueInteger ?? this.maxValueInteger,
      maxValuePositiveInt: maxValuePositiveInt ?? this.maxValuePositiveInt,
      maxValueQuantity: maxValueQuantity ?? this.maxValueQuantity,
      maxValueTime: maxValueTime ?? this.maxValueTime,
      maxValueUnsignedInt: maxValueUnsignedInt ?? this.maxValueUnsignedInt,
      meaningWhenMissing: meaningWhenMissing ?? this.meaningWhenMissing,
      min: min ?? this.min,
      minValueDate: minValueDate ?? this.minValueDate,
      minValueDateTime: minValueDateTime ?? this.minValueDateTime,
      minValueDecimal: minValueDecimal ?? this.minValueDecimal,
      minValueInstant: minValueInstant ?? this.minValueInstant,
      minValueInteger: minValueInteger ?? this.minValueInteger,
      minValuePositiveInt: minValuePositiveInt ?? this.minValuePositiveInt,
      minValueQuantity: minValueQuantity ?? this.minValueQuantity,
      minValueTime: minValueTime ?? this.minValueTime,
      minValueUnsignedInt: minValueUnsignedInt ?? this.minValueUnsignedInt,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mustSupport: mustSupport ?? this.mustSupport,
      orderMeaning: orderMeaning ?? this.orderMeaning,
      path: path ?? this.path,
      patternAddress: patternAddress ?? this.patternAddress,
      patternAge: patternAge ?? this.patternAge,
      patternAnnotation: patternAnnotation ?? this.patternAnnotation,
      patternAttachment: patternAttachment ?? this.patternAttachment,
      patternBase64Binary: patternBase64Binary ?? this.patternBase64Binary,
      patternBoolean: patternBoolean ?? this.patternBoolean,
      patternCanonical: patternCanonical ?? this.patternCanonical,
      patternCode: patternCode ?? this.patternCode,
      patternCodeableConcept:
          patternCodeableConcept ?? this.patternCodeableConcept,
      patternCoding: patternCoding ?? this.patternCoding,
      patternContactDetail: patternContactDetail ?? this.patternContactDetail,
      patternContactPoint: patternContactPoint ?? this.patternContactPoint,
      patternContributor: patternContributor ?? this.patternContributor,
      patternCount: patternCount ?? this.patternCount,
      patternDataRequirement:
          patternDataRequirement ?? this.patternDataRequirement,
      patternDate: patternDate ?? this.patternDate,
      patternDateTime: patternDateTime ?? this.patternDateTime,
      patternDecimal: patternDecimal ?? this.patternDecimal,
      patternDistance: patternDistance ?? this.patternDistance,
      patternDosage: patternDosage ?? this.patternDosage,
      patternDuration: patternDuration ?? this.patternDuration,
      patternExpression: patternExpression ?? this.patternExpression,
      patternHumanName: patternHumanName ?? this.patternHumanName,
      patternId: patternId ?? this.patternId,
      patternIdentifier: patternIdentifier ?? this.patternIdentifier,
      patternInstant: patternInstant ?? this.patternInstant,
      patternInteger: patternInteger ?? this.patternInteger,
      patternMarkdown: patternMarkdown ?? this.patternMarkdown,
      patternMeta: patternMeta ?? this.patternMeta,
      patternMoney: patternMoney ?? this.patternMoney,
      patternOid: patternOid ?? this.patternOid,
      patternParameterDefinition:
          patternParameterDefinition ?? this.patternParameterDefinition,
      patternPeriod: patternPeriod ?? this.patternPeriod,
      patternPositiveInt: patternPositiveInt ?? this.patternPositiveInt,
      patternQuantity: patternQuantity ?? this.patternQuantity,
      patternRange: patternRange ?? this.patternRange,
      patternRatio: patternRatio ?? this.patternRatio,
      patternReference: patternReference ?? this.patternReference,
      patternRelatedArtifact:
          patternRelatedArtifact ?? this.patternRelatedArtifact,
      patternSampledData: patternSampledData ?? this.patternSampledData,
      patternSignature: patternSignature ?? this.patternSignature,
      patternString: patternString ?? this.patternString,
      patternTime: patternTime ?? this.patternTime,
      patternTiming: patternTiming ?? this.patternTiming,
      patternTriggerDefinition:
          patternTriggerDefinition ?? this.patternTriggerDefinition,
      patternUnsignedInt: patternUnsignedInt ?? this.patternUnsignedInt,
      patternUri: patternUri ?? this.patternUri,
      patternUrl: patternUrl ?? this.patternUrl,
      patternUsageContext: patternUsageContext ?? this.patternUsageContext,
      patternUuid: patternUuid ?? this.patternUuid,
      representation: representation ?? this.representation,
      requirements: requirements ?? this.requirements,
      short: short ?? this.short,
      sliceIsConstraining: sliceIsConstraining ?? this.sliceIsConstraining,
      sliceName: sliceName ?? this.sliceName,
      slicing: slicing ?? this.slicing,
      type: type ?? this.type,
    );
  }
}
