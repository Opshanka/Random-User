Random User SwiftUI App
An iOS app that shows a list of random users from around the world.
Built with SwiftUI to explore
    - API integration
    - navigation patterns
    - maintainable code architecture
    
Key features
- Browse a list of users with photos and names
- View detailed profiles by tapping any user
- Pull down to refresh and get new users
- Search through the list by name or email
- Handles loading and network errors

Getting started
Need Xcode 16+ and iOS 17.0+ to run
    1 Download the code
      - https://github.com/Opshanka/Random-User
    2 Open in Xcode
    3 Run the app

How it works
-https://randomuser.me/api/?results=20

Sample API Response
{
"results": [
{
"gender": "female",
"name": {
"title": "Ms",
"first": "Jane",
"last": "Doe"
},
"email": "jane.doe@example.com",
"phone": "123-456-7890",
"picture": {
"large": "https://randomuser.me/api/portraits/women/1.jpg",
"thumbnail": "https://randomuser.me/api/portraits/thumb/women/1.jpg"
}
}
// ...
]
}
