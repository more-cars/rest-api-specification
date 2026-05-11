@REQ_MCA-5439
Feature: Update BRAND Node
  As an API contributor
  I want to be able to update a BRAND
  So I can add missing information or fix incorrect data

  @RULE_MCA-5440
  Rule: Requests to update a BRAND are accepted when the provided data is valid

    @TEST_MCA-5441
    Scenario: Updating a BRAND with valid data
      Given there exists a "BRAND" "BMW"
      When the user updates the node "BMW" with the following data
        | key          | value                      |
        | name         | BMW_2                      |
        | full_name    | Bayerische Motoren Werke_2 |
        | founded      | 1918                       |
        | defunct      |                            |
        | wmi          | WBA_2                      |
        | hsn          | 0005_2                     |
        | country_code | DE_2                       |
      Then the request should be confirmed with status code 201
