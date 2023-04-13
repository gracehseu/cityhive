# MySMS Messenger

In this exercise you are requested to develop **MySMS Messenger**.

**MySMS Messenger** is a full stack web app allowing the end users to send SMS messages as well as displaying them.  

- The frontend of the app should be written in **Angular**'s latest stable version.  
- The backend (API) of the app should be written in **Ruby on Rails** with a database of your choice.


## MySMS Messenger Wireframe
![picture alt](https://s3.us-west-2.amazonaws.com/assets.cityhive.net/MySMS-Messenger/mysmsmessengerwireframe.png "MySMS Messenger Wireframe")

Sending an SMS should be done through [Twilio](https://twilio.com/ "Twilio") API with a free account you've opened on your own.  


## Functionality that we'd like the app to have:

1. You're able to send a message by talking to the backend API
2. The messages sent so far are stored in a DB that the backend manages
3. You're able to see the messages that were previously sent - the app should talk to the backend through a messages listing API endpoint
4. Only messages sent by the user's session ID cookie should be visible when calling the listing API

## Bonus 1 - Add basic authentication

Instead of using a session ID - add a user model to the backend.  
Users should be able to provide a user name + password through the app to login and then also log out  
Messages should be stored per user rather than session ID

## Bonus 2 - webhooks

Add a reflection to the message cards showing that twilio successfully delivered the message:  
https://www.twilio.com/docs/usage/webhooks/sms-webhooks?code-sample=code-send-an-sms-with-a-statuscallback-url&code-language=Ruby&code-sdk-version=5.x

## Bonus 3 - Deploy The App

In this part of the exercise, you are requested to deploy MySMS Messenger.  
End result would be a live demo of app that is fully functional.


Once done, please push your code to a public GitHub repo along with a link to the live demo of the app.  
