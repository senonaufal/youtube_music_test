Given(/^user is on youtube music web$/) do
  visit ENV['BASE_URL']
  waiting_for_page_ready
end

When(/^user go to "(.*)"$/) do |page_type|
  case page_type
  when 'Home'
    @pages.youtube_music_page.page_home.click
  when 'Explore'
    @pages.youtube_music_page.page_explore.click
  when 'Library'
    @pages.youtube_music_page.page_library.click
  when 'Upgrade'
    @pages.youtube_music_page.page_upgrade.click
  when 'Search'
    @pages.youtube_music_page.button_search.click
end

Then(/^user is on "(.*)" page$/) do |page_index_type|
  waiting_for_page_ready
  case page_index_type
  when 'Home'
    expect(@pages.youtube_music_page.has_title_charts?).to be true
  when 'Explore'
    expect(@pages.youtube_music_page.has_title_new_albums_and_singles?).to be true
  when 'Library'
    expect(@pages.youtube_music_page.has_button_playlists?).to be true
  when 'Upgrade'
    expect(@pages.youtube_music_page.has_button_try_it_free?).to be true
end

And(/^user fill "(.*)" on search field$/) do |keyword|
  case keyword
  when 'Lany'
    @pages.youtube_music_page.field_search.set 'Lany'
  when 'Lauv'
    @pages.youtube_music_page.field_search.set 'Lauv'
end

Then(/^showing result of"(.*)"$/) do |keyword_result|
  case keyword_result
  when 'Lany'
    expect(@pages.youtube_music_page).to have_xpath("//a[contains(text(),'Lany')]//parent::ytmusic-responsive-list-item-renderer")
  when 'Lauv'
    expect(@pages.youtube_music_page).to have_xpath("//a[contains(text(),'Lauv')]//parent::ytmusic-responsive-list-item-renderer")
end


When(/^user click button play on the first list of the result$/) do
  @pages.youtube_music_page.button_play_on_page.first.click
end

Then(/^music is starting to play$/) do
  expect(@pages.youtube_music_page.has_slider_music_bar?).to be true
end

And(/^user click button "(.*)" on music player$/) do |button_player|
  case button_player
  when 'Play'
    @pages.youtube_music_page.button_play_pause.click
  when 'Pause'
    @pages.youtube_music_page.button_play_pause.click
  when 'Next'
    @pages.youtube_music_page.button_next.click
  when 'Previous'
    @pages.youtube_music_page.button_previous.click
end