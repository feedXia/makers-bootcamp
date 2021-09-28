# Delegation

> Delegate, delegate, delegate
> – Russ Olsen, Design Patterns in Ruby

This is a workshop to introduce you to the idea of Object-Oriented delegation.

## Learning objectives

- Describe "delegation" as "one class telling another class to do something and the other class encapsulating how to do it."
- Explain what is meant by the advice "delegate, delegate, delegate".
- Implement OOP delegation.

## Delegation

In delegation, one class tells another class to do something and the other class encapsulates how to do it.

Look at the [company structure code sample](./company_structure.rb) for an example of delegation.

Look at this [diagram of the company structure code](./company_structure.jpg) that shows the delegation relationships.

## Instructions

This project contains two implementations of a todo list: `/terrible` and `/great`.

`/terrible` implements the features using a poor understanding of the delegate principle.  `/great` implements the users stories using a good understanding of the delegate principle.  `/great` is unfinished.

You job is to finish it.

### Running the tests

    $ cd terrible/   or   cd great/
    $ bundle install
    $ rspec

### What code should you write?

* Port the functionality in `/terrible` over to `/great`.

* Examine the code and tests in `/terrible` to find out what functionality to implement.

* Continue using the delegate, delegate, delegate approach in `/great`.

* There are a few passing unit tests in `/great`.  You will probably want to add to these.

* There are some feature tests in `great/spec/feature_spec.rb`.  These are currently failing.  They should pass when you've implemented all the functionality.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/oop_3/README.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/oop_3/README.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/oop_3/README.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/oop_3/README.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=skills-workshops&prefill_File=object_oriented_programming/oop_3/README.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
