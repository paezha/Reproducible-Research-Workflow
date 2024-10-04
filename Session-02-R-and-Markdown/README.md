# GEOG 712 Reproducible Research

## Session 2. R and R Markdown

### Software

One of the key tools to implement reproducible research in this course is R, a free software environment for statistical computing and graphics.

The present notes were developed using R version 4.2.2 (2022-10-31) -- "Innocent and Trusting". If you have an older version of R, your might want to install this or a newer version.

#### R

You can download R [here](https://www.r-project.org/).

R was created by Ross Ihaka and Robert Gentleman for use in their statistics courses at the University of Auckland, New Zealand. Their aim was to offer their students a free software environment for doing work. R later became viral, as other interested parties started to contribute to the core package, and began creating specialized packages to enable sophisticated forms of analysis. Currently R is one of the most popular statistical languages in the world and it is perhaps the choice language for statistical computing.

An advantage of R is that its broad user and developer community means that new applications are created and tested much more quickly than any commercial software.

At this point, try launching your R application. The core application includes a Graphical User Interface, which will look like this:

![Base R GUI](Session-2-Figure-1.png)

We will not spend much time on this barebones GUI, because there are better alternatives to interact with R. Suffice to say that this GUI gives you a console where you can execute code, and you can also create _scripts_, text files with instructions that can be saved, executed, edited, and so on.

Very simply, you can use the console in this GUI as a calculator and the functionality just grows from there. Try the following:

`print("Hello, World")`

#### R Studio

The barebones GUI of the base R distribution lacks a number of useful functions, such as file navigation and debugging.

A better option is an IDE - short for **I**ntegrated **D**evelopment **E**nvironment. An IDE is a software application that provides facilities useful for writing code. There are several IDEs available for use with R, including [RKWard](https://rkward.kde.org/), [Rcommander](https://www.rcommander.com/), and [Revolution R Enterprise](https://www.microsoft.com/en-us/download/details.aspx?id=51204).

For this course we will use R Studio, a popular IDE for R that can be obtained [here](https://www.rstudio.com/).

The present notes were developed using R Studio Version 1.2.1335. If you have an older version of R Studio you might want to upgrade now or soon.

Once that you have installed R Studio, launch it. It should look like this:

![R Studio IDE](Session-2-Figure-2.png)

Let us take a few minutes to explore the different parts of the IDE.

### Markdown and R Markdown

Once that you are familiar with the different parts of the R Studio IDE, we are ready to use the _Source_ pane. This pane is basically a text editor that allows you to work with many different types of text files. 

A basic type of text file is an R script. R scripts have the extension ".R" and recognize all text as if it was R code. When working with R code, you can add comments by using this mark: "#". Any lines that begin with this mark are ignored when executing code. 

The traditional way of scripting is to write code and add commentary around it. Create a new script and try the following:

`This is a simple R script`

You will notice that this is flagged as an error: the IDE is reading this sentence as code, and it is not syntactically correct R!

Change this to:

`# This is a simple R script`
`print("Hello, World")`

The error vanishes, because the comment is now ignored, and the second line is syntactically correct R.

Reproducible research can be accomplished by writting code in a script and commenting the code. A disadvantage is that it is not a very human friendly way of reading. The main focus is on writing for the computer and the comments are secondary.

A different style of writing code is by adopting a [literate programming](https://en.wikipedia.org/wiki/Literate_programming) approach, whereby the focus is on writing for humans, and the code is embedded in the text. Literate programming encourages the writer to write for a human audience, and the instructions to the computer are meant to support the writing. This approach turns traditional coding on its head, and makes programming more friendly and approachable.

Literate computing can be implemented in R Studio by means of several types of files, including R Notebooks and R Markdown. Both of these are based on Markdown.

#### So, what was Markdown?

Markdown is a lightweight typesetting language that allows you to work with simple text files that can be rendered in different ways, for instance html, pdf, and Word. Markdown offers simple formatting options, and lacks the extensive functionality of word processors, such as Microsoft Word and WordPerfect. On the other hand, Markdown files can be created and edited in free text editors.

At this point create a new R Markdown file to experiment with Markdown. Call it "Name First Markdown Document".

Some of the formatting possibilities are as follows:

Main headers are created using "#", and sub-headers are "##", "###", and so on, for instance:

\# Header 1  

# Header 1

\#\# Header 2  

## Header 2

\#\#\# Header 3  

### Header 3

\#\#\#\# Header 4  

#### Header 4

You can add horizontal rules by typing three of: \*\*\*, or \_\_\_, or \-\-\- under the text. See:

\# Header 1

\*\*\*

# Header 1

***

\#\# Header 2

\_\_\_

## Header 2

___

\#\#\# Header 3

\-\-\-

### Header 3

---

Use ">>" for block quotes:

>> This is probably the best course I have ever taken in all my geographical life

Other formatting styles:

\_italics\_ or \*italics\*:

_italics_ or *italics*

\_\_bold\_\_ or \*\*bold\*\*":

__bold__ or **bold**

\`code\`:

`code`

Unordered lists can be created by typing "-" at the beginning of each item:

- Item A
- Item B
- Item C

Whereas ordered list use numbers, like so "1. ":

1. Item 1
2. Item 2
3. Item 3

Use two blank spaces for line breaks. See the difference:

This paragraph
does not break over two lines

This paragraph  
does break over two lines

This paragraph  
  
has an additional blank line

But you can only  
  
  
    
have one blank line, even if you use more than one line break

Simple tables can be created in this way:

First Header  \| Second Header  
\- \| \-  
Content Cell  \| Content Cell  
Content Cell  \| Content Cell  

See:

First Header  | Second Header
- | -
Content Cell  | Content Cell
Content Cell  | Content Cell

Mathematical notation can be introduced by using LaTeX (don't worry too much about this, we will introduce more of this as we go along). To create mathematical notation, use "$$" before and after the maths:

`$$`  
`y = x^2`  
`$$`

See:

$$
y = x^2
$$

#### And what is R Markdown?

Markdown gives you the tools to communicate in writing with others. It is like word processosing, only with less functionality, but with the advantage that you do not need to worry too much about formatting and can concentrate on writing instead.

R Markdown, in turn, is a variety of Markdown developed to support literate programming. The neat part of R Markdown is that it allows to embed executable code in the text file.

There are two ways that you can introduce code in R Markdown: inline or as a _chunk_. Inline code is introduced by writing R code between these marks: \`r print("Hello, World")\`

A chunk of code begins with three backticks \`\`\` followed by "r", and ends with three backticks:

\`\`\` r  
print("Hello, World")  
\`\`\`  

By combining a simple markup language (Markdown) with R we have the tools to begin creating reproducible research documents.

Try _knitting_ your first R Mardown document to different files types (html, pdf, Word)

### Think formatting does not matter?

Try reading this:

***

Methods
Spatial Autocorrelation and Map Pattern
Spatial autocorrelation is a condition whereby the value of a variable at one location is correlated with the value(s) of the same variable at one or more proximal locations. A tool widely used to measure spatial autocorrelation is Moran’s coefficient of autocorrelation, or $C for short. In matrix form, MC can be formulated as follows:
MC=1/(n sum_i sum_j w_ij)*(x'Wx)/(x'x)
where x is a vector (nx1) of mean-centered values of a georeferenced variable, and W is a spatial weights matrix of dimensions (nxn) with elements w_ij. The elements of the spatial weights matrix take non-zero values if locations i and j are deemed to be spatially proximate in some sense, and 0 otherwise. It can be appreciated that the coefficient is composed to two elements: the variance of the random variable (i.e., (x'x)⁄n) and its spatial autocovariance (x'Wx)/(sum_i sum_j w_ij). As an alternative, the numerator of the right-hand term of Equation 1 can be expressed as follows:
x'(I - (11')/n)W(I - (11')/n)x
with I as the identity matrix of size nxn and 1 a conformable vector of ones.

***

And this:

***

# Methods

## Spatial Autocorrelation and Map Pattern

Spatial autocorrelation is a condition whereby the value of a variable at one location is correlated with the value(s) of the same variable at one or more proximal locations. A tool widely used to measure spatial autocorrelation is Moran’s coefficient of autocorrelation, or $MC$ for short. In matrix form, $MC$ can be formulated as follows:

\begin{equation} \label{eq:1}MC=\frac{n}{\sum_{i}{\sum_{j}{w_{ij}}}}\frac{x'Wx}{x'x}\end{equation}

where $x$ is a vector $(n\times1)$ of mean-centered values of a georeferenced variable, and $W$ is a spatial weights matrix of dimensions $(n\times n)$ with elements $w_{ij}$. The elements of the spatial weights matrix take non-zero values if locations $i$ and $j$ are deemed to be spatially proximate in some sense, and 0 otherwise. It can be appreciated that the coefficient is composed to two elements: the variance of the random variable (i.e., $(x' x)⁄n$) and its spatial autocovariance $\frac{(x'Wx)}{\sum_{i}{\sum_{j}{w_{ij}}}}$. As an alternative, the numerator of the right-hand term of Equation 1 can be expressed as follows:

\begin{equation} x'\Big(I - \frac{11'}{n}\Big)W\Big(I - \frac{11'}{n}\Big)x\end{equation}

with $I$ as the identity matrix of size $n\times n$ and $1$ a conformable vector of ones.

***

### Activity

1. Create a new R Markdown file, name it "Your-Last-Name-Activity-1"

2. Create a level-1 header and write in less than 200 words what is your main research interest. Use formatting for emphasis as appropriate.

3. Create a new level-1 header and type "Favorites"

4. Under this header, create a level-2 header "Favorite Music". Create a numbered list with your 5 favorite songs.

5. Still under favorites, create a new level-2 header "Favorite Equation" and type your favorite equation

6. Still under favorites create a new level-2 header "Favorite Artists" and create a table with two columns "Name" and "Achievements". Populate the table with 5 favorite artists.

7. Create a new level-1 header and type "A Chunk of Code". Under this header write a chunk of code, something you would like `R` to do immediately for you.

8. Once you have done this, knit your document to PDF and email to both instructors.

### Suggested readings

[Data Science Training for the Arctic Data Center - Introduction to R and R Markdown](https://training.arcticdata.io/2020-10-arctic/)

[R Markdown](http://rmarkdown.rstudio.com)

