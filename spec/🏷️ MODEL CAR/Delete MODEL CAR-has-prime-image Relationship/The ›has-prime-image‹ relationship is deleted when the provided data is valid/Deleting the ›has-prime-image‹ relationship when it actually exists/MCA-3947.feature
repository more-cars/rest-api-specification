@REQ_MCA-3945
Feature: Delete MODEL CAR-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3946
  Rule: The ›has-prime-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3947 @implemented
    Scenario: Deleting the ›has-prime-image‹ relationship when it actually exists
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "IMAGE" "Trabbi photo"
      And there exists a "has prime image" relationship "R" between "F40 Scale Model" and "Trabbi photo"
      When the user deletes the "has prime image" relationship between "F40 Scale Model" and "Trabbi photo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
