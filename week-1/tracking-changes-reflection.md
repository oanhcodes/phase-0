#How does tracking and adding changes make developers' lives easier?
By tracking and adding changes to code with git, developers can return to an earlier version of code if something they are currently working on breaks the code. This prevents the loss of work and allows more people to collaborate and review in each project.
#What is a commit?
A commit saves a snapshot of your code so you are able to track changes made. You can also return to any commits at any time.
#What are the best practices for commit messages?
Commit messages should be written in the present tense to show what the commit will do. The message should be brief and state what change was made and why it was done.
#What does the HEAD^ argument mean?
This refers to the last commit that was made.
#What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change are 1)Add 2)Commit 3)Push. After working on a file and saving the changes, the untracked modified file can be added to git by typing git add filename. To commit the change, type git commit -m "Type commit message here". You can check the status of the changes at any time by typing git status. To push the commit, type git push origin filename.
#Write a handy cheatsheet of the commands you need to commit your changes.
git status - This will show if there are any changes or modifications were made that need to be committed
git add . - This will add modified files to git
git commit -m " " - This will save a snapshot of all the changes made.
git rest -- soft HEAD^ - This will remove a file from added back to untracked.
git push origin - This will push changes to GitHub
#What is a pull request and how do you create and merge one?
A pull request merges the code from different branches to the maine branch. After push code to GitHub using git push origin file name, go to GitHub and click Compare & Pull Request. Rewview the changes, and select merge pull request. Delete old branches.
#Why are pull requests preferred when working with teams?
Pull requests allow for all the changes to be reviewed, approved, and merged together from multiple users.