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

``` 
$ irb
> require './lib/oystercard.rb'
> oystercard = Oystercard.new
```

## How I built it ##

This programme was built using Pair Programming and Test Driven Development. I worked with a different pair from my cohort each day to complete the challenge, working on different peers' codebases throughout. Together, we created a programme to meet the requirements of the given user stories above

## Project Status ##

- Incomplete Finished Step 14/16
- Update Readme including example/usage
- Refactor Code 
