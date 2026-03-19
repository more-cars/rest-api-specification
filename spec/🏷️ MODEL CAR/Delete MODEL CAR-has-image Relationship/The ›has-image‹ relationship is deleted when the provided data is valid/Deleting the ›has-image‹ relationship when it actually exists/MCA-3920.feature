@REQ_MCA-3918
Feature: Delete MODEL CAR-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MODEL CARS
  So I can clean up bad data or test data

  @RULE_MCA-3919
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3920
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "MODEL CAR" "F40 Scale Model"
      And there exists a "IMAGE" "Trabbi photo"
      And there exists a "has image" relationship "R" between "F40 Scale Model" and "Trabbi photo"
      When the user deletes the "has image" relationship between "F40 Scale Model" and "Trabbi photo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
