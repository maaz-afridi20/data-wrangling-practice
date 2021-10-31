    # here we will find how to fetch data from data bases :

    # if we want to connect to our data base then we will use
    # dbconnect()
    # and if we want to disconnect then we will use db disconnect 
    # 
    # the dbconnect comes with 2 attributes() one is drv and other is
    # path so in path we have to give the path of that data base which we want
    # wo connect 


    
    # so first we have to import library :
    #     
    
    library(RSQLite)
    
    data("mtcars") 
    # the mtcars is built in r database
    
    rownames(mtcars)
    # rownames() this will print the names of the rows of the 
    # mtcars database. 
    
    mtcars$carnames <- rownames(mtcars)
    
    # so this will make another column and the name of that
    # column will be carnames 
    
    # in the mtcars we have the names instead of numbers so if we
    # want to do this we can give it a empty string so this will
    # automatically give number shumaar like
    
    rownames(mtcars) <- c()
    # this will give simple indexing to rownames 
    
    getwd() # showing working direcory 
    
    
    # in order to connect to the db we have to first give the 
    # driver and then the name of the db
    
    
    cony <- dbConnect(RSQLite::SQLite(), "carsdatabase.db")
    
    # so now this will create data base of name carsdataase.db
    # inside data folder 
    
    # so jab hm jaha pr b hon waha pr ye data base ka jo name
    # hai uss name k sath save ho jaye ga.
    
    
    
    # if we want to create table then we can create that by
    # dbWriteTable() so in this we have to give some arguments like
    # the variable in which we give the data base connectiion like 
    # in this we have that variable which is cony and then we have
    # to give the name of the table and then we will give which
    # db that data will come so eg below 
     
    dbWriteTable(cony, "cars_data", mtcars)
    
    
    dbListTables(cony)
    # so this will give the names of the table which 
    # are present inside that db.
    
    
    dbListFields(cony, "cars_data")
    # so this will list all the fields (we can say columns) insdide
    # that table in cony db
    
    
    dbReadTable(cony, 'cars_data')
    # will read table of data base quickly 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    