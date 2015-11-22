#Humber's Exam Scheduler Final Project
This repository contains all of the code related to the Server portion, as well as implementation of the dnyamic html Client pages.

##How to Contribute
If you want your name to appear on any of the files, you're going to need to edit them in yourself after contributing to that file in some way. This means you're going to need to set up various pieces of software to test builds of the website along with send your changes from your pc, back to this github repo.

###Github Desktop App
The first piece of software you need is the Github Desktop App available from here: https://desktop.github.com/

In order to continue, you're going to need to create a Github account and send your username to facebook.com/doug.mathew or through skype: doug.mathew in order to be added as a collaborator. Once you've got the app installed and an account created and added to the project by Doug you're good to go.

####Obtainig a copy of the Exam-Scheduler repository:  
 - https://help.github.com/desktop/guides/contributing/cloning-a-repository-from-github-desktop/ 
 - If you've been added as a collaborator, you'll see the Exam-Scheduler repository listed for you to clone. The default location it will download to on Windows is "C:\Users\.....\Documents\GitHub\Exam-Scheduler".

####Syncing your local copy of the Repository
Before doing any work on your local copy of the project, its extremely important to ensure that it is up to date with any changes made by others in the repository. To do this, open the Github Desktop app, select "Exam-Scheduler" from the left list of repositories, and click the "Sync" button in the top right corner. I cannot emphasize how important it is to do this before making your own changes to the project, as it will save you the headache of "merging conflicts" that can be encountered when you're trying to push changes to the server where other changes have already been made (to one or more specific files). I'll cover how to resolve this later.
 
####Pushing changes from your PC to the Repository
The easiest thing to do is follow this guide  https://help.github.com/desktop/guides/contributing/committing-and-reviewing-changes-to-your-project/

One thing that is important though often overlooked, is the Commit Message. Writing something here helps others understand what changes have been made. This should be a short descriptive sentance, and will likely be seen by Alireza when hes grading.

Don't forget to Sync after making commits. Otherwise your changes remain on your local copy.

####Resolving Commit Conflicts
Git Commit Conflicts can occur when multiple people are making changes to the repository at the same time and have changed the code in a way that may overlap which results in Git not knowing what lines to overwrite. If this occurs, you should see a message that contains the file in conflict. When you open the mentioned file, you should see something that resembles this which indicates a conflict:
```
 <<<<<<< HEAD:mergetest
 This is my third line
 =======
 This is a fourth line I am adding
 >>>>>>> 4e2b407f501b68f8588aa645acafffa0224b9b78:mergetest
```
`<<<<<<<`: Indicates the start of the lines that had a merge conflict. The first set of lines are the lines from the file that you were trying to merge the changes into.

`=======`: Indicates the break point used for comparison. Breaks up changes that user has committed (above) to changes coming from merge (below) to visually see the differences.

`>>>>>>>`: Indicates the end of the lines that had a merge conflict.

#####How do I resolve a merge conflict in a file?
You resolve a conflict by editing the file to manually merge the parts of the file that git had trouble merging. This may mean discarding either your changes or someone else's or doing a mix of the two. You will also need to delete the '<<<<<<<', '=======', and '>>>>>>>' in the file. Once you're satisfied with the result, save it and try to commit again in the Github app.

###Editing and Testing the Project in Netbeans
First, if you don't already have Netbeans installed, [get it from here] (https://netbeans.org/downloads/). (Java EE bundle) This edition includes Tomcat which is what the server will be running on. (Like Apache, but for Java files)

If you already have Netbeans installed, you're going to want to go to the Plugins page and install/activate "Java EE Base".
1. In netbeans, go to "Tools" > "Plugins".
2a. Go to the "Available Plugins" tab, and search for "Java EE Base". Check its box, and hit install.
2b. If you can't find "Java EE Base" in the "Available Plugins" tab, go to the "Installed" tab and locate it there. check its box, then hit the "Activate" button.
3. Reboot Netbeans as prompted after the installation is complete.
4. In Netbeans, go to "File" > "Open Project" and find the github install folder (EX: "C:\Users\.....\Documents\GitHub\Exam-Scheduler")
5. After opening the project, you'll get an error saying there is no server configured.
  5.1. [Download Tomcat 7.0] (http://apache.mirror.rafal.ca/tomcat/tomcat-7/v7.0.65/bin/apache-tomcat-7.0.65-windows-x86.zip)
  5.2. Extract this folder somewhere on your computer. The Netbeans directory is a decent location, because thats likely the only program you'll use it with. (C:\Programs (x86)\Netbeans\)
  5.3 In Netbeans, right click the project name in root of the project tree in the left panel. Select "Resolve Missing Server Problem..."
  5.4 Click "Add Server..." in the window that opens.
  5.5 Choose "Apache Tomcat or TomEE" fron the list, and hit Next.
  5.6 Click Browse for a server location. This is whereever you extracted the Tomcat folder to. For me, its "C:\Program Files (x86)\NetBeans 8.1\apache-tomcat-7.0.65". Enter a random username and password (username test, password test) and hit finish. (the username and pass are completely unused ever again)
  5.7 You're finished! Press the green play button in the main toolbar to build+run the server. It should open a new browser page pointing towards (If you run into errors, post a message to the skype group. Or a direct message on Facebook.)
 


##The Pages
Each page will have two parts: The rest of this document is reserved for describing what all of the pages will do. This will likely need to be completely overhauled.

###Login
#####GET
View: Login form with username and password fields.

Actions: On submit, pass the username and password parameters to be handled by POST.

An additional feature of this page is passing a GET parameter logout=true which will kill the session and show a fresh login page.

#####POST
The username and password parameters are run through the Logic, checking for validity.

If the user is valid, set up session details and redirect them to the Home page.

If the user is invalid, show the form again with descriptive errors.

###Home
#####GET
Depending on if the user is an administrator or not, we will display different options.
**User**
1. Link to Search their Exams. (Exams.java)
2. Link to Create New Exam. (Exam.java)
3. Link to Change Password. (User.java)
**Administrator**
1. Link to Search all Exams. (Exams.java)
2. Link to Create New Exam? (Exam.java)
3. Link to Search Users (Users.java)
#####POST
There is no POST processing needed here.

###Exams - Filtering one or more
#####GET
This page is an advanced search tool. The idea here (for the sake of not making multiple pages) is to include a search box, filter keyword dropdown option (by date, room, course, etc), and one or more results below it. Consider it the Google Search Results page for Exam Schedules. For the sake of efficiency and visuals, pagination is a perfect concept to apply here.

When a user is first directed here, they will see a different set of results depending on their access level. A user will see a list of all of their own scheduled exams (or others too?). (This means that a filter already needs to be in place [Logic/Server folks])

An administrator will see an unfiltered list of Scheduled Exams.
**Client**: Its totally up to you how you want to implement this design wise, but my inital idea was listing the schedules like so (specifically in regards to the in-line buttons): http://www.bootply.com/l1h1qhPDgn

The Edit button would likely generate a URL that looks like: ExamScheduler/Exam?id=123

The Delete button would likely generate a URL that looks like: ExamScheduler/Exam?id=123%action=delete (where a confirmation option would be displayed on the next page)

Also, adding a button somewhere to create a new Exam Schedule somewhere on this page would be awesome. (possible url ExamScheduler/Exam?action=new)

**GET Parameters**: this page would ideally only have two parameters: filterString (what they type in the search box) and filterType (what the pick from the dropdown)

#####POST
There is no POST processing needed here.

###Exam - New/edit an Exam
#####GET
**Parameters**
1. id: the ID of an exam to load into the textboxes/datetime pickers/etc
2. action: Whether to show a blank template (new exam schedule), or to show a delete confirmation message.

This is one giant form containing all textboxes, dates, etc for an exam schedule that will be populated with data pulled from the DB if an ID is present. If the action=new, a fresh form without data will be presented for the user to fill.

The sanitization here (verifying the integrity/validity of the data entered) will be monsterous, and I'm hoping the Logic folks will have lots of useful exceptions for us to use.

**The Current Issue** The design and implementation of this will need to be discussed (likely in a few weeks) due to the differing of opinions in regards to how the user select rooms/times. It has been suggested that after a user has entered a date, we present them with a large list of radio buttons that shows what rooms/times are available. It has also been suggested that the user may pick a room, then we show the available dates/times for it. My preference is to allow the user to select the date and time of their exam, and we present them with a dropdown menu containing available rooms for them to pick. All of these methods require a second Exam page to be displayed.

#####POST
This is where the magic happens. There will be dozens of POST variables to pass. (mostly determined by the Logic groups code)


###Users
This page should only be viewed by the Administrator and is used to search for users. The search results themselves could be displayed in a similar way to that of the Exams search results (ex http://www.bootply.com/l1h1qhPDgn)

###User
This is the single user cusomization page. Password/name/etc changing.

This page will also be used by the administrator to create a new user. Likely by the id=new param.

Parameters passed would be the User's Id. Only administrators should be able to change other user's info.


