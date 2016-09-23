# arabidopsis-spore-counting
Contains R scripts that aid in the statistical analysis of Hpa spore counts in arabidopsis
#READ THIS PLEASE (or don't.. I'm not an oppressor)
This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
International License. To view a copy of this license, visit
http://creativecommons.org/licenses/by-sa/4.0/.
Author: Ryan Buttery (2016), MRes Biology candidate, University of Worcester
Contact: ryanbuttery@gmail.com


\__________________________________________________________________________________________/
\__________________________________________________________________________________________/


Hi there! In this readme, I will give detailed instructions on how
to use this package.

Please be aware that this was designed for the purposes of counting Hpa spores from
one isolate on several Arabidopsis lines with a CRISPR/Cas9 system
present. Also with several Wt controls.

I've included some example data and a preview of how the graph will look. Feel free to put 
it into your WD and run the program to get a feel for how this all works. 

\__________________________________________________________________________________________/
\__________________________________________________________________________________________/

First use:

If this is a fresh install of R, you might not have the required packages to run this program.
But never fear! The program will check to see if you have them installed, and will download
and install them, and load them for you if you don't. Easy game, easy life.
 

\__________________________________________________________________________________________/
\__________________________________________________________________________________________/


Instructions:


Firstly, add your data to the "counts.csv" table included in this package.
When putting in your data, make sure that all the labels for your columbia plants for instance
are the same on each row. Otherwise you'll have some shoved into different boxplots and 
R will be angry. To demonstrate


Accession
Col-0
Col-0

and not
Accession
Col-0
col-0
columbia

Pick a label, and stick with it! Be aware that it's case sensitive!
The same goes for Vector. Keep things uniform.

So save your data to the counts.csv file, and move the file to your R working directory if 
you haven't already. Then simply open the script file in R (click the folder, navigate to it 
and open), and a new R window will open containing the script source code. While in this window, 
click Edit and Run All

A bunch of windows will now open, showing the various data frames (your raw data, the reshaped 
data), and a preliminary graph. As the R Console will state, replace the labels in the following
code with your desired graph labels, and copy, paste, and run the line in the console:

p<-p+labs(title="graphtitlehere",x="xaxislablehere",y="yaxislabelhere")

and then type in p and hit enter

p

This should produce your final graph!


\____________________________________________________________________________________________/
\____________________________________________________________________________________________/


Reading statistical results:


For your statistics, simply scroll up the R Console to find the results of the one-way ANOVA and the TukeyHSD post-hoc test which indicates significant
differences between the Accessions.

The Anova reports significance using the following scale (in order of decreasing significance)
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

The TukeyHSD doesn't use the *** system, it simply give the associated numbers in the p adj column. If p adj between two accessions is 0.05>, then 
they are considered to be statistically different populations. It's a significant difference. Yay! :)

To export the graph, adjust the size of the graph window to the size you want the image to be, then right click and copy as bitmap.
Then paste it into paint or a word document or something. Or take a screenshot...


\_____________________________________________________________________________________________/
\_____________________________________________________________________________________________/


There isn't really much more to explain, but email me at ryanbuttery@gmail.com if you're stuck. Have fun!




PS. Don't forget to acknowledge the following authors for making the software possible!

    R Core Team (2016). R: A language and
  environment for statistical computing. R
  Foundation for Statistical Computing,
  Vienna, Austria. URL
  https://www.R-project.org/.

  
    Hadley Wickham (2007). Reshaping Data with
  the reshape Package. Journal of Statistical
  Software, 21(12), 1-20. URL
  http://www.jstatsoft.org/v21/i12/.
  
  
    H. Wickham. ggplot2: Elegant Graphics for
  Data Analysis. Springer-Verlag New York,
  2009.

  
    Hadley Wickham and Romain Francois (2016).
  dplyr: A Grammar of Data Manipulation. R
  package version 0.5.0.
  https://CRAN.R-project.org/package=dplyr


    Hadley Wickham (2016). tidyr: Easily Tidy
  Data with `spread()` and `gather()`
  Functions. R package version 0.5.1.
  https://CRAN.R-project.org/package=tidyr


(Yeah, basically Hadley Wickham is a legend)
