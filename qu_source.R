#-----------------------------------------------------------------------------
source("https://raw.githubusercontent.com/statpnu/R/master/Rsam01.R")

qt.source = function(data, p=0.5, conf=0.95, source = c("test", "statistic", "p.value", "noncentrality", "conf.int"))
{
	demand<-match.arg(source)
	if (demand == "test"){
	print(qt.test(data, p=p, con =conf))
}
	else if (demand == "statistic"){
	print(as.numeric(qt.test(data, p=p, conf=conf)$statistic))
}
	else if (demand =="p.value"){
	print(as.numeric(qt.test(data, p=p, conf=conf)$p.value))
}
	else if (demand =="noncentrality"){
	print(as.numeric(qt.test(data, p=p, conf=conf)$parameter))
}
	else if (demand =="conf.int"){
	print(as.numeric(qt.test(data, p=p, conf=conf)$conf.int))
}
}

#----------------------------------------------------------------------------------
