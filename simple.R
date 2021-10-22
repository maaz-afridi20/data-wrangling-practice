# if we want to find that on which working directory we are then
# we can use getwd(), and we can also set the working diretory by 
# setwd()

# if we want to check weahter the file exists or not
# we can use file.exist("direcory name")


file.exists('data wrangling pratice')
file.exists('data-wrangling-practice.Rproj')

# so this will check weather the files or folder are present or not

# we can also create a folder like 

if(!file.exists('data')){
    dir.create('data')
}
# so now this will create a data folder or directory inside that
# working direcory that we are in 

# so now the working directory has been created so if we want to 
# go in to that directory then we can use setwd('./data') so this will
# go inside the directory which is data 

# setwd() is use to go through the working directory

# now if we check the working directory this will show like

getwd()

# this will print

#"D:/study materials/Alnafi data science Notes/data-wrangling-practice/data"

# so now we are in data directory 

# if we want to go back then we can use 

setwd('../')
# this will bring back us to data-wrangling-practice directory


# -------------------------------------

    # if we want to download some data we can use download.file()
    # the advantage of this download.file() command is taht when
    # we downlaod some file manually and then after some time there
    # come some changes in that file so when we use this command this will
    # download all of its newly added addition 
    
    # so with this command we have to use 3 parameters which is 
    # url, destfile (destination file where to file tobe downloaded) and
    # the method 
    
    
    fileUrl <- "https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2020-financial-year-provisional/Download-data/annual-enterprise-survey-2020-financial-year-provisional-csv.csv"
    download.file(fileUrl, destfile = './data',method = "curl")

    
    dateDownload <- date()

    list.files('./data') # this will show files inside data folder
    
    # we can save or download the date that on which date the file is
    # dowloaded of not. like
    
    camera <- read.csv('cameras.csv')

# -------------------------------------------------
    
    # Reading Text and csv files : (tables and csv)
    
    # by the read.table() we can read data from table
    # but for this we have to give some arguments like
    # firest we have to give path of the file and then 
    # if that file consists any columns name then we have
    # a parameter called header so we have to make it true
    
    # in some files the data is seprated by some thing like may
    # be in some time it is seprated by , sometime it is 
    # seprated by ; or any thing like that so for this we have one
    # thing sep which stands for seprator so in reading table we
    # have to specify that  like below 
    
    
    camera <- read.table("cameras.csv", sep = ",", header = TRUE)
    View(head(camera))
    
    # some times there is na values in the data so or there is
    # empty space inside the data snd R by default put na inside that
    # emplty spaces so for example if we want that we do not want
    # to put na and we want another thing like we have to put $ suybol
    # or any other thing (in string) so for that we have options
    # which  na.strings() in this we can give some thing that we 
    # want to put there
    
    
    
    
    # read.csv() and read.csv2() :
    
    # there are 2 types of read.csv i-e read.csv() and read.csv2()
    # so the main diff is that when we need speedy results then 
    # we use read.csv2() meand that read.csv2() is fast than 
    # read.csv()
    # 
    
    #fread : 
        
        # another alternate for both of the read.csv() and 
        # read.csv2() is fread which is more faster tahn both
        # of them and for this we have to load library which is 
        library(data.table)
        data = fread('cameras.csv')
        
        #for fread() there are many attributes that we can Use
        
    
    
    
    
    
    



















