# Explicação em https://go.efrem.io/intro-R-ceuma
# Arquivo cores.txt - https://github.com/efremfilho/R-scripts/blob/master/cores.txt
# Arquivo pessoas.csv - https://raw.githubusercontent.com/efremfilho/R-scripts/master/pessoas.csv

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


# Dia 2

# Já aprendemos como criar um objeto e vetores, agora vamos ver matrizes e data.frame (baseado na Playlist da NMEC - FGV/IBRE)

M <- matrix(1:6, 2, 3)
M
M[4]
M[1,2]
M[2,]
M[,3]

?data.frame
tabela1 <- data.frame(Nome = c("André", "João"), Idade = c(25,45))
tabela1
tabela1[1]
tabela1$Salário <- c(1200)
tabela1 <- cbind(tabela1,data.frame(Casado = c(TRUE,FALSE)))
tabela1
?cbind
tabela1 <- rbind(tabela1, data.frame(Nome = "Joana", Idade = "25", Salário = "4000", Casado = FALSE))
ls()
remove(z,y,x)

# Manipulação de dados

# Agora que já entendemos os data.frames podemos começar a manipular os dados

cores <- read.table("cores.txt", header = TRUE)
cores
pessoas <-read.csv2("pessoas.csv")
pessoas
install.packages("xlsxjars") # Talvez vocês não precisem, acho que é por conta do linux
install.packages("xlsx")
require("xlsx")
pessoas <- read.xlsx("pessoas-e-funcoes.xlsx", sheetIndex = 1)
funcoes <- read.xlsx("pessoas-e-funcoes.xlsx", sheetName = "Funções")
funcoes
pessoas <- cbind(pessoas, funcoes[2])
pessoas
write.table(pessoas, "pessoas-completa.csv", sep = ";")
write.xlsx(pessoas,"pessoas-completa.xlsx")
pessoas$Função <- NULL

# Medidas de tendência central (média, moda, mediana, máximo, mínimo, quartis)
mean(my_div)
?append()
my_div <- append(my_div, 0:1, after = 2)
my_div <- append(my_div, NA)
mean(my_div, na.rm = TRUE)
my_div <- sort(my_div)
median(my_div)
x <- c("A", "B", "C", "C", "A","A")
?table
tabela_frequencia_x <- table(x)
tabela_frequencia_x
dados <- round(runif(1000,10,500))
dados <- table(dados)
?runif
max(dados) # moda
dados == max(dados)
dados [dados == max(dados)]

# Medidas de dispersão (variância, desvio padrão, coeficiente de variação, quantis e assimetria)
var(dados)
sd(dados)
my_div <- append(my_div, NA)
var(my_div, na.rm = TRUE)
sd(my_div, na.rm = TRUE)
cv <- function(x){coef<- sd(x)/mean(x)*100 # cria uma nova função
        return(coef)
      }
cv(dados)
cv(my_div)
cv(my_seq)
POF_capitais <- read.csv2("~/timeseries/cap1-R-primeiros-passos/POF_capitais.csv", header=FALSE)
quantile(POF_capitais[,31], probs = 0.5)
median(POF_capitais[,31])
quantile(POF_capitais[,31], probs = c(0.1,.25, .36))
install.packages("moments")
require("moments")
skewness(POF_capitais[,31])

# Gráficos
hist(POF_capitais[,31])
hist(POF_capitais[,31], main="Renda das famílias", col=2, border=1,xlab="", ylab="frequência")
renda_menor <- subset(POF_capitais[,31], POF_capitais[,31]<10000)
hist(renda_menor)
names(POF_capitais)
hist(POF_capitais$V31)
boxplot(renda_menor,col="cyan", border = 2, ylab = "renda", main = "Renda menor que 10 mil")
pie(table(POF_capitais[,18]), main = "Água encanada", labels = c("com", "sem"), col = c(4,2))
legend("topright", fill = c(4,2), legend = c("com", "sem"))
install.packages("UsingR")
require("UsingR")
grades
par(mfrow=c(2:1))
barplot(table(grades$prev), col = topo.colors(9))
barplot(table(grades$grade), col = topo.colors(9))
