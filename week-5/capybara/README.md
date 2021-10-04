# Walkthorugh: Learn Capybara Key Skill

[Exercise Link](https://capybara-workout.herokuapp.com)

1. Create a Gemfile listing 2 dependencies

   - In order to do this, run `bundle --init`, then remove all commands in your Gemfile that are not included in the below screenshot.
   - Install gems `gem install`
   - Run `bundle`
   - You may need to update bundler

   ```
   bundle update --bundler
   bundle
   ```

2. Get PRY up & running
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
3. Install the Firefox Browser Application:
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
   set Brew path: `export PATH=/opt/homebrew/bin:$PATH`
   - You may need to update brew: `brew update`
   - run `brew doctor` to check everything is working as expected
4. run the code in PRY

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

- You should see a Firefox browser window pop open with the web-page
  **SUCCESS**

5. Celebrate!
