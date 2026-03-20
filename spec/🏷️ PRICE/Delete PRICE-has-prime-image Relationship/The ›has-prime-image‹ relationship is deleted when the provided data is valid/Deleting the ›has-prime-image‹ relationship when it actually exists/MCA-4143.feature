@REQ_MCA-4141
Feature: Delete PRICE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from PRICES
  So I can clean up bad data or test data

  @RULE_MCA-4142
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4143 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "PRICE" "Brand New"
      And there exists a "IMAGE" "Test price"
      And there exists a "has prime image" relationship "R" between "Brand New" and "Test price"
      When the user deletes the "has prime image" relationship between "Brand New" and "Test price"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
