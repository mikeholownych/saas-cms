require 'rails_helper'

describe 'account creation' do
  it 'allows user to create account' do
    visit root_path
    click_link 'Create Account'

    #fill_in 'Name', with: 'Mike'
    #fill_in 'Email', with: 'mike.holownych+test@gmail.com'
    #fill_in 'Password', with: 'password1'
    #fill_in 'Password Confirmation', with: 'password1'
    fill_in 'Subdomain', with: 'test_subdomain'
    click_button 'Create Account'

    expect(page).to have_content('Signed up successfully')
  end
end
