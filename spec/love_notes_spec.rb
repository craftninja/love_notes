require 'spec_helper'
require_relative '../love_notes'

Capybara.app = LoveNotes

feature 'User can interact with anonymous love notes' do
  scenario 'User can add anonymous love note' do
    visit '/'
    love_note = 'Dear baby kale, thank you for being delicious.'
    expect(page).to have_no_content(love_note)
    fill_in 'Love Note', with: love_note
    click_on 'Send some Love'
    expect(page).to have_content(love_note)
  end
end