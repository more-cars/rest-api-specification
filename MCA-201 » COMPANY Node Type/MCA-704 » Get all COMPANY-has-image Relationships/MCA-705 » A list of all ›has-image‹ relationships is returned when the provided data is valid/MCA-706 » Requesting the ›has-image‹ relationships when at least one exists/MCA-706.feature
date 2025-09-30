@REQ_MCA-704
Feature: Get all COMPANY-has-image Relationships
  As an API consumer\
  I want to be fetch all IMAGES that are attached to a COMPANY\
  So I can create an image gallery for the COMPANY

  @RULE_MCA-705
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-706
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "COMPANY" "Audi AG"
      And there exist 3 "has-image" relationships for "Audi AG"
      When the user requests all "has-image" relationships for "Audi AG"
      Then the request should be confirmed with status code 200
      And the response should contain a collection of 3 "has-image" relationships
