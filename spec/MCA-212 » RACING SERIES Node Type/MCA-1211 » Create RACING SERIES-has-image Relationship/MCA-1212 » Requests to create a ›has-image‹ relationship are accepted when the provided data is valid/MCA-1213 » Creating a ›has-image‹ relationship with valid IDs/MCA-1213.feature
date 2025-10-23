@REQ_MCA-1211
Feature: Create RACING SERIES-has-image Relationship

  @RULE_MCA-1212
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1213 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "IMAGE" "BMW M4 DTM poster"
      When the user creates a "has image" relationship between "DTM" and "BMW M4 DTM poster"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
