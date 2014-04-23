#' Find unlinked hyperlinks in a markdown file and turn them into links
#' 
incon<-file("index.md","rw")
outcon<-file("index3.md","w")
lines<-readLines(incon)
for(line in 1:length(lines)){
  if(regexpr("^https?://",lines[line])[1]==1){
    lines[line]<-paste("[",lines[line],"]",
                       "(",lines[line],")",sep="")
  }
}
writeLines(lines,outcon)
close(incon)
close(outcon)
