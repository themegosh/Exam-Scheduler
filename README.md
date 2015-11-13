<h1>Humber's Exam Scheduler Final Project</h1>
This repository contains all of the code related to the Server portion, as well as implementation of the dnyamic html client pages.
Most of this is my own opinion of a solution of implementation. I am very open to change. Post questions in the Skype/Facebook(we need to make one) group.

<h2>The Pages</h2>
Each page will have two parts: GET and POST handling, with some exceptions.

<h3>Login</h3>
<h4>GET</h4>
View: Login form with username and password fields.
Actions: On submit, pass the username and password parameters to be handled by POST.
An additional feature of this page is passing a GET parameter logout=true which will kill the session and show a fresh login page.

<h4>POST</h4>
The username and password parameters are run through the Logic, checking for validity.
If the user is valid, set up session details and redirect them to the Home page.
If the user is invalid, show the form again with descriptive errors.

<h3>Home</h3>
<h4>GET</h4>
Depending on if the user is an administrator or not, we will display different options.
**User**
1. Link to Search their Exams. (Exams.java)
2. Link to Create New Exam. (Exam.java)
3. Link to Change Password. (User.java)
**Administrator**
1. Link to Search all Exams. (Exams.java)
2. Link to Create New Exam? (Exam.java)
3. Link to Search Users (Users.java)
<h4>POST</h4>
There is no POST processing needed here.

<h3>Exams - Filtering one or more</h3>
<h4>GET</h4>
This page is an advanced search tool. The idea here (for the sake of not making multiple pages) is to include a search box, filter keyword dropdown option (by date, room, course, etc), and one or more results below it. Consider it the Google Search Results page for Exam Schedules. For the sake of efficiency and visuals, pagination is a perfect concept to apply here.
When a user is first directed here, they will see a different set of results depending on their access level. A user will see a list of all of their own scheduled exams (or others too?). (This means that a filter already needs to be in place [Logic/Server folks])
An administrator will see an unfiltered list of Scheduled Exams.
**Client**: Its totally up to you how you want to implement this design wise, but my inital idea was listing the schedules like so (specifically in regards to the in-line buttons): http://www.bootply.com/l1h1qhPDgn
The Edit button would likely generate a URL that looks like: ExamScheduler/Exam?id=123
The Delete button would likely generate a URL that looks like: ExamScheduler/Exam?id=123%action=delete (where a confirmation option would be displayed on the next page)
Also, adding a button somewhere to create a new Exam Schedule somewhere on this page would be awesome. (possible url ExamScheduler/Exam?action=new)
**GET Parameters**: this page would ideally only have two parameters: filterString (what they type in the search box) and filterType (what the pick from the dropdown)

<h4>POST</h4>
There is no POST processing needed here.

<h3>Exam - New/edit an Exam</h3>
<h4>GET</h4>
**Parameters**
1. id: the ID of an exam to load into the textboxes/datetime pickers/etc
2. action: Whether to show a blank template (new exam schedule), or to show a delete confirmation message.

This is one giant form containing all textboxes, dates, etc for an exam schedule that will be populated with data pulled from the DB if an ID is present. If the action=new, a fresh form without data will be presented for the user to fill.
The sanitization here (verifying the integrity/validity of the data entered) will be monsterous, and I'm hoping the Logic folks will have lots of useful exceptions for us to use.

**The Current Issue** The design and implementation of this will need to be discussed (likely in a few weeks) due to the differing of opinions in regards to how the user select rooms/times. It has been suggested that after a user has entered a date, we present them with a large list of radio buttons that shows what rooms/times are available. It has also been suggested that the user may pick a room, then we show the available dates/times for it. My preference is to allow the user to select the date and time of their exam, and we present them with a dropdown menu containing available rooms for them to pick. All of these methods require a second Exam page to be displayed.

<h4>POST</h4>
This is where the magic happens. There will be dozens of POST variables to pass. (mostly determined by the Logic groups code)


<h3>Users</h3>
This page should only be viewed by the Administrator and is used to search for users. The search results themselves could be displayed in a similar way to that of the Exams search results (ex http://www.bootply.com/l1h1qhPDgn)

<h3>User</h3>
This is the single user cusomization page. Password/name/etc changing.

Parameters passed would be the User's Id. Only administrators should be able to change other user's info.


