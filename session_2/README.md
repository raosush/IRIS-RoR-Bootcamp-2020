# Session 2- Creating a model
In this session, you will learn how to run migrations, create models, validate attributes & create model functions.
- Navigate to the Student rails project in the session_2 directory in your terminal
```bash
cd session_2/Student
```

- Now install the gems:
```bash
bundle install
```

- Create a database:

```bash
rails db:create
```

- Create a migration to store the following details of students:

* Roll_no - String
* First name - String
* Middle name - String
* Last name - String
* Branch - String
* Role ID - Integer
* CGPA - Float
* Address - String
- Run the following command to run migrations, once created.

```bash
rake db:migrate
```
- Create a `Student` model that represents your `students` table in Ruby.
- The following validations must be added -
    * All attributes are mandatory
    * 0.0 <= CGPA <= 10.0
    * Branch should not be greater than 80 characters
    * Roll Number must be unique
    * 1 <= Role <= 3
- An intro to the difference between [class methods & instance methods](http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/).
- Implement the following class function - 
```ruby
def self.role_types
  {
    1 => "CR",
    2 => "Student Council President",
    3 => "Normal" ,
  }
end
# Bonus points - We recommend you to read about [enum](https://api.rubyonrails.org/v6.1.0/classes/ActiveRecord/Enum.html) & explain which method is best suited for this use case. 
```
- Implement the following instance methods -
    * Implement an instance method `display_name` which returns the full name in the following format: `<First name>-<Middle name>-<Last name>`

- Implement the model and test out your work by running: 
```bash
rails test:models
```
