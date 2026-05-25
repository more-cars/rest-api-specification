@REQ_MCA-6045
Feature: Get all BOOK-has-image Relationships
  As an API consumer
  I want to be able to fetch all IMAGES that are connected to a BOOK
  So I can get a better picture of it

  @RULE_MCA-6050
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-6051 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid BOOK ID
      Given "BOOK" "F1 in Numbers" does NOT exist
      When the user requests all "has-image" relationships for "F1 in Numbers"
      Then the request should be rejected with status code 404
