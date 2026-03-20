@REQ_MCA-4114
Feature: Delete PRICE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4115
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4116 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "PRICE" "Brand New"
      And there exists a "IMAGE" "Test photo"
      And there exists a "has image" relationship "R" between "Brand New" and "Test photo"
      When the user deletes the "has image" relationship between "Brand New" and "Test photo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
