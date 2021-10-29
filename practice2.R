    # Web scrapping : 
        # so in this we will read that how we can read data from 
        # any website 
        
        # we can read a whole web page as well as we can read 
        # some specific thing like document or pic or some other listss etc
        # 
        # so now for reading some data from web we have to download library
        # and for web scrapping we have library of 'rvest' so we have to
        # download this and then import it 



    library('rvest')
    
    # so for reading that html page we have to use read_html() and then 
    # pass the url of that html page
    # so here i am storing that url in one variable and the passing that
    # variable to the read_html() 
    
    theurl <- "https://en.wikipedia.org/wiki/Brazil_at_the_FIFA_World_Cup"
    
    fileeee <- read_html(theurl)
    
    # so now if we want to specify that which thing we want to read then 
    # we can use the nodes funtion like we know that every thing in the
    # html is in some divs so here that divs work as nodes so now if we 
    # specify the web page and then we want to fetch the data from some
    # table inside that web page then we can use html_node(fileeee, 'table')
    # so now this will read data from the filee and in this it will read from
    # table 
    # but the main thing is that we have to specify that from which thing
    # like paragrph or list or link we want to fetch data
    
    
    # Reading tables from webpage:
    
    table <- html_node(fileeee, "table")
    View(table)
    
    table1 <- html_table(table[1], fill = TRUE)
    
    # so now this will read data from 4th number table 
    # from that page which() we specify
    
    
    
    
    
    linky <- "https://en.wikipedia.org/wiki/Brazil_national_football_team"
    
    page <- read_html(linky)
    
    # ----------------------------------
    
    # some time when we fetch data from any website then it donot
    # give us permission to do so for this we have library 
    # which will check that if this website is giving uss 
    # permission to fetch data or not 
    # the library is (robotstxt)
    # 
    # so forr this we have one method which wil check that 
    # 
    
    
    
    library(robotstxt)
    
    
    paths_allowed(
        path <- c("https://rvest.tidyverse.org/articles/starwars.html")
    )
    
    
    # so now this will give us ans in True or False that it gives
    # permission or not 
    
    starwarss <- read_html('https://rvest.tidyverse.org/articles/starwars.html')
    films <- starwarss %>% html_elements("section")
    films
    
    title <- films %>% html_elements('h2') %>% html_text2()
    title
    
    
    # so first of all this will read html page and then store that 
    # data in starwarss variable 
    # after this we fetch some data from starwars and store it in 
    # the film variable and in that we give condition that 
    # html_element() is use to specify that from where we want to load data
    # in this first we load from section tag and in that we load data ferom 
    # h2 and we also specify that we nedd that data in text form we write 
    # html_text() so this will give the name of that h2
    
    
    
    
    paths_allowed(
        pathh <- c("https://www.imdb.com/search/title/?year=2021&title_type=feature&")
    )
    
    page <- read_html('https://www.imdb.com/search/title/?year=2021&title_type=feature&')
    name <- page %>% html_nodes('.lister-item-header a') %>% html_text2()
    name
    
    # so now this will fetch the data and then save it in name variable
    
    year <- page %>% html_nodes('.lister-item-header a , .text-muted.unbold') %>% html_text2()
    year
    
    
    ratings <- page %>% html_nodes('.ratings-imdb-rating strong') %>% html_text2()
    ratings
    
    # this will print all the seletc movies ratings 
    
    
    directors <- page %>% html_nodes('.lister-item-content a:nth-child(1)') %>% html_text2()
    directors
    
    #just use the selector gadjet of google chrome 
    
    
    
    
    