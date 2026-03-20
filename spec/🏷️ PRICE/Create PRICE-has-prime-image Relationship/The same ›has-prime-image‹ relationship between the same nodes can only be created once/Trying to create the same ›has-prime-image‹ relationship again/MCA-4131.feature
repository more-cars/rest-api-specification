@REQ_MCA-4123
Feature: Create PRICE-has-prime-image Relationship

  @RULE_MCA-4130
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-4131 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "PRICE" "Brand New"
      And there exists a "IMAGE" "Price tag"
      And there exists a "has prime image" relationship between "Brand New" and "Price tag"
      When the user creates a "has prime image" relationship between "Brand New" and "Price tag"
      Then the response should return with status code 304
