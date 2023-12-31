# Catalyst-Assessment-QA Engineer

## Table of Contents
[Prerequisite](Prerequisite)
### Prerequisite
1. Ruby (Make sure you already installed ruby. To check installed ruby you can using this command `$rvm list`)
2. Cucumber (Make sure you already installed cucumber. To check you can using this command `$cucumber --version`)
3. Add this to Gemfile 
```
source 'https://rubygems.org'

gem 'capybara'
gem 'cucumber'
gem 'pry'
gem 'rspec'
gem 'webdrivers'
``` 
4. Run this command to install gem
```bundle install```
5. Add env file like this ```features/support/env.rb```
6. Run this command to install
```cucumber --init```
7. Editor (Visual Studio Code)
8. Install Cucumber extension in text editor

### How to run this automation scenarios in local
1. Clone this repo using this command:
>$ git clone https://github.com/dendyyp/catalyst-test.git
2. Open this repo in your editor
3. Open terminal in your editor
4. To run all scenario can using this command:
>$ cucumber
5. To run specific/several scenario can using run with tags like this:
>$ bundle exec cucumber -t @create-transaction

### Run script in Local

#### Evidence
https://drive.google.com/file/d/1OtC2OmPrlHayW-BW1WZyKCajbcGUatN-/view?usp=sharing

### Run Results

#### Create Transactions using Virtual Account as Payment Method in Jamtangan.com
<img width="1172" alt="Screen Shot 2023-12-26 at 00 27 39" src="https://github.com/dendyyp/catalyst-test/assets/45061250/ad231b53-57c1-4db7-9ff2-9de01c70d765">

### Technical Questions
#### Test Cases Creation
- Login
  https://github.com/dendyyp/catalyst-test/blob/main/Technical-Question/Test-Cases/login-test-case-creation-manual.feature
- Account
  https://github.com/dendyyp/catalyst-test/blob/main/Technical-Question/Test-Cases/account-test-case-creation-manual.feature
- Search
  https://github.com/dendyyp/catalyst-test/blob/main/Technical-Question/Test-Cases/search-test-case-creation-manual.feature
#### Suggest Features
- https://github.com/dendyyp/catalyst-test/blob/main/Technical-Question/Suggest-Develop-Feature/Develop-Feature.md
#### Bug Found Report
- https://github.com/dendyyp/catalyst-test/blob/main/Technical-Question/Bug/bugs-found.md

### General Questions
https://github.com/dendyyp/catalyst-test/blob/main/General-Question/General-question-qa.md
  






