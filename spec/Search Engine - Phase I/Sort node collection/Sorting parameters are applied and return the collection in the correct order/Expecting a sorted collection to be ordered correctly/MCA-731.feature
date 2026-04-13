@REQ_MCA-373
Feature: Sort node collection
  As an API consumer\
  I want to be able to request NODE collections as sorted lists\
  So I can find information faster and with fewer requests

  @RULE_MCA-725
  Rule: Sorting parameters are applied and return the collection in the correct order

    @TEST_MCA-731 @implemented
    Scenario Outline: Expecting a sorted collection to be ordered correctly
      Given there exists a "<node_type>" "<node_1>" with "<node_property>" "<node_1>"
      And there exists a "<node_type>" "<node_2>" with "<node_property>" "<node_2>"
      And there exists a "<node_type>" "<node_3>" with "<node_property>" "<node_3>"
      When the user requests a "<node_type>" collection, sorted "desc" by "<node_property>"
      Then the response should return a collection of 3 "<node_type>"s
      And the response should contain a node with "<node_property>" "<node_2>" at position 1
      And the response should contain a node with "<node_property>" "<node_3>" at position 2
      And the response should contain a node with "<node_property>" "<node_1>" at position 3

      Examples:
        | node_type         | node_property | node_1             | node_2               | node_3              |
        | COMPANY           | name          | AUDI AG            | Ford Motor Company   | BMW AG              |
        | BRAND             | name          | Audi               | Ford                 | BMW                 |
        | CAR MODEL         | name          | A8                 | Focus                | B3 Alpina           |
        | CAR MODEL VARIANT | name          | Audi TT            | Ford Mustang         | BMW M3              |
        | PRICE             | price         | 10000              | 30000                | 20000               |
        | RACE TRACK        | name          | Anneau du Rhin     | Falkenberg logo      | Baku City Circuit   |
        | TRACK LAYOUT      | name          | A loop             | Grand Prix Circuit   | B loop              |
        | RACING SERIES     | name          | A1 GP              | Formula 1            | BTCC                |
        | RACING EVENT      | name          | A1 GP Kyalami 2009 | F1 GP Monaco 2026    | BTCC Donington 2026 |
        | RACING SESSION    | name          | 1st Practice       | 3rd Practice         | 2nd Practice        |
        | SESSION RESULT    | driver_name   | P1                 | P3                   | P2                  |
        | LAP TIME          | driver_name   | Fast lap           | Slow lap             | Quick lap           |
        | RACING GAME       | name          | Assetto Corsa      | Ford Racing          | Buggy Boy           |
        | GAMING PLATFORM   | name          | Android            | GameCube logo        | Commodore C64       |
        | MODEL CAR         | name          | Audi TT 1:64       | Ford Mustang 1:64    | BMW M3 1:64         |
        | MODEL CAR BRAND   | name          | Bburago            | Matchbox             | Hot Wheels          |
        | MAGAZINE          | name          | Audi Scene         | Ford Magazin         | BMW Scene           |
        | MAGAZINE ISSUE    | title         | Audi Scene 01_2025 | Ford Magazin 01_2025 | BMW Scene 01_2025   |
        | RATING            | rating_value  | 75                 | 95                   | 85                  |
        | PROGRAMME         | name          | Fifth Gear         | Top Gear             | Grip                |
        | PROGRAMME EPISODE | title         | A Massive Hunt     | Funeral for a Ford   | Breaking, badly     |
        | MOTOR SHOW        | name          | Geneva Motor Show  | Tokyo Motor Show     | IAA Frankfurt       |
