

// for each renter
// check each landlord's offering

SELECT * FROM renter

// loop over each renter

SELECT * FROM landlords
// or
SELECT * FROM `landlord`
WHERE `price` BETWEEN 100 and 1000
AND bedrooms = 1
AND pets = 0
AND smoking = 0
AND ...

// loop over each landlord and compare
// renter's prefs against landlord's offering

var matchFound = true;

if( price NOT within range ) {
  matchFound = false;
}

if( landlord.pets != renter.pets ) {
  matchFound = false;
}

...

// matchFound should be true
// if none of the if statements above failed


if( matchFound == true ) {
  // send an email
  mail( to, from, message );
}
