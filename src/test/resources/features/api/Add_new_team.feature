Feature: Add new team API and DB validation
@db       #api->db
  Scenario: Post new team and verify in database
    Given User logged in to Bookit api as teacher role
    When Users sends POST request to "/api/teams/team" with following info:
      | campus-location | VA |
      | batch-number | 26 |
      | team-name | Wooden Spoon18041985 |
    Then status code should be 201
    And Database should persist same team info
    And User deletes previously created team

