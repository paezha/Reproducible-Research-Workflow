# GEOG 712 Reproducible Research

## Session 3. Git and Github

### What is version control

Version control is a system to systematically record changes to files in a project, in such a way that it is always possible to recall specific versions of the files at any point in the life of the project. 
There are different reasons why version control is a valuable tool in reproducible research.

Having versions of a project is useful because it prevents error propagation. For instance, if changes are made in a coding project that introduce error (e.g., the analysis fails, the code breaks, etc.), it is always possible to retrieve files from a previous version before any questionable changes were completed.

Version control also allows projects to grow. For instance, there might be some common elements in different projects, say, data preprocessing, after which analysis can differ. Version control would allow multiple projects to branch from that common root with ease.

Version control can be done locally. 

In this case, files are stored in a local system and are identified by versions. The user can select which version to work with. A very simple way of doing version control is by naming files according to progression. Many of us will call a file "Document-Sept-19-2019", and then when we work on it again and make changes, save the new file as "Document-Oct-15-2019". This is a rudimentary and inefficient way of doing version control, given the proliferation of files and the difficulty of keeping track of changes.

![File Names - PhD Comics](phd101212s.gif)

Version control systems instead keep a database of files by version, while keeping track of changes.

Version control systems can also be centralized.

In this case, there is a version control server that serves versions of the project to one or more users, who also keep the project locally in their systems. An advantage of a centralized version control system is that it automatically provides backup for the project in the server. Another advantage is that a centralized system also makes it easy to collaborate with others - there will be more on this at a later session. 

In this session we will introduce some basic concepts and tools of version control.

### Software

Version control is implemented in a systematic way by different software applications. They include [PerForce](https://www.perforce.com/solutions/version-control), [Mercurial](https://www.mercurial-scm.org/), and [Bitbucket](https://bitbucket.org). For this seminar, we will use GitHub, a centralized version control system based on Git.

#### Git

[Git](https://en.wikipedia.org/wiki/Git) is a version control system that was created by Linus Torvalds (of Linux fame) after the source-control management system that he and his collaborators had been using during the creation of the Linux kernel changed the terms of use.

[Git](https://en.wikipedia.org/wiki/Git_(slang)) in British English slang means a contemptible and unpleasant person, and without much [argument](https://www.youtube.com/watch?v=xpAvcGcEc0k) Torvalds called the project "the stupid content tracker". Git, like Linux, is an open source free project.

#### GitHub

GitHub is a hosting service for version control based on Git. It implements the functionality of Git and complements with additional features. As of 2019 it is reported to have 38 million users and at least 28 million public repositories, which makes it the world's largest host of source code - althought source code is only one class of information that GitHub serves.

For this seminar you will need to create an account with [GitHub](https://github.com/join?source=header-home). An account can be created for free which offers full functionality using public repositories. A GitHub Pro account is needed in order to keep private repositories, but for the purpose of this seminar you do not need it.

If you do not have an account yet, please create one now.

### So what can we do with a version control system?

Lets quickly tour GitHub.

![GitHub Welcome Screen](Session-3-Figure-1.png)

#### Creating a repository

The starting point for using version control is to create a repository. See below:

![Create a Repository](Session-3-Figure-2.png)

You will need to choose a name for the repository and select the settings. See below:

![Repository Settings](Session-3-Figure-3.png)

The settings allow you to create a README.md document immediately, so that the repository is not empty.

#### Making and committing changes using the online editor

Any text files can be edited directly using the online editor:

![Edit a File Online](Session-3-Figure-4.png)

#### Review the history of a repository


![History of a Repository](Session-3-Figure-5.png)

#### Review version changes


### You can also be a little bit social using version control

Git and GitHub encourage interaction with creators and developers.

#### Fork a repository

A _fork_ is an original copy of a repository that can be used to experiment with changes without those changes being reflected in the original project. Forks are a practical way of using some project as the starting point to develop your own ideas. Forks can also be used to propose changes to the original project - for instance improvements or bug fixes.

![GitGub Repository](Session-3-Figure-6.png)

Try forking this repository: https://github.com/paezha/Reproducible-Research-Workflow

#### Request a pull

When you wish to suggest changes to the owner of the repository, you can request a pull. It is up to the owner to accept the request or not.

For example:

Student Name | Last Name | Program
-|-|-
Elise | Desjardins | Physics
Jaila | Shamal | Geography
Ritchie | Lee | Chemistry
David | Ma | Chemistry
Megeen | Magee | Geography
John | Meral | Geography
Sear | Sean | Engineering
Rajveer | Ubhis | Geography
Tatiane | Ferrari | Economics
Fernando | Romero | Economics

### GitHub Desktop

In addition to creating an account with GitHub, you will need an app called GitHub Desktop, which can be downloaded [here](https://desktop.github.com/). This app allows you to interact with GitHub from your local system.

At this point, try launching your R application. The core application includes a Graphical User Interface, which will look like this:


We will not spend much time on this barebones GUI, because there are better alternatives to interact with R. Suffice to say that this GUI gives you a console where you can execute code, and you can also create _scripts_, text files with instructions that can be saved, executed, edited, and so on.

Very simply, you can use the console in this GUI as a calculator and the functionality just grows from there. Try the following:

`print("Hello, World")`

#### Clone a repository

When a repository is created on GitHub, it first only exists remotely. To create a copy locally, you must _clone_ the repository. You can clone any public repositories, including obviously your own. The system will then synchronize the local version with the remote version.






### Activity

1. Create a new R Markdown file, name it "Your Name Activity 1"

2. Create a level-1 header and write in less than 200 words what is your main research interest. Use formatting for emphasis as appropriate.

3. Create a new level-1 header and type "Favorites"

4. Under this header, create a level-2 header "Favorite Music". Create a numbered list with your 5 favorite songs.

5. Still under favorites, create a new level-2 header "Favorite Equation" and type your favorite equation

6. Still under favoritesm create a new level-2 header "Favorite Artists" and create a table with two columns "Name" and "Achievements". Populate the table with 5 favorite artists.

7. Create a new level-1 header and type "A Chunk of Code". Under this header create a chunk of code, whatever you want R to do immediately for you.

8. Once you have done this, knit your document to PDF and email to both instructors.

### Suggested readings

[Data Science Training for the Arctic Data Center - Introduction to R and R Markdown](http://training.arcticdata.io/materials/arctic-data-center-training/introduction-to-r-and-rmarkdown.html#rmarkdown)

[R Markdown](http://rmarkdown.rstudio.com)

