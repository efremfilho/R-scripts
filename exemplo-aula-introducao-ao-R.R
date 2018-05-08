version

# Instalar o swirl, para quem quer aprender no seu ritmo (em inglês)
install.packages("swirl")
library(swirl)
install_course("R Programming")
swirl::install_course("Exploratory Data Analysis")
swirl::install_course("Regression Models")
swirl::install_course("Advanced R Programming")
swirl::install_course("Statistical Inference")
swirl::install_course("Getting and Cleaning Data")
swirl::install_course_github('josersosa','Programando_en_R')  # en español
swirl::install_course_github("ifunam", "programacion-estadistica-r") # en español
swirl()

#Manipulando workspace e arquivos
getwd()
old.dir <- getwd()
setwd("/home/efremfilho")
dir.create(testdir)
file.create("mytest.R")
file.exists("mytest.R")
file.info("mytest.R")
file.rename("mytest.R", "mytest2.R")
file.copy("mytest2.R", "mytest3.R")
file.path("mytest3.R")
file.path('folder1', 'folder2')
?dir.create
dir.create(file.path('testdir2','testdir3'), recursive = TRUE)

# Instalando pacotes algumas que podem lhe ajudar
install.packages("psych") # psicometria
library("psych")
install.packages("ineq") # índices de inequalidade
library("ineq")
install.packages("Rcmdr") # interface visual
library("Rcmdr")
install.packages("simmer") # simulação
library("simmer")
install.packages("lpSolve") # programação linear
library("lpSolve")

# Atribuição de Objetos (declaração de variáveis)
a <- 1:5 # Para colocar '<-' com atalho do teclado basta 'alt + -'
a
a <- 4
b <- 2
c <- a*b+2
c
t <- 2^2 
t
t <- c(1.1, 9, "efrem")
t
1:20
pi:10
15:1

# Funções
?c
my_sqrt <- sqrt(t-1)
?sqrt
?`:`
seq(0,10,by=.5)

# Manipulando vetores
my_div <- z/my_sqrt
my_div  

# Manipulando intervalos
1:20
pi:10
15:1
?`:`
seq(1,20)
seq(0,10,by=.5)
seq(5, 10, length=30)
my_seq <- seq(5, 10, length=30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times = 40)
rep(c(0,1,2), times = 10)
test = rep(c(0,1,2), times = 10)
test
rep(c(0, 1, 2), each = 10)


# Quer ver exemplos de Estatística Descritiva?
  # Exemplo da Profa. Denise Ferrari do ITA (https://sites.google.com/view/deniseferrari/ensino/moq-13po-210?authuser=0)
    # código do R - https://drive.google.com/open?id=0B1mSgCRkGhd9ckVGQXk1NXRPSms
    # Base de dados - https://drive.google.com/open?id=0B1mSgCRkGhd9X0NPd1lZY1lHaUU
    # Slides - https://drive.google.com/open?id=0B1mSgCRkGhd9TE01UG1GU0JZUW8
