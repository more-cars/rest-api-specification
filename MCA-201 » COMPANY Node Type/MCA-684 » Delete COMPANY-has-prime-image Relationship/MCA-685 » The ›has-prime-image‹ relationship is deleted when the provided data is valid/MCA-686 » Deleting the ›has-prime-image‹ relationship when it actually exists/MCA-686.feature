@REQ_MCA-684
Feature: Delete COMPANY-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from COMPANIES
  So I can clean up bad data or test data

  @RULE_MCA-685
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-686
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "IMAGE" "ferrari logo"
      And there exists a "has-prime-image" relationship "R" between "BMW AG" and "ferrari logo"
      When the user deletes the "has-prime-image" relationship between "BMW AG" and "ferrari logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
