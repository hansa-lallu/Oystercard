## Oystercard Challenge ##

Week 2 Challenge - Replicate the London Oystercard system which can be used on TFL services.\
Build on the Object Oriented Programming principles used in week 1 to improve knowledge of Ruby and TDD.

## User Stories ##

```
In order to use public transport
As a customer
I want money on my card

In order to keep using public transport
As a customer
I want to add money to my card

In order to protect my money
As a customer
I don't want to put too much money on my card

In order to pay for my journey
As a customer
I need my fare deducted from my card

In order to get through the barriers
As a customer
I need to touch in and out

In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey

In order to pay for my journey
As a customer
I need to pay for my journey when it's complete

In order to pay for my journey
As a customer
I need to know where I've travelled from

In order to know where I have been
As a customer
I want to see to all my previous trips

In order to know how far I have travelled
As a customer
I want to know what zone a station is in

In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out

In order to be charged the correct amount
As a customer
I need to have the correct fare calculated
```

## Tech Used ##
- Ruby
- RSpec

## Testing ##

- Navigate to the top level of the directory
- run `rspec` in your command line


## Getting Started ##

- Fork this repo, and clone to your local machine.
- Change into the directory `cd oystercard`
- Run the command `gem install bundle` (if you don't have bundle already)
- When the installation completes, run `bundle`

## Usage ##

- This program is run on ruby within a REPL such as irb or pry. 

Example
``` 
$ irb
2.7.0 :001 > require './lib/oystercard.rb'
 => true 
2.7.0 :002 > oystercard = Oystercard.new
2.7.0 :003 > oystercard.top_up(50)
 => 50 
2.7.0 :004 > oystercard.touch_in("Aldgate")
 => "Aldgate" 
2.7.0 :005 > oystercard.in_journey?
 => true 
2.7.0 :006 > oystercard.touch_out("West Hampstead")
 => nil 
2.7.0 :007 > oystercard.in_journey?
 => false 
2.7.0 :008 > oystercard.balance
 => 48
 2.7.0 :009 > oystercard.top_up(150)
Traceback (most recent call last):
        5: from /Users/hansa/.rvm/rubies/ruby-2.7.0/bin/irb:23:in `<main>'
        4: from /Users/hansa/.rvm/rubies/ruby-2.7.0/bin/irb:23:in `load'
        3: from /Users/hansa/.rvm/rubies/ruby-2.7.0/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb:11:in `<top (required)>'
        2: from (irb):9
        1: from /Users/hansa/makers/week2/Oystercard-final/Oystercard/lib/oystercard.rb:16:in `top_up'
RuntimeError (Maximum balance of 90 exceeded)
```

## How I built it ##

This programme was built using Pair Programming and Test Driven Development. I worked with a different pair from my cohort each day to complete the challenge, working on different peers' codebases throughout. Together, we created a programme to meet the requirements of the given user stories above

## Project Status ##

- Incomplete Finished Step 14/16
- Update Readme including example/usage
- Refactor Code 
