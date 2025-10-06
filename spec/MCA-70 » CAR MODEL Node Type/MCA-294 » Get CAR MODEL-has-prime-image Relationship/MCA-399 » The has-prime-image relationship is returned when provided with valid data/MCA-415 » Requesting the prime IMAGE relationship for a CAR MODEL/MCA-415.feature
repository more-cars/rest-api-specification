@REQ_MCA-294
Feature: Get CAR MODEL-has-prime-image Relationship
  As an API consumer\
  I want to be able to request the prime image of a CAR MODEL\
  So I can represent the node in the best possible form in my frontend application\
  (Because I don't know which image from the node's gallery is the best one)

  @RULE_MCA-399
  Rule: The has-prime-image relationship is returned when provided with valid data

    @TEST_MCA-415 @implemented
    Scenario: Requesting the prime IMAGE relationship for a CAR MODEL
      Given there exists a "CAR MODEL" "Mondeo"
      And there exists a "has prime image" relationship "R" for "Mondeo"
      When the user requests the "has prime image" relationship for "Mondeo"
      Then the response should return with status code 200
      And the response should contain the id of relationship "R"
