@REQ_MCA-4841
Feature: Create RACING SESSION-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING SESSION
  So an API consumer can illustrate the RACING SESSION node in a frontend application

  @RULE_MCA-4842
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

  @TEST_MCA-4843 @implemented
  Scenario: Creating a ›has-video‹ relationship with valid IDs
    Given there exists a "RACING SESSION" "Qualifying"
    And there exists a "VIDEO" "Promo Video"
    When the user creates a "has-video" relationship between "Qualifying" and "Promo Video"
    Then the request should be confirmed with status code 204
