require 'spec_helper'

feature "user can manipulate apples" do
  scenario "user can create and show apples" do
    visit '/' #index page
    expect(page).to have_content("Apples")
    click_on 'Add New Apple'

    # visit 'apples/new' # GET new

    fill_in 'Type of Apple', with: 'Macintosh'
    fill_in 'Apple Quality', with: 'juicy'

    click_on 'Create Apple' # POST create
    expect(page).to have_content("Macintosh")
    expect(page).to have_content("juicy")
  end
end