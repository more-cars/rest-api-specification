@REQ_MCA-373
Feature: Sort node collection
  As an API consumer\
  I want to be able to request NODE collections as sorted lists\
  So I can find information faster and with fewer requests

  @RULE_MCA-725
  Rule: Sorting parameters are applied and return the collection in the correct order

    @TEST_MCA-731 @implemented
    Scenario Outline: Expecting a sorted collection to be ordered correctly
      Given there exist 0 "<node_type>"s
      And there exists a "<node_type>" "<node_1>" with "name" "<node_1>"
      And there exists a "<node_type>" "<node_2>" with "name" "<node_2>"
      And there exists a "<node_type>" "<node_3>" with "name" "<node_3>"
      When the user requests a "<node_type>" collection, sorted "desc" by "name"
      Then the response should return a collection of 3 "<node_type>"s
      And the response should contain a node with "name" "<node_2>" at position 1
      And the response should contain a node with "name" "<node_3>" at position 2
      And the response should contain a node with "name" "<node_1>" at position 3

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
