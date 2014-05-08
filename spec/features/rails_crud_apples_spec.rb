require 'spec_helper'

feature "user can manipulate apples" do
  scenario "user can create and edit and delete an apple" do
    visit '/' #index page
    expect(page).to have_content("Apples")
    click_on 'Add New Apple'

    # visit 'apples/new' # GET new

    fill_in 'Type of Apple', with: 'Macintosh'
    fill_in 'Apple Quality', with: 'juicy'

    click_on 'Create Apple' # POST create
    expect(page).to have_content("Macintosh")
    expect(page).to have_content("juicy")

    click_on 'Macintosh'
    expect(page).to have_content("Macintosh")
    expect(page).to have_content("juicy")

    click_on 'Edit'
    fill_in 'Type of Apple', with: 'Golden Delicious'
    fill_in 'Apple Quality', with: 'sweet'
    click_on 'Update Apple'

    expect(page).to have_no_content("Macintosh")
    expect(page).to have_no_content("juicy")

    expect(page).to have_content("Golden Delicious")
    expect(page).to have_content("sweet")
  end

end