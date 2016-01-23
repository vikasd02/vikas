# README

## Alamo Records

Alamo Records is a online store that sells vintage vinyl records. It is built on the Ruby on Rails web framework and consists of the following models:

1. Publisher - a publisher sells albums.
2. Album - albums are sold by publishers and include many songs.
3. Song - a song is recorded onto one album. It is written by one artist or a collaboration of artists.
4. Artist - an artist writes songs.
5. Movie - a movie can include many songs.

The relationships between models are represented in the following diagram:

![Alamo Records model diagram](public/alamo_records_diagram.png)

## Candidate Instructions

Clone the repository, prepare the application and complete each of the tasks listed below. Tasks include styling changes, adding functionality, fixing bugs and writing tests. Each task should be committed separately into Git with a commit message that includes the task number and the task description.

Do not add any additional gems to the application.

Complete as many tasks as you can in four hours and then submit a pull request through Github.

### Tasks

1. On the publishers index page, change the h1 element to the color #054A91.
2. On the navigation bar, add a link to the songs index page .
3. The albums index page is executing too many queries. Fix it.
4. In the album model, create a scope called __recent__ that takes an argument __n__ (the number of albums) and returns only the last __n__ albums released during the past 365 days.
5. On the new album page, replace the publisher text field with a dropdown that displays each publisher's name.
6. Add code to ensure that when an album is saved, a publisher is required.
7. On the album index page, add a delete button for each album that, when pressed, deletes the album via ajax and removes the row from the page.
8. In the footer, under the LATEST section, display the 5 most recent albums released.
9. On the artist show page, duplicate albums are being displayed. Fix it.
9. Run the tests and fix all that fail.
10. Write tests for the delete button you added in task 7.
11. Alamo Records is starting up a new business unit that will produce movies. This will be a highly synergistic endeavor as they already own the publishing rights to many popular hip hop songs. Create the Movie model with the following attributes:
  1. title (string)
  2. year (integer)
  3. rated (string)
  4. plot (text)
  5. poster_url (string)
  6. imdb_rating (float)
  7. imdb_votes (integer)