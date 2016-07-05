require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes user inputs and determines if it is a triangle') do
    visit('/')
    fill_in('side_1', :with => 90)
    fill_in('side_2', :with => 10)
    fill_in('side_3', :with => 20)
    click_button('Submit')
    expect(page).to have_content("Sorry, it's not a triangle")
  end
  it('processes user inputs and determines if it is an equilateral triangle') do
    visit('/')
    fill_in('side_1', :with => 10)
    fill_in('side_2', :with => 10)
    fill_in('side_3', :with => 10)
    click_button('Submit')
    expect(page).to have_content('It is an equilateral triangle')
  end

  it('processes user inputs and determines if it is an isosceles triangle') do
    visit('/')
    fill_in('side_1', :with => 20)
    fill_in('side_2', :with => 20)
    fill_in('side_3', :with => 30)
    click_button('Submit')
    expect(page).to have_content('It is an isosceles triangle')
  end

  it('processes user inputs and determines if it is an scalene triangle') do
    visit('/')
    fill_in('side_1', :with => 40)
    fill_in('side_2', :with => 20)
    fill_in('side_3', :with => 30)
    click_button('Submit')
    expect(page).to have_content('It is a scalene triangle')
  end
end
