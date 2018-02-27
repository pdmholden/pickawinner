Given a string of digits, choose _exactly_ 7 numbers in the range 1-59 for lotto picks. Strings with leftover numbers should fail, as should strings with an insufficient number of digits.

Run the program as follows:

`./pick.rb 38383939 300383883 77873938`

Run the specs using Rspec:

`rspec extract_winner_spec.rb`

The current implementation doesn't work for these inputs:

```
5698157156 -> 56 9 8 1 57 15 6
5198155156 -> 51 9 8 15 5 1 56
```
