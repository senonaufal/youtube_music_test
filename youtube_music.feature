Feature: Youtube Music

  @go_to_page
  Scenario: User should be able to go to Home, Explore, Library, and Upgrade page
    Given user is on youtube music web
    # User can select one of these pages: Home, Explore, Library, Upgrade
    When user go to "Home" page
    Then user is on "Home" page
  
  @search_music
  Scenario: User should be able to search music
    Given user is on youtube music web
    When user go to "Search" page
    And user fill "Lany" on search field
    Then showing result of "Lany"
  
  @play_pause_next_previous
  Scenario: User should be able to play, pause, next, and previous the music player
    Given user is on youtube music web
    When user go to "Search" page
    And user fill "Lany" on search field
    Then showing result of "Lany"
    When user click button play on the first list of the result
    Then music is starting to play
    And user click button "Pause" on music player
    And user click button "Next" on music player
    And user click button "Previous" on music player