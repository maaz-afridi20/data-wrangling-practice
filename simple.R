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









