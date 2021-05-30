#R Calculations
quarter_1_sales<-35657.98
quarter_2_sales<-43810.55
midyear_sales <- quarter_1_sales+quarter_2_sales
quarter_3_sales<-53688.21
quarter_4_sales<-12345.98
average_sales_qrt<- ave(quarter_1_sales,quarter_2_sales,quarter_3_sales,quarter_4_sales)
