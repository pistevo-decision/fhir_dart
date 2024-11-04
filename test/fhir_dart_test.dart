import 'package:fhir_dart/fhir_dart.dart';
import './json_examples/json_examples.dart';
import 'package:test/test.dart';

void main() {
  test(
      'can parse any fhir r4 json into dart object example 1 - account with guarantor',
      () async {
    // 1. parse it into a FhirResource object
    final Account accountWithGurantor = Account.fromJson(
      accountWithGurantorMap,
    );

    // 2. check that the object is not null
    expect(accountWithGurantor, isNotNull);

    // 3. check that the object is of type FhirResource
    expect(accountWithGurantor, isA<FhirResource>());

    // 4. check that the object has a toJson method
    expect(accountWithGurantor.toJson, isNotNull);

    // 5. check some of the properties of the object
    expect(accountWithGurantor.id, 'ewg');
    expect(accountWithGurantor.identifier?.first.value, '654321');
  });

  test('can parse any fhir r4 json into dart object example 2 - bundle',
      () async {
    // 1. parse it into a FhirResource object
    final Bundle bundle = Bundle.fromJson(
      bundleExample,
    );

    // 2. check that the object is not null
    expect(bundle, isNotNull);

    // 3. check that the object is of type FhirResource
    expect(bundle, isA<FhirResource>());

    // 4. check that the object has a toJson method
    expect(bundle.toJson, isNotNull);

    // 5. check some of the properties of the object
    expect(bundle.id, 'bundle-example');
    expect(bundle.meta?.lastUpdated, '2014-08-18T01:43:30Z');
    expect(bundle.entry, isA<List<BundleEntry>>());

    // 6. check that the first bundle entry is not null
    expect(bundle.entry?.first, isNotNull);

    // 7. check that the first bundle entry has a resource
    expect(bundle.entry?.first.resource, isA<FhirResource>());

    // 8. check that the first bundle entry resource is of type MedicationRequest
    expect(bundle.entry?.first.resource, isA<MedicationRequest>());
  });

  test('can parse any fhir r4 json into dart object example 3 - Questionnaire',
      () async {
    // 1. parse it into a FhirResource object
    final Questionnaire questionnaire = Questionnaire.fromJson(
      questionnaireExample,
    );

    // 2. check that the object is not null
    expect(questionnaire, isNotNull);

    // 3. check that the object is of type FhirResource
    expect(questionnaire, isA<FhirResource>());

    // 4. check that the object has a toJson method
    expect(questionnaire.toJson, isNotNull);

    // 5. check some of the properties of the object
    expect(questionnaire.id, 'phq-9-questionnaire');
    expect(questionnaire.meta?.profile?.first,
        'http://hl7.org/fhir/StructureDefinition/cqf-questionnaire');
    expect(questionnaire.meta?.tag?.first.system,
        'http://terminology.hl7.org/CodeSystem/v3-ActReason');
    expect(questionnaire.text?.status, 'generated');
    expect(questionnaire.fhirExtension?.first.url,
        'http://hl7.org/fhir/StructureDefinition/cqf-library');
    expect(questionnaire.identifier?.first.use, 'official');
    expect(questionnaire.version, '1.0.0');
    expect(questionnaire.title, 'Patient Health Questionnaire (PHQ-9)');
    expect(questionnaire.status, 'draft');
    expect(questionnaire.subjectType?.first, 'Patient');
    expect(questionnaire.code?.first.system, 'http://loinc.org');
    expect(questionnaire.item?.first.linkId, 'LittleInterest');
  });

  // patient example
  test('can parse any fhir r4 json into dart object example 4 - Patient',
      () async {
    // 1. parse it into a FhirResource object
    final Patient patient = Patient.fromJson(
      patientExample,
    );

    // 2. check that the object is not null
    expect(patient, isNotNull);

    // 3. check that the object is of type FhirResource
    expect(patient, isA<FhirResource>());

    // 4. check that the object has a toJson method
    expect(patient.toJson, isNotNull);

    // 5. check some of the properties of the object
    expect(patient.id, 'pat1');
    expect(
      patient.meta?.tag?.first.system,
      'http://terminology.hl7.org/CodeSystem/v3-ActReason',
    );
    expect(patient.active, true);
    expect(patient.name?.first.family, 'Donald');

    expect(patient.photo?.first.contentType, 'image/gif');
  });

  test(
      'can parse any fhir r4 json into dart object example 5 - consentExampleEmergency',
      () async {
    // 1. parse it into a FhirResource object
    final Consent consent = Consent.fromJson(
      consentExampleEmergency,
    );

    // 2. check that the object is not null
    expect(consent, isNotNull);

    // 3. check that the object is of type FhirResource
    expect(consent, isA<FhirResource>());

    // 4. check that the object has a toJson method
    expect(consent.toJson, isNotNull);

    // 5. check some of the properties of the object
    expect(consent.id, 'consent-example-Emergency');
    expect(consent.status, 'active');
    expect(consent.scope.coding?.first.code, 'patient-privacy');
    expect(consent.patient?.display, 'P. van de Heuvel');
  });

  test('can copy a fhir r4 object', () async {
    // 1. parse it into a FhirResource object
    final Patient patient = Patient.fromJson(
      patientExample,
    );

    // 2. copy the object
    final Patient copiedPatient = patient.copyWith();

    // 3. check that the copied object is not null
    expect(copiedPatient, isNotNull);

    // 4. check that the copied object is of type FhirResource
    expect(copiedPatient, isA<FhirResource>());

    // 5. check that the copied object has a toJson method
    expect(copiedPatient.toJson, isNotNull);

    // 6. check some of the properties of the copied object
    expect(copiedPatient.id, patient.id);
    expect(
        copiedPatient.meta?.tag?.first.system, patient.meta?.tag?.first.system);
    expect(copiedPatient.active, patient.active);
    expect(copiedPatient.name?.first.family, patient.name?.first.family);
    expect(copiedPatient.photo?.first.contentType,
        patient.photo?.first.contentType);
  });

  test('can copy a fhir r4 object with new values', () async {
    // 1. parse it into a FhirResource object
    final Patient patient = Patient.fromJson(
      patientExample,
    );

    // 2. copy the object
    final Patient copiedPatient = patient.copyWith(
      id: 'newId',
      active: false,
      name: [
        HumanName(family: 'newFamily'),
      ],
      photo: [
        Attachment(contentType: 'newContentType'),
      ],
    );

    // 3. check that the copied object is not null
    expect(copiedPatient, isNotNull);

    // 4. check that the copied object is of type FhirResource
    expect(copiedPatient, isA<FhirResource>());

    // 5. check that the copied object has a toJson method
    expect(copiedPatient.toJson, isNotNull);

    // 6. check some of the properties of the copied object
    expect(copiedPatient.id, 'newId');
    expect(
        copiedPatient.meta?.tag?.first.system, patient.meta?.tag?.first.system);
    expect(copiedPatient.active, false);
    expect(copiedPatient.name?.first.family, 'newFamily');
    expect(copiedPatient.photo?.first.contentType, 'newContentType');
  });
}
