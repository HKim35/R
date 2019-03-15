#-----------------------------------------------------------------------------
source("https://raw.githubusercontent.com/statpnu/R/master/Rsam01.R")

qt.source = function(x, p=0.5, conf=0.95, source=c("test", "statistic", "p.value", "noncentrality", "conf.int",
				"sample.size","df","estimate","null.value","alternative","method","data.name"))
{
	demand<-match.arg(source)
	DNAME = deparse(substitute(x))
	if (demand == "test"){
	print(qt.test(data, p=p, con =conf))
}
	else if (demand == "statistic"){
	print(as.numeric(qt.test(x, p=p, conf=conf)$statistic))
}
	else if (demand == "p.value"){
	print(as.numeric(qt.test(x, p=p, conf=conf)$p.value))
}
	else if (demand == "noncentrality"){
	print(as.numeric(qt.test(x, p=p, conf=conf)$parameter))
}
	else if (demand == "conf.int"){
	print(as.numeric(qt.test(x, p=p, conf=conf)$conf.int))
}
	else if (demand == "sample.size"){
	print(as.numeric(qt.test(x, p=p, conf=conf)$sample.size))
}
	else if (demand == "df"){
	print(as.numeric(qt.test(x, p=p, conf=conf)$df))
}
	else if (demand == "estimate"){
	print(as.numeric(qt.test(x, p=p, conf=conf)$estimate))
}
	else if (demand == "null.value"){
	print(as.numeric(qt.test(x, p=p, conf=conf)$null.value))
}
	else if (demand == "alternative"){
	print(as.character(qt.test(x, p=p, conf=conf)$alternative))
}
	else if (demand == "method"){
	print(as.character(qt.test(x, p=p, conf=conf)$method))
}
	else if (demand == "data.name"){
	print(DNAME)
}
}

#----------------------------------------------------------------------------------
