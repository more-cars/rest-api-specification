@REQ_MCA-6018
Feature: Get BOOK-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a BOOK
  So I can instantly load the VIDEO that best represents the BOOK

  @RULE_MCA-6019
  Rule: The ›has-main-video‹ relationship is returned when the provided data is valid

    @TEST_MCA-6020 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when one exists
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "has-main-video" relationship "R" for "F1 in Numbers"
      When the user requests the "has-main-video" relationship for "F1 in Numbers"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
