@REQ_MCA-380
Feature: Filter node collection by property
  As an API consumer\
  I want to be able to filter a NODE collection by one of its properties\
  So I can find information faster in the reduced result list

  @RULE_MCA-737
  Rule: A filtered collection only returns those nodes that match the filter

    @TEST_MCA-743 @implemented
    Scenario Outline: Expecting a filtered collection to only return those nodes that match the filter
      Given there exist 0 "<node_type>"s
      And there exists a "<node_type>" "<node_1>" with "name" "<node_1>"
      And there exists a "<node_type>" "<node_2>" with "name" "<node_2>"
      And there exists a "<node_type>" "<node_3>" with "name" "<node_3>"
      When the user requests a "<node_type>" collection, filtered by "name" "eq" "<node_1>"
      Then the response should return with status code 200
      And the response should return a collection of 1 "<node_type>"s

      Examples:
        | node_type         | node_1             | node_2             | node_3              |
        | COMPANY           | AUDI AG            | Ford Motor Company | BMW AG              |
        | BRAND             | Audi               | Ford               | BMW                 |
        | CAR MODEL         | A8                 | Focus              | B3 Alpina           |
        | CAR MODEL VARIANT | Audi TT            | Ford Mustang       | BMW M3              |
        | RACE TRACK        | Anneau du Rhin     | Falkenberg logo    | Baku City Circuit   |
        | TRACK LAYOUT      | A loop             | Grand Prix Circuit | B loop              |
        | RACING SERIES     | A1 GP              | Formula 1          | BTCC                |
        | RACING EVENT      | A1 GP Kyalami 2009 | F1 GP Monaco 2026  | BTCC Donington 2026 |
        | RACING SESSION    | 1st Practice       | 3rd Practice       | 2nd Practice        |
        | RACING GAME       | Assetto Corsa      | Ford Racing        | Buggy Boy           |
        | GAMING PLATFORM   | Android            | GameCube logo      | Commodore C64       |
        | MAGAZINE          | Audi Scene         | Ford Magazin       | BMW Scene           |
