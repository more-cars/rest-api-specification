@REQ_MCA-664
Feature: Create COMPANY-has-prime-image Relationship
  As an API contributor\
  I want to be able to select one image to be used as prime image for a COMPANY\
  So the node can be represented as good as possible in any frontend application

  @RULE_MCA-671
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-672
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "COMPANY" "Bugatti"
      And there exists a "IMAGE" "logo"
      And there exists a "has-prime-image" relationship between "Bugatti" and "logo"
      When the user creates a "has-prime-image" relationship between "Bugatti" and "logo"
      Then the response should return with status code 304
      And the response should return an empty body
