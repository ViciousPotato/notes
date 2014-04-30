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
    
> 四分位数（Quartile）是统计学中分位数的一种，即把所有数值由小到大排列并分成四等份，处于三个分割点位置的得分就是四分位数。
> 第一四分位数 (Q1)，又称“较小四分位数”，等于该样本中所有数值由小到大排列后第25%的数字。
> 第二四分位数 (Q2)，又称“中位数”，等于该样本中所有数值由小到大排列后第50%的数字。
> 第三四分位数 (Q3)，又称“较大四分位数”，等于该样本中所有数值由小到大排列后第75%的数字。
> 第三四分位数与第一四分位数的差距又称四分位距（InterQuartile Range, IQR）。
