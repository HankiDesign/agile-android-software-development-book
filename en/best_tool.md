## Selecting the best tool for the job

As an *Open Source software* advocate, I prefer working with free software---as in freedom, and as in free beer---because I can lay eyes on the source code, and assess the source code quality, architecture, and even the seriousness of the developpers involved in the project just by doing a *checkout* of the project public repository.  In comparison, you can't look at the source code of most of the commercial software before deciding if you will buy it or not. There is some exception to that rule in the form of software developped using an hybrid model where a community edition is available as also a commercialy supported---and more feature complete---version; the *IntelliJ IDE* from *JetBrains* is a good example of that kind of product.  Google engineers have tweeked IntelliJ Community Edition---the Open Source version---to produce *Android Studio*.

The Open Source community is composed of hundred of thousands---or even more---software projects.  A couple of years ago, *Sourceforge.net* was the *de-facto* home for Open Source projects.  Now, with the rising popularity of *distributed version control systems* (DVCS)---such as *Git*---GitHub has replaced SourceForce as the developers hosting provider of choice for Open Source projects. Open Source is now used by many organizations and is, in many case, critical for their daily operations. I will not dissert here why and when the perception of the corporate world about Open Source switched---from a perception that Open Source as hobby---to considering Open Source as a serious alternative to commercial software. Noneless, that shift in perception affect how we write software today, and it affects the Android developer community too: it is a fertile ground of high quality Open Source frameworks, and libraries.  Luckily, that make it easy on our shoestring budget---if you happen to be a lone developer or part of a startup---but that brings another challenge, which is the topic of this chapter: How do you select the *right* tool among equivalent candidates?  
I have putted an emphasis on *right* in the previous sentance for a reason: a tool could be right for you, but not for another developer.  In this book, I've positionned many tools, which choice you could agree with or not. It all depends on your own software development flow and how these tools fit in.  In the following sections, as an example, I will show you how I have selected the *test driven development* (TDD) framework we will use thoughout this book.

At the end of this chapter, you will be able to use those techniques to evaluate yourself Open Source software in term of quality, maturity, and so forth.  You will be also able to reevaluate my choice of a TDD framework if it doesn't suits you.  Just by changing the required feature sets and the ponderation of those features the final result of the evaluation will not be the same.


### Rest on the shoulders of a giant

Some choice of tools for this book were obvious and didn't required much analysis on my part before selecting them for our *Agile Android developer toolbox*.  A good example is *Jenkins* as our continuous integration (CI) server.  While Jenkins won't win any UI design contest, it has a huge and active community.  Consequently, there are more plugins available for Jenkins---to extend its functionnalities---than all the other CI servers combined.  For that kind of *obvious* choice---when not just going with the mass---I rely on popular annual reports to justify my gut feelings. In the *Java* world, there is two yearly reports I trust : 

* The *Eclipse Community Report* : [http://www.eclipse.org/org/foundation/reports/annual_report.php](http://www.eclipse.org/org/foundation/reports/annual_report.php)
* The *Java Tools and Technologies Landscape* by Zeroturnaround (makers of *JRebel*) : [http://zeroturnaround.com/rebellabs/java-tools-and-technologies-landscape-for-2014/](http://zeroturnaround.com/rebellabs/java-tools-and-technologies-landscape-for-2014/)

There are also reports from the research firms available---such as the *Gartner Magic Quadrant*---but they focus more on corporate tools and not solely on Open Source---these reports also happen to cost lots of money.  Instead of buying one of those reports, I suggest you invest instead on cloud hosting, and a fast laptop---with lots of memory, and a large SSD. Most of the time, you should go with the mass and trust the Open Source project that leads the market---like Git for the DVCS.  Not that the other tools are not good but because---when you need help---the probability to get answers from the Internet are better.  You will end up spending less time searching for answers, and more writing code.  But, when there is no obvious market leader, you have to do an assessment among equivalent tools to find out the best tool for the job.  


### Open Source software assessment

In this section, I teach how to use a custom software assessment methodology to compare equivalent tools, and then make an informed decision. There is a couple of existing assessment methodologies, but most of them are now unsupported by their creators. For example, I was involved in the translation---English to French---of the *Business Readiness Rating* (BRR) methodology in 2005.  The BRR initiative was ambitious in that it was---for the first time---proposing a formal, and repeatable method to assess Open Source software using a set of known metrics.  It was a great improvment over some more hands-on evaluation methods such as Navica's *Open Source Maturity Model*.^[http://en.wikipedia.org/wiki/OpenSource_Maturity_Model]  But the BRR failed to get widely adopted and the OpenBRR website is now in a *coming soon* state for a long time.  You can still find the *RFC* and the template spreadsheets used to compute the readiness rating, but not from the BRR website.  Methodologies like BRR are great in case of medium to large corporations when you have to give justifications to upper management about your technological choices. For example, bureaucratic gymnastics are sometimes required when you want to set---or replace existing---*corporate standard* even in the case of a better, cheaper, and Open Source alternative is available.  If you are interested to know more about the various Open Source software assessment, there is an article on *Wikipedia* about it.^[[http://en.wikipedia.org/wiki/Open-source_software_assessment_methodologies](http://en.wikipedia.org/wiki/Open-source_software_assessment_methodologies)]   

Some other people have pickup the BRR templates, and revisited them---the templates are available under an Open Source license after all. One mature initiative is the templates offered by Smals---a Belgian healthcare company---as *Modèle de sélection OSS* (French for *Open Source Software Selection Model*).  You can download the templates, and the instructions freely from their website: [https://www.smals.be/fr/content/mod%C3%A8le-de-s%C3%A9lection-oss](https://www.smals.be/fr/content/mod%C3%A8le-de-s%C3%A9lection-oss). The download links are at the bottom of the webpage---even if the content is in French, the templates are in English.  As you will see if you consult the templates, there is a lot of information to fill in before we can get any rating computed.  That's a great amount of work and research if you're alone, and only want to make an informed decision about a new tool.

This is why I will present you in the next section with a custom assessment methodology which is less verbose---to the point---and more suitable for small teams.  


### Defining our unit testing environment

#### Metrics

How can we evaluate, and select unit testing tools for our Agile Android development toolbox?  As we have seen before, the BRR--and the like--proposes formal processes to evaluate, compare, and select Open Source solutions by comparing the score of similar software. But, they are a bit overkill for small teams and one time evaluation.  This is why I present you my own *no-time-to-waste* assessment methodology that focus only on selection creterion we really need to assess software development tools.

First, to help determine our feature requirements list, we will use Wikipedia's article [List of unit testing frameworks](http://en.wikipedia.org/wiki/List_of_unit_testing_frameworks).  Many langugages and plateforms are covered by that article but there is no specific section about Android.  Fair enough, we will look at the C++ section to see if we can pick some features from there by observing the column names:

* xUnit: Indicates whether a framework should be considered of xUnit type.
* Fixtures: Indicates whether a framework supports test-local fixtures. Test-local fixtures ensure a specified environment for a single test.
* Group fixtures: Indicates whether a framework supports group fixtures. Group fixtures ensure a specified environment for a whole group of Tests
* Generators: Indicates whether a framework supports data generators. Data generators generate input data for a test and the test is run for each input data that the generator produces.
* Mocks: Indicates whether a framwork supports simulated objects mimicing the behavior of real objects in controlled ways. 
* Exceptions: Indicates whether a framework allow tests to expect exceptions as part of the test result.  
* Grouping: Indicates whether a frameword supports grouping tests into a test suite.

Those criterias can be used to evaluate any unit testing frameworks because they are generic and not tied to a specific programming language nor plateform. Those are also good example of discrete criterias--that is: they can be answered by "yes" or "no"--which is usefull to quickly rule-out any candidate that doesn't match an *must have* feature.

Then comes the more empiric criterias--those can't be answered by "yes" or "no".  Those creterias need to be converted to measurable metrics.  To do so, we will define a scale--with values going from 0 to 5--that we will use as comparison factors.  For example, if you define that an must have criteria to your unit testing framework of choice is to support Android, you could have this kind of scale:

* 0: Doesn't support Android
* 2: Support Android
* 4: Support Android and mobile Web
* 5: Support Android, mobile Web, and iOS

Obviously, you will want to rule out any candidate that will score a *0* on the *supported platforms* scale.  Other factors could be the following:

* Supported plateforms
* Scripting Language
* Test creation tools
* Supported API levels
* Community
* Real or emulated devices support

Feel free to add or remove some of that list as you see fit.  As I mentionned before, this assessment goal is to help **you** to find the right tool. After all, **you** will have to leave with it--not your boss or project manager.


#### Weighting factors

The score will then be applied with a *pain factor ratio*---how much will it hurt you in your job if you don't have access to the said feature.  If we use the precedent example, the *pain factor ratio* for the *supported plateforms* will have a ponderation of *1* on a scale of 0 to 1---or 0 for *not required* or 1 for *must have*. So, a multi-platform unit testing framework will score a 5 using the scale defined earlier.

Those weigthing factors are very subjective and--most of the time--couldn't be re-used *as-is* for another evaluation intended to a different developer or a different team.  What is a *must-have* for you might not be for someone else.  For example, if your IDE of choice is *Android Studio*, you might have a criteria named *Android Studio integration* for evaluating your unit testing framework.  You could then apply to this criteria a pain factor of 85% (or 0.85) because it is a must have but not something you couldn't live without (or a pain factor of 1).  Which will not be true for another team used to the *command line interface* (*CLI*) that will give a pain factor of 0 to the same criteria.  You get my point.

So, we are done with the theory.  We will now see how to select a unit testing framework that fits most of our need as an Agile Android developer.    


#### Defining the requirements list

The first step before we can even select our tool of choice for unit testing we have to found as many possible candidate as possible.  Hopefuly, there is a couple of resources available to help us with that task.

The first one you should consider is *The Android Arsenal* website (https://android-arsenal.com/) which presents an up-to-date inventory of tools and libraries for Android software development.  Tools are organized in categories and can be sorted using basic criterias such as registration date, last update, and rating)---which are not very helpfull with our assesment.  You should use *The Android Arsenal* search fonctionnality to get a quick list of potential candidates, and nothing more. Unfortunatly, at this moment, there is no way to have access to a list of tags, which is what could be interesting for us.  So, using the search tool, enter *testing* as search term and you will be presented with a list of potential candidates.  
Keep in mind that you will have to revisit each candidate on that list to dig more details from the source code repository or the project's homepage.  The main reason for that is how *The Android Arsenal* organize information using tags.  For example, some testing frameworks will show up when you use *TDD* search term but not when using *testing* keyword---even though they will fit in both categories.

Your second source of potential candidates should be *GitHub*---the *defacto* source code hosting service---for Android projects.  

#### Defining pain factors


#### Finding potential candidates


#### Quick brooming using the requirements list


#### Computing scores and evaluation results

