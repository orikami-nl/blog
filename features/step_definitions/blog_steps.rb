Given /^I am a visitor$/ do   
end

When /^I create a new post$/ do
  fill_in 'Title', :with => 'testtitle'
  fill_in 'Content', :with => 'text'
  fill_in 'Excerpt', :with => 'test'
  When %(I select "August 7, 2010 07:00PM" as the "Published at" date)
  click_button 'submit'
  @post = Blog::Post.find_by_title('testtitle')
end

Then /^the post is published$/ do
  page.should have_content 'Post was successfully created.'
  When 'I go to this post page' 
  page.should have_content 'testtitle'
end

Given /^a blogpost exists$/ do
  @post = Blog::Post.create(:title => 'kip', :body => 'content', :excerpt => 'excerpt', :published_at => Time.now)
end


Then /^I should see an excerpt$/ do
  page.should have_content @post.excerpt.to_s 
end

#Then /^I can see how many words I have typed$/ do
#  def count_words
#    split(/\S+/).size
#  end
#end

#Then /^I can see how many links I have added to the text$/ do
#  pending # express the regexp above with the code you wish you had
#end

