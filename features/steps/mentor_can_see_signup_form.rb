class Spinach::Features::MentorCanSeeSignupForm < Spinach::FeatureSteps
  step 'Visitor is not a logged-in user' do
    @mentor = nil
    @student = nil
  end

  step 'he goes to the signup page' do
    visit '/signup'
  end

  step 'he should see the signup form' do
    assert page.has_css?('form#signup-form')
    
    within('#signup-form') do
      assert has_css?('input#signup-form__name')
      assert has_css?('input#signup-form__email')
      assert has_css?('input#signup-form__password')
    end
    
    filepath = __FILE__
    name = File.basename(filepath, '.*')
    page.save_screenshot("#{name}.png")
  end
end