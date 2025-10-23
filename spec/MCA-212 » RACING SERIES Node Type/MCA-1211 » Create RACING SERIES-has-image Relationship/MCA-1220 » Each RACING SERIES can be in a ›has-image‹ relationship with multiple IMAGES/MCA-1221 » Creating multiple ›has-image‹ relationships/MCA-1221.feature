@REQ_MCA-1211
Feature: Create RACING SERIES-has-image Relationship

  @RULE_MCA-1220
  Rule: Each RACING SERIES can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-1221 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "RACING SERIES" "DTM"
      And there exists a "IMAGE" "BMW M4 DTM poster"
      And there exists a "IMAGE" "BMW M4 DTM poster (Alternative)"
      When the user creates a "has image" relationship between "DTM" and "BMW M4 DTM poster"
      And the user creates a "has image" relationship between "DTM" and "BMW M4 DTM poster (Alternative)"
      Then there should exist a "has image" relationship between "DTM" and "BMW M4 DTM poster"
      And there should exist a "has image" relationship between "DTM" and "BMW M4 DTM poster (Alternative)"
