df <- df[apply(df [colnames],1,function(x) any(x %in% criteria)),]
