Feature: Adding

  Scenario Outline: Add two numbers
    Given the input "<input>"
    When the claculator is run
    Then the output should be "<output>"

    # 在 Examples 中的每一列都會被展開成一個腳本去測試
    Examples:
    | input | output |
    | 2+2   | 4      |
    | 98+1  | 99     |
