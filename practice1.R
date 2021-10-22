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
        
    
    # -----------------------------------------------
        
        # Reading Data From excel Files : 
        
        
    # so for reading data from excel files we can use 
        # read.xlsx() and in this we will put the name of the excel file
        # as we know that in excel there are lot excel sheets so we can 
        # here specif that from which sheet read the data like
        
        # first we have to import library 
        
        library(xlsx)
        
        cameraData <- read.xlsx('excelprac.xlsx', sheetIndex = 1, header = T )
        View(head(cameraData))    
        
        # so now this will read data from excel file which is present in
        # the data folder and its name is excelprac and just like csv we 
        # must have to give the extention which is xlsx
    
        str(cameraData)
        dim(cameraData)
        ncol(cameraData)        
        nrow(cameraData)
        
        # so if we some specific rows and columns then we can also 
        # specify that i-e we need data from that rows and columnd 
        # like 
        
        
        colIndexx <- 1:4 # here the variable name may be anything
        rowIndexx <- 1:10
        
        cameraData <- read.xlsx('excelprac.xlsx', sheetIndex = 1,
                                colIndex = colIndexx, rowIndex = rowIndexx)

        View(cameraData)

        # so now this will print data with 4 columns and 10 rows
        # of excelprac excel sheet 
        
    # ------------------------------------------
        
        # Second Method to read data from excel file :
        
        library(readxl)
        
        readxl_example() # this will show the example file for 
        # readxl library this will give the name of the excel files
        # that we can use as an example 
        
        
        filee <- read_excel('excelprac.xlsx')
        
        View(filee)
        View(head(filee))
        
        # All other functionalities are same but just the 
        # writing method are diff 
        
    # -----------------------------------------------------
        
        
        # WRITEXL : 
        
        # if we download data file in some other format like csv and 
        # we want to change it in excel format then we can use this 
        # library above of those libraries does not include that write 
        # function so the write function convert the csv files into The
        # excel file 
        
        
        # if we want to download some library from github then we can use
        # this command below and then specify the name 
        
        
        devtools::install_github("ropensci/writexl")
        #so now we have to import library 
        
        library(writexl)
        
        # so in this library we have write_xlsx() in which we will give 
        # the name of the file and then give the file formate that it will
        # change to that format like 
        
        sample <- read.csv('sample4.csv')
        View(sample)
        
        library(writexl)
        write_xlsx(sample, 'sample4.xlsx')
        
        # so this will change the sample.csv to xlsx
        
        
        
        
        
        
        
        
        
        
        
        
        