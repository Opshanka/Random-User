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
 - https://github.com/Opshanka/Random-User <br />
2 Open in Xcode <br />
3 Run the app <br />

How it works
-https://randomuser.me/api/?results=20

<pre><code> Sample API Response
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
    ]
}
</code></pre>

What were your priorities, and why?
 - My top priority was implementing core functionalities - Scrollable list of users from the Random User API and detail view for each user
 - Because this ensured the app met the primary functionalities.
 
 - Maintainablility
 - Because we should build the app with correct Architecure from Day one. It will ensure the readablity of the code and SOLID principles.
 
If you had another two days, what would you have tackled next?
 - If I have another two more days I will focus on UI enhansments, Unit Tests and Image Caching
 - I will improve the searchbar more, current version is a primary implementation.
 - Another main improvement should be Image Caching, this may reduce flickeriing during scrolling
 
What would you change about the structure of the code?
- UserService class need more improvment ex: Use dependency injection and defining a protocol to make mocking easier in tests.
- Seperating logic for list and detail views will be needed when the app grows.

What bugs did you find but not fix?
- Image Flickering is a issue here. This may can be issue with slow networks.
- Still there is less Error Recovery functionalities ex: Retry action in the error view would improve UX.
- If a failed API calls, users must pull to refresh to retry. If there is any other action, it will improve UX.

What would you change about the visual design of the app?
- Need transitions and animations for navigation ex: slide or fade to enhance the transition between list and detail views.
- Loading Animation should be relaced with custom animation to improve the engagement of user.
- If user can change the app's theme colors will improve more UX.
 

