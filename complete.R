complete <- function(directory, id=1:332) {
				ID<-id
				files_full<-list.files(directory, full.names=TRUE)
				nobs<-vector("numeric")
								
				for (i in id) {
						data<-read.csv(files_full[i])
						good = complete.cases(data)
        					nobs<-c(nobs,nrow(data[good, ]))  
}
				data.frame(id, nobs)			
}
