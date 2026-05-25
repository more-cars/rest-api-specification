@REQ_MCA-5953
Feature: Create BOOK-covers-car-model-variant Relationship

  @RULE_MCA-5960
  Rule: The same ›covers-car-model-variant‹ relationship between the same nodes can only be created once

    @TEST_MCA-5961 @implemented
    Scenario: Trying to create the same ›covers-car-model-variant‹ relationship again
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "CAR MODEL VARIANT" "Ferrari SF-25"
      And there exists a "covers car model variant" relationship between "F1 in Numbers" and "Ferrari SF-25"
      When the user creates a "covers car model variant" relationship between "F1 in Numbers" and "Ferrari SF-25"
      Then the response should return with status code 304
