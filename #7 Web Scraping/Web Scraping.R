library(rvest)
library(dplyr)
library(xml2)

#Q1 

#Read html
simple =read_html("http://dataquestio.github.io/web-scraping-pages/simple.html")
simple

#retrieve text
simple %>%
html_nodes("p") %>%
html_text()

hot100 = read_html("https://www.billboard.com/charts/hot-100") 
str(hot100)
body_nodes = hot100 %>%
  html_nodes("body") %>%
  html_children()
body_nodes

title = hot100 %>%
  html_nodes("body") %>%
  xml_find_all("//span[contains(@class, 'chart-element__information__song')]") %>%
  html_text()
title

rank = hot100 %>%
  html_nodes("body") %>%
  xml_find_all("//span[contains(@class, 'chart-element__rank__number')]") %>%
  html_text()
rank

artist = hot100 %>%
  html_nodes("body") %>%
  xml_find_all("//span[contains(@class, 'chart-element__information__artist')]") %>%
  html_text()
artist

chart_df=data.frame(rank, artist, title)
head(chart_df)

forecasts = read_html("https://forecast.weather.gov/MapClick.php?lat=42.40729&lon=-83.00894#.YGjfV-hKjFg") %>%
  html_nodes(".temp") %>%
  html_text()
forecasts

facultypage = "https://ilitchbusiness.wayne.edu/faculty/index.php"
faculty=read_html(facultypage)
faculty
str(faculty)

title = faculty %>%
  html_nodes('a') %>%
  html_text()
title
title=title[8:180]
title


name = faculty %>%
  html_nodes('a') %>%
  html_text()
name
name=name[18:366]
name
name = name[!name==""]
name

install.packages("R.utils")
library("R.utils")

pos1 = which(name == "Steve Britt")
tite = insert(title, pos1, "")
pos2 = which(name == "Mbodja Mougoue")
title = insert(title, pos2, "")

chart_faculty = data.frame(name, title)
View(chart_faculty)

#Q2
yelp = "https://www.yelp.com/search?find_desc=American+%28Traditional%29&find_loc=Downtown+Detroit%2C+Detroit%2C+MI&ns=1"

food = read_html(yelp) 
str(food)
body_nodes = food %>%
  html_nodes("body") %>%
  html_children()
body_nodes

name = food %>%
  html_nodes("body") %>%
  xml_find_all("//a[contains(@class, 'css-166la90')]") %>%
  html_text()
name
name = name[3:12]
name

rank = food %>%
  html_nodes("body") %>%
  xml_find_all("//span[contains(@class, 'css-1pxmz4g')]") %>%
  html_text()
rank
rank = rank[! rank %in% c("American")]
rank = rank[! rank %in% c("traditions")]
rank

#Q3
dfpage = "https://www.chewy.com/b/dry-food-294"
df = read_html(dfpage)
df
str(df)

foodname = df %>%
  html_nodes('strong') %>%
  html_text()
foodname

foodname2 = trimws(foodname, which = c("both"), whitespace = "[ \t\r\n]")
foodname2
foodname2 = foodname2[3:106]
foodname2

pos1 = which( foodname2 %in% c("Dog Chow", "Gentle Giants", "Pedigree"))
foodname2.2 = insert( foodname2 , pos1+1 , "")
foodname2.2
len.1=1:length(foodname2.2)
brand = foodname2.2[len.1%%3 ==1]
price.auto = foodname2.2[len.1%%3 == 2]
price.reg = foodname2.2[len.1%%3 ==0]

foodname3 = df %>%
  html_nodes('h2') %>%
  html_text()
foodname3

foodname3 = trimws(foodname3, which = c("both"), whitespace = "[ \t\r\n]")
foodname3
foodname3 = gsub("\n", "", foodname3)
foodname3
foodname3 = foodname3[1:36]
foodname3

df.df = data.frame( foodname3, price.auto, price.reg)
View(df.df)


