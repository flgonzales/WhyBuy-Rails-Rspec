module ItemsSteps
  def visit_item_form
    visit("/items/new")
  end

  def create_complete_items_with_description(description)
    check("item_available")
    create_incomplete_items_with_description(description)
  end

  def create_incomplete_items_with_description(description)
    fill_in("item_available", :with => available )
    click_button("Create Item")
  end

  def i_should_see_the_available_items_header
    expect(page).to have_content("Available Items")
  end

  def i_should_see_the_unavailable_items_header
    expect(page).to have_content("Your Unavailable Items")
  end

  def i_should_see_a_available_item_with_description(ddescription)
    expect(page.find("#available_items")).to have_content(description)
  end

  def visit_homepage
    visit("/")
  end
end
