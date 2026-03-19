@REQ_MCA-4096
Feature: Create PRICE-has-image Relationship

  @RULE_MCA-4097
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4098
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "PRICE" "Brand New"
      And there exists a "IMAGE" "Price tag"
      When the user creates a "has image" relationship between "Brand New" and "Price tag"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | partner_node      |
