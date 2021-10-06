# Walkthorugh: Learn Capybara Key Skill

[Exercise Link](https://capybara-workout.herokuapp.com)

A step-by-step guide for all of the many many _many_ errors we encountered when we worked through this exercise.

_Disclaimer: This took MUCH longer than the advertised 12 mins!_

## 1. Create a Gemfile listing 2 dependencies

- Run `bundle init`
- Open the Gemfile created in your directory
- Remove all commands in your Gemfile until it only contains this:

```
source "https://rubygems.org"

ruby '3.0.2'

gem 'capybara'
gem 'selenium-webdriver'
```

- Run `bundle`
- You may need to update bundler

```
bundle update --bundler
bundle
```

- When you run the first 4 commands in the exercise, you may get an error message `ArgumentError: rack-test requires a rack application, but none was given...`:

```
>> pry
[1] pry(main)> require 'capybara'
=> true
[2] pry(main)> require 'selenium-webdriver'
=> true
[3] pry(main)> require 'capybara/dsl'
=> true
[4] pry(main)> include Capybara::DSL
=> ArgumentError: rack-test requires a rack application, but none was given...
```

# 2. Get PRY up & running

- Run `pry`
- If you get the error `zsh: command not found: pry`:
  ```
  gem install pry
  bundle
  ```
  - You may need to update Ruby: `rvm update`
    - You can check your Ruby version by running `ruby -v`
    - You can check the Ruby versions yopu have installed by running `rvm list`
    - You can set the default version you want to use to match your Gemfile by running e.g. `rvm --default use 3.0.2`
  - If you get error message `Warning! PATH is not properly set up,...` run `rvm get stable --auto-dotfiles`
  - If you get error message `Ignoring executable-hooks-1.6.1 because its extensions are not built…`:
  ```
  gem pristine executable-hooks --version 1.6.1
  bundle
  ```
  - If you get error message `Warning: the running version of Bundler (2.2.26) is older than the version that created the lockfile (2.2.28)...`
    Run `gem install bundler:2.2.28`
- Now when you run the first 6 commands in the exercise, you may get the error message `Could not find Firefox binary (os=macosx). Make sure Firefox is installed or set the path manually...`

```
>> pry
[1] pry(main)> require 'capybara'
=> true
[2] pry(main)> require 'selenium-webdriver'
=> true
[3] pry(main)> require 'capybara/dsl'
=> true
[4] pry(main)> include Capybara::DSL
including Capybara::DSL in the global scope is not recommended!
=> Object
[5] pry(main)> Capybara.default_driver = :selenium
=> :selenium
[6] pry(main)> visit 'http://capybara-workout.herokuapp.com'
=> Could not find Firefox binary (os=macosx). Make sure Firefox is installed or set the path manually...
```

# 3. Install the Firefox Browser Application:

1. Option 1: You can do this via the command line:

```
brew install --cask firefox
bundle
```

- If you get the error `zsh: command not found: brew`:

```
gem install brew
bundle
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- You may need to set your Brew path:
  - Either run `export PATH=/opt/homebrew/bin:$PATH` in Terminal
  - OR `export PATH=/opt/homebrew/bin:$PATH` add to .zshrc file in your home directory (you can see your hidden files with keyboard shortcut cmd + Shift + .)
- You may need to update brew: `brew update`
- Run `brew doctor` to check everything is working as expected

2. Option 2: You can also install firefox manually: download Firefox from your browser & add it to you Applications folder

- Now when you run the commands in the exercise you may encounter the error message `Unable to find Mozilla geckodriver...`

# 4. Install geckodriver

- Add gem ‘geckodriver-helper’ to your Gemfile, your Gemfile should now look like this:

```
source "https://rubygems.org"

ruby '3.0.2'

gem 'capybara'
gem 'selenium-webdriver'
gem 'geckodriver-helper'
```

- Run `rspec --init`
- Add to your spec_helper.rb file:

```ruby
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)
end
```

# 5. run the code in PRY

```
>> pry
[1] pry(main)> require 'capybara'
=> true
[2] pry(main)> require 'selenium-webdriver'
=> true
[3] pry(main)> require 'capybara/dsl'
=> true
[4] pry(main)> include Capybara::DSL
including Capybara::DSL in the global scope is not recommended!
=> Object
[5] pry(main)> Capybara.default_driver = :selenium
=> :selenium
[6] pry(main)> visit 'http://capybara-workout.herokuapp.com'
=> ""
[7] pry(main)> click_link 'Start Workout!'
```

- You should see a Firefox browser window pop open with the Capybara Workout web-page
  ![Capybary Workout Window](https://github.com/feedXia/makers-bootcamp/blob/c24e8b526c09d12bc2e9d449d2ee01fe5cdbc936/week-5/capybara/Screenshot%202021-10-04%20at%2019.04.43.png)
  **SUCCESS!!!**

# 5. Celebrate! :partying_face:

## Resources

- [Setting Up a Gemfile](https://bundler.io/gemfile.html)
- [pry: command not found](https://ianrobinson.net/irb-rbenv-pry-command-not-found-fixed/)
- [RVM & Ruby Updates](https://rvm.io/rubies/default)
- [Homebrew install Firefox](https://formulae.brew.sh/cask/firefox)
- [command not found: brew](https://stackoverflow.com/questions/36657321/after-installing-brew-i-get-command-not-found-brew)
- [Error: Unable to find Mozilla geckodriver](https://stackoverflow.com/questions/42596250/selenium-webdriver-unable-to-find-mozilla-geckodriver/44682785)
- [Markdown Emoji Cheatsheet](https://github.com/ikatyang/emoji-cheat-sheet)
