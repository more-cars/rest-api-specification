@REQ_MCA-6018
Feature: Get BOOK-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a BOOK
  So I can instantly load the VIDEO that best represents the BOOK

  @RULE_MCA-6021
  Rule: An empty response is returned when there exists no ›has-main-video‹ relationship for the given BOOK

    @TEST_MCA-6022 @implemented
    Scenario: Requesting the ›has-main-video‹ relationship when there exists none
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists NO "has-main-video" relationship for "F1 in Numbers"
      When the user requests the "has-main-video" relationship for "F1 in Numbers"
      Then the request should be confirmed with status code 200
      But the response should contain no data
