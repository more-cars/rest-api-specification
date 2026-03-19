@REQ_MCA-4096
Feature: Create PRICE-has-image Relationship

  @RULE_MCA-4103
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-4104
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "PRICE" "Brand New"
      And there exists a "IMAGE" "Price tag"
      And there exists a "has image" relationship between "Brand New" and "Price tag"
      When the user creates a "has image" relationship between "Brand New" and "Price tag"
      Then the response should return with status code 304
