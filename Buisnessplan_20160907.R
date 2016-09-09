# quick service restaurant, table service, limited service, LLC

# City of Oakland: Business License, Zoning Permit, Alcohol Permit (type 47),
# (type 48 for alcohol only), Health Permit, 

# Cost per sq_ft per month
price_per_sq_ft<-3.5

# Percent of total sales going to rent
rent_per<-.20

# Estimated number of dollars each patron will spend
price_per<-20

sq_ft<-1660
service_sq_ft<-1500
payroll_per<-.27
table_ser_per<-.6
bev<-.55
food<-.45
bev_cost<-.18
food_cost<-.27
seating_per<-.6
buisness_license<-91
buisness_tax<-.012

rent<-price_per_sq_ft*sq_ft

bev_cost_yr<-need_yr*bev*bev_cost
food_cost_yr<-need_yr*food*food_cost
comb_cost_yr<- food_cost_yr + bev_cost_yr

rent_yr<-rent*12
need_yr<-rent_yr/rent_per
sales_sqft<-need_yr/sq_ft
seating_sq_ft<-seating_per*sq_ft
comb_cost_yr_per<-comb_cost_yr/need_yr

payroll<-need_yr*payroll_per
table_service<-need_yr*table_ser_per
cust_aday<-need_yr/(12*4*7*20)
prime_ratio<-payroll_per + comb_cost_yr_per
profit_per<-1-(payroll_per+rent_per+comb_cost_yr_per+buisness_tax)
profit_yr<-need_yr*profit_per

# rich table average per day
rich<-90

# plotting
temp<-seq(1, 5, by = 1)
temp_profit<-temp*profit_yr

# exponential growth, P=Aert
temp<-c(1,1.04,1.08, 1.12, 1.16)
temp_profit<-temp*profit_yr
plot(temp, temp_profit)
