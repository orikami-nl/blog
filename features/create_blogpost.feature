Feature: Creating a blogpost 
  As a blogger
  I create a new blogpost
  In order to interact with the world

Scenario: Posting blogpost
  Given I am visitor
  And I am on the new post page
  When I create a new post
  Then a blog is created


