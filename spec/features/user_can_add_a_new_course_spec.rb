require 'rails_helper'

RSpec.feature "user can add a course" do
  scenario "user adds a course" do
      visit "/courses"

      click_on "Add a new course"
      fill_in "course_name", with: "New Course"
      fill_in "course_city", with: "Denver"
      click_on "Create Course"

      expect(page).to have_content "All Courses"
      expect(page).to have_link("New Course")
  end
end
