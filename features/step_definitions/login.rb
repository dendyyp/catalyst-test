Given ("User visit {string}") do |url|
    visit url
    expect(page).to(have_content('Selamat datang di Jamtangan.com'))
    sleep 3
end

  When("User input email") do
    label = find(:xpath, "//label[contains(text(),'Email/No.Handphone')]")
    input_field = label.find(:xpath, './following-sibling::input')
    email = ENV['USER_EMAIL']
    input_field.fill_in(with: email)
end

  And("User fill password in login credential") do
    label = find(:xpath, "//label[contains(text(),'Password')]")
    input_field = label.find(:xpath, './following-sibling::input', wait: 10)
    password = ENV['USER_PASSWORD']
    input_field.fill_in(with: password)
end

  And("User click Masuk buton") do
    find(:xpath, "//button[contains(text(),'Masuk')]").click
    sleep 3
end

  And("User visit {string} product detail page") do |url|
    visit url
    expect(page).to(have_content('Alexandre Christie Chronograph AC 6559 MC'), wait: 5)
end

  And("User click on Beli Sekarang button") do
    find('[data-testid="pdp-btn-buy-now"]').click
    sleep 5
  end
