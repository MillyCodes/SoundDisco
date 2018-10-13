# README.md

SoundDisco is an artist discovery website built with Ruby on Rails, multiple API's, Javascript & Ajax. It uses a single user input to get artist information by pulling data and cross referencing 3 different music API's to result a custom artist profile including an in app music video player for their top tracks and related artists.

![SoundDisco](https://millycodes.com/wp-content/uploads/2018/10/Screen-Shot-2018-10-01-at-8.56.33-PM-1024x549.png)

# About SoundDisco
Learning Objectives with SoundDisco are to demonstrate an understanding of Ruby on Rails and more importantly to challenge myself to working with multiple external API's especially with the Spotify service since I heard it was difficult and the documentation was not the most understandable. I took the users initial input to search one api and forward the info plus what was received from the first search to implement the second and similarly with the third. The video page is embedded via AJAX and reloads the corresponding video when it is clicked. It is deployed on Heroku.

# Technologies Used
- Ruby 2.3.0
- Ruby on Rails Gem
- Farraday Middleware
- rSpotify Gem
- Youtube 'yt' Gem
- Lastfm 'lastfm' Gem
- SASS 3.5
- Bootstrap 4
- JQuery 

# Functionality
- Potential users do not need to create an account currently. 
- Users have ability to type in any artist name.
- Search result with display short bio, photo, video player with playlist of top 5 tracks, links to similar artists pages.


# Beyond MVP - upcoming updates
- Enable oAuth with Spotify to allow users to save artists or songs to their own Spotify accounts.
- Enable a likes system that integrates with the top tracks rankings.
- Add sharing options for social media.

![SoundDisco](https://millycodes.com/wp-content/uploads/2018/10/Screen-Shot-2018-10-01-at-9.01.20-PM-1024x641.png)