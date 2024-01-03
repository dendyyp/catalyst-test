Feature: User Account Configuration

# Happy Flow
Scenario: User add profile picture in Account page
    Given user logged in Jamtangan.com
    And user is in account page
    When user click on profile image
    And user choose valid image
    Then message "Foto profilmu berhasil diubah"
    And profile picture should be updated with the uploaded image

Scenario: User update Name in Data Diri account page    
    Given user logged in Jamtangan.com 
    And user is on Data Diri page
    When user clicks Ubah on Nama
    And user should see Ubah Nama popup
    And user change name
    And user click Simpan button 
    Then message "Nama sukses diubah" appear
    And user successfully changes name
    And names have been updated

Scenario: User add date of birth in Data Diri account page
    Given user logged in Jamtangan.com 
    And user is on Data Diri page
    When user clicks Tambah on Tanggal Lahir
    And user should see Tambah Tanggal Lahir popup
    And user choose date using date picker
    And user click Simpan button 
    Then user successfully add date of birth
    And date of birth should be displayed on Tanggal Lahir

Scenario: User add gender in Data Diri account page
    Given user logged in Jamtangan.com 
    And user is on Data Diri page
    When user clicks Tambah on Jenis Kelamin
    And user should see Tambah Jenis Kelamin popup
    And user choose gender in dropdown
    And user click Simpan button 
    Then user successfully add gender
    And message "Jenis Kelamin sukses diubah" appear
    
Scenario: User add phone number in Data Diri account page
    Given user logged in Jamtangan.com 
    And user is on Data Diri page
    When user clicks Tambah on No Handphone
    And user should see Tambah No.Handphone popup
    And user input valid phone number
    And user click on Simpan button
    And user should see Verifikasi Data popup
    And user click on Lebih Cepat Via Whatsapp button
    And user input otp
    Then phone number has successfully saved
    And user should see Terverifikasi tag on phone number

Scenario: User add address in Daftar Alamat account page
    Given user logged in Jamtangan.com 
    And user is on Daftar Alamat page
    When user click on Tambah Alamat button
    And user fills in the required information for the new address
    And user click on Simpan button
    Then message "Alamat sukses ditambah" appear
    And user should see new address in Daftar Alamat

Scenario: User change existing address in Daftar Alamat account page
    Given user logged in Jamtangan.com
    And user is on Daftar Alamat page
    When user click Ubah on choosen address
    And user modifies the address details with new information
    And user click on Simpan button
    Then message "Alamat sukses diubah" appear
    And updated address details should be visible in the address list

Scenario: User delete existing address in Daftar Alamat account page
    Given user logged in Jamtangan.com
    And user is on Daftar Alamat page
    And user click Ubah on choosen address
    When user click on Hapus Alamat button
    And user click Hapus button on popup confirmation
    Then message "Alamat sukses dihapus" appear
    And deleted address should no longer be visible in the address list

Scenario: User sets an existing address as the main address
    Given user logged in Jamtangan.com
    And user is on Daftar Alamat page
    And user has multiple addresses in address list
    When user click Jadikan Alamat Utama on existing address
    Then message "Alamat utama sukses dipilih" appear
    And selected address should be marked as the main address in the address list
    And previous main address should revert to a regular address

Scenario: User cancels the address change in Daftar Alamat account page
    Given user logged in Jamtangan.com
    And user is on Daftar Alamat page
    When user click Ubah on choosen address
    And user decides to cancel the changes
    And user clicks on the close icon
    And validation popup is shown
    And user click Hapus button
    Then the Daftar Alamat account page should not display any success message
    And the address details should remain unchanged in the address list

Scenario: User change password in address list account page
    Given user logged in Jamtangan.com
    And user is on Daftar Ubah Password page
    When user enters the current password
    And user enters a new password
    And user confirms the new password
    And user click Konfirmasi button
    Then system should display a success message
    And user should be logged in with the new password

# Negative Test

Scenario: User upload profile picture image exceeding maximum file size
    Given user logged in Jamtangan.com
    And user is in account page
    When user click on profile image
    And user choose image size exceed maximum file size
    Then user should see error message contains "Ukuran gambar terlalu besar" appear
    And profile picture should remain unchanged 

Scenario: User upload profile picture with invalid image format
    Given user logged in Jamtangan.com
    And user is in account page
    When user click on profile image
    And user choose invalid image format
    Then user should see error message "Format gambar harus jpeg atau png" appear
    And profile picture should remain unchanged

Scenario: User upload profile picture with unstable connection
    Given user logged in Jamtangan.com
    And user is in account page
    And connection is unstable
    When user click on profile image
    And user choose image
    Then user should see error message contains "Terjadi kesalahan saat mengupload gambar" appear
    And profile picture should remain unchanged 

Scenario: User update Name in Data Diri account page with invalid format
    Given user logged in Jamtangan.com 
    And user is on Data Diri page
    When user clicks Ubah on Nama
    And user should see Ubah Nama popup
    And user change name with invalid format
    Then user should see validation message "Format masih salah" in text box
    And Simpan button is disabled

Scenario: User add address with empty required field
    Given user logged in Jamtangan.com
    And user is on Daftar Alamat page
    When user click on Tambah Alamat button
    And required field is empty
    Then user should see validation message contains "Harus diisi" on required text field
    And Simpan button is disabled

Scenario: User input phone number more than maximum allowed number in Tambah Alamat
    Given user logged in Jamtangan.com
    And user has existing address in address list
    And user is on Tambah Alamat
    When user input phone number more than maximum
    Then validation message contains "No. handphone penerima terlalu panjang. Maximal 15 angka" appear
    And Simpan button is disabled

Scenario: User input postal code more than maximum allowed number in Tambah Alamat
    Given user logged in Jamtangan.com
    And user has existing address in address list
    And user is on Tambah Alamat
    When user input postal code more than maximum
    Then validation message contains "Kode pos terlalu panjang. Maximal 5 angka" appear
    And Simpan button is disabled 

Scenario: User add phone number with invalid format
    Given user logged in Jamtangan.com 
    And user is on Data Diri page
    When user clicks Tambah on No Handphone
    And user should see Tambah No.Handphone popup
    And user input invalid phone number
    Then user should see validation message contains "Hmm, format nomor HP mu salah" in text box
    And Simpan button is disabled

Scenario: User add date of birth when no internet connection
    Given user logged in Jamtangan.com 
    And user is on Data Diri page
    When user clicks Tambah on Tanggal Lahir
    And user should see Tambah Tanggal Lahir popup
    And user choose date using date picker
    And user click Simpan button
    And the connection is lost during the process
    Then user failed to saved date of birth

Scenario: Changing Password with Mismatched New Password and Confirmation
    Given the user is on the account page
    When the user enters a new password
    And enters a confirmation password that does not match the new password
    And clicks the change password button
    Then user should see an validation message "Ups, password yang diketik nggak sama" indicating password mismatch
    And Konfirmasi button disabled
