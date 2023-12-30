## Bugs Found in Desktop and Mobile Web

During exploratory testing, I identified several bugs and potential issues that require further investigation and resolution.

<details open>
<summary>1. Issue in Cart</summary>
<br>
<b>Bug Title:</b> [Bug] [Cart] [MWeb] Cart Bubble Count Mismatch with Total Items in Cart Page

<br><b>Description</b>

There is an inconsistency between the count displayed in the cart bubble icon and the actual total number of items listed in the cart on the cart page.

<br><b>Pre-Condition</b>

1. Login Jamtangan.com
2. User is in product detail page

<br><b>Step to reproduce</b>

1. ATC (add to cart) multiple product
2. Observe the count displayed in the cart bubble icon.
3. Tap Lihat on snackbar success add to cart
4. Remove one product
5. Back to PDP
6. Compare the count in the cart bubble with the actual total number of items listed on the cart page.

<br><b>Actual Result</b>

Mismatch between the count in the cart bubble and total items in cart page

<br><b>Expected Result</b>

The count in the cart bubble icon should match the total number of items listed in the cart on the cart page.

<br><b>Priority</b>

Medium

<br><b>Evidence</b>

https://drive.google.com/file/d/1YVZet1BmbM4JgYJJpiv6LJ0qBg1EsYgY/view?usp=sharing

<br><b>Additional Notes</b>

1. Browser: Safari
2. Device: iPhone 12
3. OS: iOS 17

</details>

<details open>
<summary>2. Issue in Product Price</summary>
<br>
<b>Bug Title:</b> [Bug] [Cart] [MWeb] Price List in Lainnya Section Mismatch with Product Price in Product Detail Page

<br><b>Description</b>

Different price between the price displayed in the "Lainnya" section on the product listing page and the actual product price shown on the product detail page.

<br><b>Pre-Condition</b>

1. Login Jamtangan.com
2. User is in product detail (Daniel Wellington) page

<br><b>Step to reproduce</b>

1. Tap or scroll down to Lainnya section
2. Scroll down to "Daftar Harga Strap"
3. Tap one product
4. Compare the product price between price in Lainnya section and PDP.

<br><b>Actual Result</b>

Mismatch price between price in "Lainnya" section and PDP.

<br><b>Expected Result</b>

The price displayed in the "Lainnya" section should match the actual product price shown on the product detail page.

<br><b>Priority</b>

Medium

<br><b>Evidence</b>

https://drive.google.com/file/d/1LqbmiqznllyiXx3IHNhJy47qODrPJCTY/view?usp=sharing

<br><b>Additional Notes</b>

Browser: Safari
Device: iPhone 12
OS: iOS 17

</details>

</details>

<details open>
<summary>3. Issue in Popup</summary>
<br>
<b>Bug Title:</b> [Bug] [Cart] [Desktop] Popup Can Be Closed by Clicking Outside the Popup

<br><b>Description</b>

Popup can be closed by clicking outside the popup area. 

<br><b>Pre-Condition</b>

1. Login Jamtangan.com
2. User is in product detail page

<br><b>Step to reproduce</b>

1. Click on "Selengkapnya" in Ciilan Paylater
2. Click outside popup

<br><b>Actual Result</b>

User can close popup by clicking outside

<br><b>Expected Result</b>

The popup should only close when the close button inside the popup is clicked.

<br><b>Priority</b>

Low

<br><b>Evidence</b>

https://drive.google.com/file/d/1LxnjdGI6og0O7-mSrSmJlGZB2kmVK-0i/view?usp=sharing

<br><b>Additional Notes</b>

Browser: Safari
OS: MacOS Monterey

</details>
