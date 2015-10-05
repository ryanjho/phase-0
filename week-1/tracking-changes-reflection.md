#Tracking Changes Reflection

## Reflections 
- How does tracking and adding changes make developers' lives easier?
  - Tracking and adding changes allows developers working on the same project to minimize work overlap and errors arising from miscommunication. This process of regular tracking and adding changes provides an efficient framework of stage gates to manage multiple changes to a project that might be happening simultaneously as a team of developers work on different parts of the code base. This comprehensive stage-gating process definitely makes developers' lives easier.

- What is a commit?
  - A commit is equivalent to saving a snapshot of the work that the user is doing. Commit is used to store the changes made by the user in the local repository at a given point of time.

- What are the best practices for commit messages?
  - The first line of a commit message should have a brief description (~50 characters) and should skip the full stop
  - The body of the commit message should use the imperative, present tense like "change" (instead of "changed" or "changes"). It should also include the motivation for change and contrast its implementation with previous behavior

- What does the HEAD^ argument mean?
  - HEAD^ is the last commit (vs. HEAD which is the commit that you are currently on) 

- What are the 3 stages of a git change and how do you move a file from one stage to the other?
  - The 3 stages of a git change are from the Working Directory, to the Staging Area, and the Git local repository
  - At the beginning, you can create a new branch from your master branch. Once you have created a file, you can start the process to make a git change. 
  - Once you have made some changes to the file on your working directory, you can start staging your changes by adding them to your staging area. Once you are ready to commit those changes, you can input the the git commit -m "<message>" command and store your changes permantently to your Git local repository

- Write a handy cheatsheet of the commands you need to commit your changes?
  - git status => Check status of all files in the local repository
  - git log => Check your commits
  - git add <filename> => Stage (add) files to Staging Area
  - git reset HEAD <filename> => To unstage your files back from Staging Area into your Working Directory
  - git commit -m "<message>" => Commit changes to Git local repository
  - git reset --soft HEAD^ => To change the files that you had commited


- What is a pull request and how do you create and merge one?
  - Pull requests let you tell other about changes you've pushed to a repository on GitHub. Once a request is sent, interested parties can review the set of changes, discuss potential modifications, and even push follow-up commits if necessary.
  - To create a pull request, you need to ensure that you are on a feature branch. You can then push this branch to GitHub using the following command: git push origin new-branch-name
  - Next, got to your fork on GitHub and you should be able to see the branch that you pushed in the drop-down menu. Click on it
  - Click on "pull request", (in some cases, you need to ensure that your base fork should point to YOUR-USERNAME, and "compare" points to the branch you pushed, not the master)
  - Once you have the correct branches, you can choose to input a comment in, or just press "Create pull Request"
  - To merge changes, you need to click on the pull request you just made, and click "Merge pull request". It will ask you to confirm the merge, and proceed to confirm
  - Lastly, it is best practice to clean up your branches and delete that extra branch you made by pressing the "Delete branch" button

- Why are pull requests preferred when working with teams?
  - Pull requests are preferred because it allows everybody else on the team to know that they need to review the code and merge it into the master branch. The pull request is a dedicated forum for discussing the proposed feature. If there are any problems with the changes, teammates can post feedback in the pull request and provide tweaks by pushing follow-up comments. All of this activity is tracked directly inside of the pull request, and provides a much more streamlined workflow.