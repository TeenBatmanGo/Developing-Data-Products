---
title: "Diamond Finder"
author: "Wang"
date: "2017-2-15"
output: ioslides_presentation
---

## What does Diamond Finder App do?

- Diamond Finder helps you find the diamonds you desire from its database, which contains almost **54,000** diamonds.
- Diamond Finder shows you details of diamonds.
- Diamond Finder shows you the prices of diamonds for your reference.


## How will it help you?

Tell Diamond Finder what kind of diamonds you want by specifying

- Quality of the cut
- Diamond colour
- How clear the diamond is

And it will help you find the diamonds you desire.


## How to use it?

- Use the choice box to choose specific Quality of cut, Diamond colour and Clarity.
- Use the slider to choose price ranges.
- Use the checkbox to determine whether diamonds are shown in ascending order by price or not.
- The Summary part provides you more information about the database and diamonds prices.


## Demo


```r
library(ggplot2)
dat<-subset(diamonds[,1:7],cut=="Fair" & color=="D" & clarity=="IF")
as.data.frame(dat)
```

```
  carat  cut color clarity depth table price
1  0.30 Fair     D      IF  60.5    57  1208
2  0.37 Fair     D      IF  61.2    57  1440
3  0.47 Fair     D      IF  60.6    60  2211
```

====================================

More about the App: [https://teenbatmango.shinyapps.io/shiny/]
