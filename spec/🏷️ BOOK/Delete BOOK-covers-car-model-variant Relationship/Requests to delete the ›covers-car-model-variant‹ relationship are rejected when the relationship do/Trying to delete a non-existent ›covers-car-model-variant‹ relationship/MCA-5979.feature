@REQ_MCA-5971
Feature: Delete BOOK-covers-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from BOOKS
  So I can clean up bad data or test data

  @RULE_MCA-5978
  Rule: Requests to delete the ›covers-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5979 @implemented
    Scenario: Trying to delete a non-existent ›covers-car-model-variant‹ relationship
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "CAR MODEL VARIANT" "Toyota Corolla"
      And there exists NO "covers car model variant" relationship between "F1 in Numbers" and "Toyota Corolla"
      When the user deletes the "covers car model variant" relationship between "F1 in Numbers" and "Toyota Corolla"
      Then the request should be rejected with status code 404
