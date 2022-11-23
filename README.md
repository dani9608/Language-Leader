# Language-Leader
Language Leader app helps individuals to learn Spanish by allowing them to view flashcards and see if they are able to recognize the Spanish word in English through a quiz assessment.

Unit 10: Group Milestone - README Example
===

:::info
**Below is an example** of what your **Group Project README** should include and how it should be structured for the **Language Leader Group Milestone Submission**.
:::

# Language Leader

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)

## Overview
### Description
Language Leader app helps individuals to learn Spanish by allowing them to view flashcards and see if they are able to recognize the Spanish word in English through a quiz assessment.


### App Evaluation
- **Category:** Educational / Language
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer.
- **Story:** Allows user to access flashcards of words in Spanish to study them, and take a quiz.
- **Market:** Any individual could choose to use this app.
- **Habit:** This app could be used as often as the user wants.
- **Scope:** First we would start with giving users Spanish flashcards to study, then perhaps this could evolve to include other languages.

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**
- [X] User can register a new account
- [X] User can log in 
- [ ] User can study material
- [ ] User can take a quiz
- [ ] User can log out

**Optional Nice-to-have Stories**

- [ ] User can see progress
- [ ] User can view a leaderboard
- [ ] User can select level of difficulty
- [ ] User can study with friends

### 2. Screen Archetypes

* Login 
    * User can log in
* Register - User signs up or logs into their account
   * User can register a new account
* Flashcards
    * User can study material
* Quiz
    * User can take a quiz

* Logout
    * User can log out

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Flashcards
* Quiz

**Flow Navigation** (Screen to Screen)
* Login -> Flashcards
* Register -> Flashcards
* Flashcards -> Flashcards
* Quiz -> Quiz

## Wireframes
<img src="https://imgur.com/sY5vqo5.jpg" width=1000><br>

## Schema**

**Models**

*Register*

| Property | Type     | Description |
| -------- | -------- | ----------- |
| userName | String   | Unique for user |
| email    | String   | Unique address for user|
| password | String   | Code for user |


*Login*

| Property | Type     | Description |
| -------- | -------- | ----------- |
| email    | String   | Unique address for user|
| password | String   | Code for user |

*Study Flashcards*

| Property | Type | Description |
| -------- | -------- | -------- |
| image    | File     | Flashcard showing word in Spanish |
| image    | File     |  Flashcard showing word in English |

*Quiz*

| Property | Type | Description |
| -------- | -------- | -------- |
| optionA  | File     | First option of Spanish words |
| optionB  | File     | Second option of Spanish words |
| optionC  | File     | Third option of Spanish words |

*Settings*


| Property | Type | Description |
| -------- | -------- | -------- |
| pastScores | File   | List of scores from past quizes |
| accountInfo | File  | Account information unique to user |



### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]


- Register Screen
    - (Create/POST) Create new user
- Login Screen
    - (Read/GET) Query logged in user object
- Study Flashcards Screen
    - (Read/GET) Read flashcards
- Take Quiz Screen
    - (Update/PUT) Update quiz percentage
- Settings Screen
    - (Read/GET) Query user information

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![](https://github.com/iOSUniversityGroup/Language-Leader/blob/main/Logout.gif)
