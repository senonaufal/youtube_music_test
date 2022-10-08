class YoutubeMusicPage < SitePrism::Page
  # page list
  element :page_homee, :xpath, "//yt-formatted-string[normalize-space()='Home']"
  element :page_explore, :xpath, "//yt-formatted-string[normalize-space()='Explore']"
  element :page_library, :xpath, "//yt-formatted-string[@class='tab-title style-scope ytmusic-pivot-bar-item-renderer'][normalize-space()='Library']"
  element :page_upgrade, :xpath, "//yt-formatted-string[normalize-space()='Upgrade']"

  # funtional button
  element :button_search, :xpath, "//tp-yt-paper-icon-button[@class='search-icon style-scope ytmusic-search-box']"
  element :field_search, :xpath, "//input[@id='input']"
  element :button_play_on_page, :xpath, "/yt-icon[@class='icon style-scope ytmusic-play-button-renderer']"
  element :button_play_pause, :xpath, "//tp-yt-paper-icon-button[@id='play-pause-button']"
  element :button_next, :xpath, "//tp-yt-paper-icon-button[@class='next-button style-scope ytmusic-player-bar']"
  element :button_previous, :xpath, "//tp-yt-paper-icon-button[@class='previous-button style-scope ytmusic-player-bar']"
  element :slider_music_bar, :xpath, "//tp-yt-paper-slider[@class='style-scope ytmusic-player-bar']"

  # expected element when open page
  element :title_charts, :xpath, "//a[normalize-space()='Charts']"
  element :title_new_albums_and_singles, :xpath, "//a[normalize-space()='New albums & singles']"
  element :button_playlists, :xpath, "//yt-formatted-string[normalize-space()='Playlists']"
  element :button_try_it_free, :xpath, "//yt-formatted-string[contains(text(),'Try it free')]//parent::tp-yt-paper-button"
end
