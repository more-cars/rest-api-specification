@REQ_MCA-711
Feature: Delete COMPANY-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from COMPANIES
  So I can clean up bad data or test data

  @RULE_MCA-712
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-713
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "COMPANY" "Audi AG"
      And there exists a "IMAGE" "BMW logo"
      And there exists a "has-image" relationship "R" between "Audi AG" and "BMW logo"
      When the user deletes the "has-image" relationship between "Audi AG" and "BMW logo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
