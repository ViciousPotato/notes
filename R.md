# Data Structure
## Vector

    v <- c(1, 2, 3, TRUE) # index starts from 1
    v[-1] # means except -1, different with py
    v[c(TRUE, FALSE)] # index using bool vector


### Factor

    blood <- factor(c("O", "AB", "A"),
                  levels = c("A", "B", "AB", "O"))
                  
saves memory, cz representing chars as labels

### Lists

    subject1 <- list(fullname = subject_name[1], 
                   temperature = temperature[1],
                   flu_status = flu_status[1],
                   gender = gender[1],
                   blood = blood[1])
                   
    
    subject1$fullname
    subject[c("fullname")]
    
## Data Frame

    pt_data <- data.frame(subject_name, temperature, flu_status,gender, blood, stringsAsFactors = FALSE)
    # stringAsFactors = FALSE means don't automatically convert string to label
    # 参数里的vector在frame里是垂直的。
    pt_data$subject_name
    pt_data[row, col]
    pt_data[c(), c()]
    
## Matrix
    
    m <- matrix(c('a', 'b', 'c', 'd', 'e', 'f'), nrow = 2)
    
# Data Import/Export

    save(x, y, z, file = "mydata.RData")
    load("mydata.RData")
    pt_data <- read.csv("pt_data.csv", stringsAsFactors = FALSE, header = FALSE)
    write.csv(pt_data, file = "pt_data.csv")
    
# Data Explore

    str(data_frame)
    summary(c())
