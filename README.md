# E.M.P. Gallery Brief

## Summary
Full-stack application (Ruby/PSQL) that allows users to view artists and exhibits in a music gallery. Visitors can see details on each database entry with links to the associated artist/exhibit and can filter their results by category or artist. Managers have secret access at the top of the page after the blinking cursor to create, read update and delete all database entries.

## MVP

### FRONT-END
* Gallery managers should be able to add/edit/delete artists
* Gallery managers should be able to add/edit/delete exhibits
* Visitors should be able to view a full list of exhibits
* Visitors should be able to view information regarding a single exhibit
* Visitors should be able to filter the list of exhibits by artist [EXT]
* Managers should be able to add a category to an exhibit [EXT]
* Visitors should be able to filter the list of exhibits by category [EXT]

### BACK-END
* Exhibits should have many to one relationship to artists
* Categories should have a one to many relationship to exhibits
* When deleting a category or artist, all related exhibits should be deleted [EXT]
