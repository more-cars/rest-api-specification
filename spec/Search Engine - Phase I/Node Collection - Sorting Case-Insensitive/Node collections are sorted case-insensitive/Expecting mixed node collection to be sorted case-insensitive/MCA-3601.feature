@REQ_MCA-3599
Feature: Node Collection - Sorting Case-Insensitive
  As an API consumer\
  When I request a sorted node collection\
  I want the sorting algorithm to ignore the case\
  So I don't receive two groups of items (1x sorted uppercase, 1x sorted lowercase)

  @RULE_MCA-3600
  Rule: Node collections are sorted case-insensitive

    @TEST_MCA-3601 @implemented
    Scenario: Expecting mixed node collection to be sorted case-insensitive
      Given there exists a "MAGAZINE" "A" with "name" "sport auto"
      And there exists a "MAGAZINE" "B" with "name" "Top Gear"
      And there exists a "MAGAZINE" "C" with "name" "Auto Bild"
      And there exists a "MAGAZINE" "D" with "name" "evo UK"
      When the user requests a "MAGAZINE" collection, sorted "ASC" by "name"
      Then the response should contain "MAGAZINE" "C" at position 1
      And the response should contain "MAGAZINE" "D" at position 2
      And the response should contain "MAGAZINE" "A" at position 3
      And the response should contain "MAGAZINE" "B" at position 4
      When the user requests a "MAGAZINE" collection, sorted "DESC" by "name"
      Then the response should contain "MAGAZINE" "C" at position 4
      And the response should contain "MAGAZINE" "D" at position 3
      And the response should contain "MAGAZINE" "A" at position 2
      And the response should contain "MAGAZINE" "B" at position 1
