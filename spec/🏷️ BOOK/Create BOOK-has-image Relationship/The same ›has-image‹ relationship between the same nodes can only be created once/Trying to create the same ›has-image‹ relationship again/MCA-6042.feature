@REQ_MCA-6034
Feature: Create BOOK-has-image Relationship
  As an API contributor
  I want to be able to attach IMAGES to a BOOK
  So an API consumer can illustrate the BOOK node in a frontend application

  @RULE_MCA-6041
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-6042 @implemented
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      And there exists a "has-image" relationship between "F1 in Numbers" and "Detail photo"
      When the user creates a "has-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the response should return with status code 304
