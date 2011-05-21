Given /^I am visitor$/ do   
end

When /^I create a new post$/ do
  fill_in 'Title', :with => 'testtitle'
  fill_in 'Content', :with => 'text'
  fill_in 'Excerpt', :with => 'test'
  select '15', :from => 'days'
  select 'March', :from => 'month'
  selcet '2011', :from => 'year'
  click_button 'Submit'
end

Then /^a blog is created$/ do
  page.should have_content 'testtitle'
end

