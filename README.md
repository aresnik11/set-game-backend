# Set Game

Set Game is single page app that lets user play the game SET.

The backend repo is deployed via Heroku, and the frontend repo ([here](https://github.com/aresnik11/set-game-frontend)) is deployed via Netlify. Visit [https://best-set-game.netlify.com](https://best-set-game.netlify.com) to play!

[![Netlify Status](https://api.netlify.com/api/v1/badges/1c669172-c73c-444c-af63-03d51895a8c8/deploy-status)](https://app.netlify.com/sites/best-set-game/deploys)

![Set Game](https://user-images.githubusercontent.com/8761638/69589475-2f4b0200-0fba-11ea-8f41-5a131079261f.png)

## Demo

You can watch a live demo of the app [here](#) or visit [https://best-set-game.netlify.com](https://best-set-game.netlify.com) to play!

## Technology Used

* Vanilla JavaScript
* Ruby on Rails
* PostgreSQL database
* Semantic UI
* Custom CSS

The GitHub repo for the frontend can be found [here](https://github.com/aresnik11/set-game-frontend).

## Features

Set Game allows users to:

* Start a new game
* Read the rules of how to play
* See high scores
* Select cards that may be a set
* Visually see if selected cards are a correct set
* Check if there is a set on the board
* Visually see if there is a set on the board, if there is not, the cards will reshuffle
* See how much time has elapsed in their game
* Pause the game
* See how many cards are remaining in the deck

## How To Use

Visit [https://best-set-game.netlify.com](https://best-set-game.netlify.com) to play!

To test on your own machine:
1. Clone this repository
2. Switch to Ruby version `2.6.1`
3. Make sure `postgreSQL` is running on your computer, if not, download and run it
4. In terminal run
```
bundle install
rails db:migrate
rails db:seed
rails s
```
5. Follow instructions [here](https://github.com/aresnik11/set-game-frontend) to run the frontend
6. You will need to update `config/initializers/cors.rb` to accept origin requests from wherever your frontend will be hosted

## Enjoy!
