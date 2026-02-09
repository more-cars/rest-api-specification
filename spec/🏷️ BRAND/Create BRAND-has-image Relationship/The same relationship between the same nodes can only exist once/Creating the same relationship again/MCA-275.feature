@REQ_MCA-240
Feature: Create BRAND-has-image Relationship
  As an API contributor\
  I want to be able to attach IMAGES to BRANDS\
  So an API consumer can illustrate BRAND nodes in a frontend application

  @RULE_MCA-271
  Rule: The same relationship between the same nodes can only exist once

    @TEST_MCA-275 @implemented
    Scenario: Creating the same relationship again
      Given there exists a "BRAND" "Maserati"
      And there exists an "IMAGE" "logo"
      And there exists a "has image" relationship between "Maserati" and "logo"
      When the user creates a "has image" relationship between "Maserati" and "logo"
      Then the response should return with status code 304
