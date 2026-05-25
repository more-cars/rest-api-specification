@REQ_MCA-5971
Feature: Delete BOOK-covers-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from BOOKS
  So I can clean up bad data or test data

  @RULE_MCA-5972
  Rule: The ›covers-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5973 @implemented
    Scenario: Deleting the ›covers-car-model-variant‹ relationship when it actually exists
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "CAR MODEL VARIANT" "Toyota Corolla"
      And there exists a "covers car model variant" relationship "R" between "F1 in Numbers" and "Toyota Corolla"
      When the user deletes the "covers car model variant" relationship between "F1 in Numbers" and "Toyota Corolla"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
