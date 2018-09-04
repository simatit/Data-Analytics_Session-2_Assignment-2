# 2. Parse the following JSON into a data frame.

js<-'[{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}]'
js <- fromJSON(js)
js <- lapply(js, function(x) {
  x[sapply(x, is.null)] <- NA
  unlist(x)
})
do.call("rbind", js)

# 3. 3.	Write a script for Variable Binning using R.

v<-1:4000
print(v)
v<-seq(1:100)
print(v)
tapply(v, cut(v, 60))
