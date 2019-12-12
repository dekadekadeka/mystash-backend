# README

myStash Backend!

Ruby version 2.6.3, Rails version 6.0.1, PostgreSQL DB

Apart from coding, I love crafting. Sewing, crochet, and knitting, to be more specific. 

While it is very easy to keep track of which patterns you want to buy that day (do it the way people have for around 100 years, write it down on a piece of paper at the pattern books table, or put it in the "Notes" app of your phone) it is rather difficult to know which patterns you already own, especially if you own dozens of them like me. There have been many times I have found myself shopping for patterns and wondering if I already have one I am looking at. Taking pictures of each one and scrolling through my phone every time I think "I may already have this" is not only tedious, it takes up valuable space on the phone and if scrolling too quickly, it makes a pattern easy to miss as some look very similar. I thought if I had an app where I could search exactly through what I already had by just typing in the pattern number I would know very quickly... so I decided to create just that!

myStash is an app to track:

* Which sewing patterns you own
* What fabric, yarn, thread, needles, and different notions you own

Zippers/buttons/etc. are meant to be tracked under "Notions". Adding a "Supplies" model seemed redundant as they would be nearly identical. 

At first I meant to include thread in the "Notions" model, but looking at how much thread the average crafter owns I decided it needed its own model as well. That is how I found out "Thread" is a reserved word on Rails. I am highly assuming that "String" is one as well, so I named the model "Floss".

When this is finished, a user should be able to:

* Search for patterns by pattern number and add to their stash.
* Add a pattern by brand, number, and uploading pictures of the front and back of a pattern if it doesn't already exist in the database. Pattern instances will be usable by multiple users.
* Be able to view their patterns by brand and number only, or by brand, number, and picture.

Specific to one user only:
* Add fabric and upload a pic to create a "swatch".
* Add yarn and upload a pic to create a "swatch". As the yarn model also allows for (optional) lot number, this is user-specific.
* Add notions they already own (needles, scissors, etc). Because a model with only thread, zippers, buttons, etc. would be too similar, I decided to have the user incorporate those items under the "Notions" model as well. There will be a field to specify color and size for that reason.


