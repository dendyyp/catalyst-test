Feature: Buy products in Jamtangan.com

Scenario: User buy products using Virtual Account
  Given User visit "https://www.jamtangan.com/login"
  When User input email
  And User fill password in login credential
  And User click Masuk buton
  And User visit "https://www.jamtangan.com/p/alexandre-christie-chronograph-ac-6559-mc-lurbu-men-dual-tone-dial-brown-leather-strap-608811?list-referer-id=Jam%20Tangan%20Pria&list-referer-name=Jam%20Tangan%20Pria%20Brand%20Alexandre%20Christie" product detail page
  And User click on Beli Sekarang button
  And User click on Lanjutkan button on checkout page
  And User choose "JNE YES" as courier
  And User click on Pilih Pembayaran button on checkout page
  And User choose Virtual Account as payment method
  And User click on Order Sekarang button
  Then User redirect to success order page
  And User validate transaction amount as "1.227.404"
