
### How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes life easier because you are able to visualize all the changes that were made to your files. That way, you can stay organized even when working with other people. Also, if you make a mistake, you can go back and reatart from when the code was good.

### What is a commit?
A commit is a way of comfirming all the changes you made to your files. It also allows you to leave a comment ont he changes that were made so people can see and explanation of what you were working on. 

### What are the best practices for commit messages?
It is good to use imperative verbs when making commit messages that way the person that is merging can 
see what changes will be made when doing the merge.

### What does the HEAD^ argument mean?
The head argument is the points where you made each commit. You can refer to the HEAD^ to go 
back to certain commit that you made.

### What are the 3 stages of a git change and how do you move a file from one stage to the other?
1. git add - adding changes that were made to the git repo.
2. git commit - confirming and applying the changes that were added.
3. git push - push changes to the remote repo.

To move from one stage to another you just enter the commands in the the terminal.

### Write a handy cheatsheet of the commands you need to commit your changes?
git add . -> add all the changes
git commit -m 'change message here with impertaive verbs' 
git push origin branch-here -> push the changes to a remote repo.

### What is a pull request and how do you create and merge one?
When you push a branch, you will be able to make a pull request. A pull request is when 
a repo is asking to be merged to the base branch. This way, the person who is in charge of the repo 
can add the changes after reviewing everything that was changed. You can merge a pull request once you create it 
by push a branch.

### Why are pull requests preferred when working with teams?
Pull requests are great when working in teams that way one person can manage all the merges to the 
master files. This way, if there are conflicts, that person can sort them out and take care of them.