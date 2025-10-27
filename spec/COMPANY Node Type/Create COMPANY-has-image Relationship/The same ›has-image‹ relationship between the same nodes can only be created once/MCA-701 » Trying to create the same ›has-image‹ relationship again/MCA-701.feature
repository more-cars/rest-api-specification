@REQ_MCA-693
Feature: Create COMPANY-has-image Relationship
  As an API contributor\
  I want to be able to attach IMAGES to COMPANIES\
  So an API consumer can illustrate COMPANY nodes in a frontend application

  @RULE_MCA-700
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-701 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "COMPANY" "Audi AG"
      And there exists a "IMAGE" "logo"
      And there exists a "has-image" relationship between "Audi AG" and "logo"
      When the user creates a "has-image" relationship between "Audi AG" and "logo"
      Then the response should return with status code 304
