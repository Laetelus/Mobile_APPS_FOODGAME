Original App Design Project By - Carlo Leiva, Danilo Montalvo, Angelo Alies, Giovanna Yuen
===

# FoodGame

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Food deciding app. When a group or a couple can't decided on a place to eat then the app rolls a dice on 3 selected food places the group/couple decided and then the app decides it for you.It’s a game on selecting a place the gorup/couple wants to eat and removes the usless back and forth converstion of where to go.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Food selecting/review
- **Mobile:** Mobile only experience.
- **Story:** It’s a game on selecting a place the gorup/couple wants to eat and removes the usless back and forth converstion of where to go.
- **Market:** Couples, group, or people who can't decied and its also like fun simple a game for the group to enjoy.
- **Habit:** Every one has to eat and every one deciiend where to eat so why not make the procces simpler and let the app think for you.Not only that but it's a fun and unique way to do it.
- **Scope:** Many companys apps started samll or they pivioted form there fitst idea for example face book was orginaly a dating app but then slowly trasformed into a social mida platform which influences the world.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* [fill in your required user stories here]
* register new account 
* user can login
* user can see fast food/resturants location
* star reviews of fastfood/resturants.
* comments on fastfood/resturants.
* user see some type of animation(dice or spining wheel it's random) that selects the food place.


**Optional Nice-to-have Stories**

* [fill in your required user stories here]
* point system that can be used for reward or posibly discounts.
* be able to see friends selected places and comments of there expericne.
* Have an avatar that can be seen by friends and which is also customisable

### 2. Screen Archetypes
* Register
    * register new account 
* Login
   * user can login
* Maps
    * user can see fast food/resturants location around them
* stream review
    * star reviews of fastfood/resturants around them.
* creation comment
    * comments on fastfood/resturants.
* Detail game
    * user see some type of animation(dice or spining wheel it's random) that selects the food place.

    

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Maps
* Stream reveiew
* creation comment
* Detail game

    

**Flow Navigation** (Screen to Screen)

* Register
    * stream review
* Login
    * stream review
* Maps
    * stream review
* stream review
    * Detail game
* creation comment
    * stream review
* Detail game
    * stream review

![](https://i.imgur.com/27y3Imz.jpg)

## Schema 
### Models

#### Store post

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | Stores        | Pointer to store|  image of store |
   | caption       | String   | caption of store |
   | starCount    | Number   | number of stars on the store |
   | comments | string   | comments of user given to store post  |
   | commentsCount | Number   | number of comments that has been posted to an image |
   | objectId      | String   | unique id for each store (default field) |

#### comment

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the users comment |
   | starCounts   | Number   | number of stars on the stores |
   | comments    | String   | comments given to stores |

#### user

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for stores nearby |
   | starCount   | Number   | number of stars on the store |

#### Details game
   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for stores chosen |
   | starCount   | Number   | number of stars on the store chosen randomly |

### Networking
#### List of network requests by screen
   - Home Feed Screen
      - (Read/GET) Captions of store's objects 
      - (Read/GET) star Reviews of store's objects 
      - (Create/POST) Create a new star rating on a store post
      - (Create/POST) Create a new comment on a store post
      - (Delete) Delete existing comment
      - (Delete) Delete existing star reviews
   - Create comment Screen
      - (Create/POST) Create a new comment object
      - (Create/POST) Create a new star rating on a store post
   - Profile Screen
      - (Read/GET) Query logged in user object
      - (Update/PUT) Update user profile image
   - map Screen
      - (Read/GET) object stores location near by
      - (Update/PUT) update user's object location
   - detail game screen
      - (Read/GET) 3 store Objects selected for the game
      - (Read/Get) store chossen caption once the store is slected
      - (Read/GET) star Reviews of store's objects 

### [BONUS] Interactive Prototype / Sprint Build 
#### unit 11 - Sprint 2 - user login 
- user can make an account and login aswell as log out. User will also stay logged in until they logged out of the app -
![ezgif com-gif-maker-9](https://user-images.githubusercontent.com/87499194/203812326-a6ca841b-ff1e-4ded-8154-00682a68803c.gif)

      
#### [OPTIONAL:] Existing API Endpoints
##### An API of parse data base for users
- Base URL - https://parseapi.back4app.com
 HTTP Verb | Endpoint | Description
   ----------|----------|------------
    `GET`    | /users | gets user login in
