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
    expect(page).to(have_content('Alexandre Christie Chronograph AC 6559 MC'))
end

And("User click on Beli Sekarang button") do
    find('[data-testid="pdp-btn-buy-now"]').click
end

And("User click on Lanjutkan button on checkout page") do
  find('[data-testid="cart-btn-summary-cta"]').click
  sleep 5
end

And(/^User choose "([^"]*)" as courier$/) do |courier|
  courier_dropdown = '//button[@aria-label="Choose shipping method"]'
  find(:xpath, courier_dropdown).click
  find('[data-testid="shipping-method-list"]', text: courier).click
end

And("User click on Pilih Pembayaran button on checkout page") do
  find(:xpath, "//button[contains(text(),'Pilih Pembayaran')]").click
end

And("User choose Virtual Account as payment method") do
  find(:xpath, "//p[contains(text(),'Virtual Account')]").click
end

And("User click on Order Sekarang button") do
  find(:xpath, "//button[contains(text(),'order sekarang')]").click
  sleep 2
end

Then("User redirect to success order page") do
  expect(page).to(have_content('Yuk, segera bayar sebelum'))
  expect(find(:xpath, "//div[contains(text(),'Lihat cara pembayaran')]"))
  sleep 5
end

And(/^User validate transaction amount as "([^"]*)"$/) do |amount|
  expected_amount = "Rp#{amount.gsub('', '')}"
  xpath = "//div[contains(text(),'#{expected_amount}')]"
  actual_amount = find(:xpath, xpath, wait: 10).text
  expect(actual_amount).to eq(expected_amount)
  sleep 10
end
