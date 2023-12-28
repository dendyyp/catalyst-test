<h1> Test Cases Creation</h1>

 <h3> Login Feature </h3> 
<details>
<summary>Happy Flow</summary>
<br>
Feature: User Login in Jamtangan.com

    Scenario: Successful login with valid credentials
    
        Given user is on Jamtangan.com login page

        When user enters valid username "john_doe"
        
        And user enters valid password "secret123"

        And user clicks the Masuk button

        Then user should be redirected to the Jamtangan.com homepage

        And user should see profile account on header

    Scenario: Successful login with Google account
        
        Given user is on Jamtangan.com login page

        When user clicks on the Google button
        
        Then user should be redirected to the Google login page
        
        And user choose Google account
        
        And user should be redirected to the Jamtangan.com homepage

        And user should see profile account on header
        
        And the user should be successfully logged in using their Google account
    
    Scenario: Successful login with phone number and sent otp to Whatsapp
        
        Given user is on Jamtangan.com login page

        When user enters valid phone number "081381818181"
        
        And user clicks the Masuk button

        And user should see Verifikasi Data popup

        And user clicks Lebih Cepat Via Whatsapp button

        And user input otp received in WhatsApp

        And user clicks Verifikasi Kode button

        Then user should be redirected to the Jamtangan.com homepage

        And user should see profile account on header
        
        And the user should be successfully logged in using phone number

    Scenario: Successful login with phone number and sent otp to SMS
        
        Given user is on Jamtangan.com login page

        When user enters valid phone number "081381818181"
        
        And user clicks the Masuk button

        And user should see Verifikasi Data popup

        And user clicks Kirim via SMS

        And user input otp received in sms

        And user clicks Verifikasi Kode button

        Then user should be redirected to the Jamtangan.com homepage

        And user should see profile account on header
        
        And the user should be successfully logged in using phone number
    
    Scenario: One user login from multiple browsers

        Given there is a user with valid credentials

        And user is on the login page from multiple browsers

        When user login from each browser

        Then user should be redirected to the homepage from each browser
    
        And user should see profile account on header in each session
</details>

<details>
<summary>Negative Cases</summary>
<br>
Feature: Error handling in Jamtangan.com login page

    Scenario: Login with invalid email and password
    
        Given the user is on Jamtangan.com login page
    
        When user enters an invalid username
        
        And user enters an invalid password
    
        And clicks the login button

        Then user should see an error message "Ups, email atau password kamu salah"

        And user failed to login

    Scenario: Login with empty password
        
        Given the user is on Jamtangan.com login page
        
        When user input email

        And user not input password
        
        Then Masuk button is disabled

        And user button cannot be clicked
    
    Scenario: Login with invalid email format
        
        Given the user is on Jamtangan.com login page
        
        When user input email with invalid format "testing123"
        
        Then error message contains "Hmm, format email salah" displayed
        
        And Masuk button is disabled
    
    Scenario: Login with invalid phone number format
        
        Given the user is on Jamtangan.com login page
        
        When user input phone number with invalid format "981271"
        
        Then error message contains "Hmm, format nomor HP mu salah" displayed
        
        And Masuk button is disabled

    Scenario: Login with invalid OTP
        
        Given the user is on Jamtangan.com login page
        
        When user input valid phone number

        And input invalid otp "111111"
        
        Then error message contains "Ups, kode verifikasi kamu salah" displayed
        
        And Verifikasi Kode button is disabled
    
    Scenario: Login attempt when disconnected
    
        Given user is on Jamtangan.com login page

        When user enters valid email
        
        And user enters valid password

        And user clicks Masuk button

        And user device is disconnected from the internet

        Then user should see an error message indicating a network connectivity issue

        And user failed to login

        And user should remain on the login page
</details>

 
 
 
 <h3> Account Feature </h3> 
<details>
<summary>Happy Flow</summary>
<br>
Feature: User Account Configuration

    Scenario: User update Name in Data Diri account page
    
        Given user is on Data Diri page

        When user clicks Ubah on Nama
        
        And user should see Ubah Nama modal

        And user change name

        And user click Simpan button 

        Then user successfully changes name

        And user will see success message

        And names have been updated

    Scenario: User add date of birth in Data Diri account page

        Given user is on Data Diri page

        When user clicks Tambah on Tanggal Lahir

        And user should see Tambah Tanggal Lahir modal

        And user choose date using date picker

        And user click Simpan button 

        Then user successfully add date of birth

        And date of birth should be displayed on Tanggal Lahir

    Scenario: User add gender in Data Diri account page

        Given user is on Data Diri page

        When user clicks Tambah on Jenis Kelamin

        And user should see Tambah Jenis Kelamin modal

        And user choose gender in dropdown

        And user click Simpan button 

        Then user successfully add gender

        And message "Jenis Kelamin sukses diubah" appear
    
    Scenario: User add phone number in Data Diri account page

    Scenario: User add address in Daftar Alamat account page

    Scenario: User change existing address in Daftar Alamat account page

    Scenario: User delete existing address in Daftar Alamat account page

    Scenario: User change password in address list account page

