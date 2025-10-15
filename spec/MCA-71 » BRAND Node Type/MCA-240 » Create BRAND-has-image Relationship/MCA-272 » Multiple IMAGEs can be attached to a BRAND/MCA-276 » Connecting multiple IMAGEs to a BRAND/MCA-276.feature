@REQ_MCA-240
Feature: Create BRAND-has-image Relationship
  As an API contributor\
  I want to be able to attach IMAGES to BRANDS\
  So an API consumer can illustrate BRAND nodes in a frontend application

  @RULE_MCA-272
  Rule: Multiple IMAGEs can be attached to a BRAND

    @TEST_MCA-276 @implemented
    Scenario: Connecting multiple IMAGEs to a BRAND
      Given there exists a "BRAND" "Maserati"
      And there exists an "IMAGE" "logo 1960"
      And there exists an "IMAGE" "logo 1980"
      And there exists an "IMAGE" "logo 2010"
      When the user creates a "has image" relationship between "Maserati" and "logo 1960"
      And the user creates a "has image" relationship between "Maserati" and "logo 1980"
      And the user creates a "has image" relationship between "Maserati" and "logo 2010"
      Then there should exist a "has image" relationship between "Maserati" and "logo 1960"
      And there should exist a "has image" relationship between "Maserati" and "logo 1980"
      And there should exist a "has image" relationship between "Maserati" and "logo 2010"
