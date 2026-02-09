@REQ_MCA-704
Feature: Get all COMPANY-has-image Relationships
  As an API consumer\
  I want to be fetch all IMAGES that are attached to a COMPANY\
  So I can create an image gallery for the COMPANY

  @RULE_MCA-707
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given COMPANY

    @TEST_MCA-708 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "COMPANY" "Audi AG"
      And there exist 0 "has image" relationships for "Audi AG"
      When the user requests all "has image" relationships for "Audi AG"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
