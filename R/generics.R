#####################################
###### parameter class generics #####
#####################################

#' get/set parameters for an object
#'
#' @param obj a model or iterator object from the *struct* class
#' @param name name of parameter as a string
#' @param value a valid value for the parameter being set
#' @rdname param
#' @family parameter functions
#' @export
setGeneric("param.obj",function(obj,name)standardGeneric("param.obj"))

#' @rdname param
#' @export
setGeneric("param.obj<-",function(obj,name,value)standardGeneric("param.obj<-"))

#' verify paramater name
#'
#' verify that the name of a paramater is valid for an object
#' @param obj a model or iterator object from the *struct* class
#' @param name name of parameter as a string
#' @return TRUE if parameter name is valid, FALSE if not
#' @family parameter functions
#' @export
setGeneric("is.param",function(obj,name)standardGeneric("is.param"))

#' parameter identifiers
#'
#' return a list of valid parameter ids for an object
#' @param obj a model or iterator object from the *struct* class
#' @return list of parameter ids
#' @family parameter functions
#' @export
setGeneric("param.ids",function(obj)standardGeneric("param.ids"))

#' parameter name
#'
#' return a the name for a paramater, if available
#' @param obj a model or iterator object from the *struct* class
#' @return name of parameter
#' @family parameter functions
#' @export
setGeneric("param.name",function(obj,name)standardGeneric("param.name"))

#' parameter list
#'
#' get/set a named list of parameters and thier current value for an object
#' @param obj a model or iterator object from the *struct* class
#' @param value a named list, where the name-value pairs should match valid parameters for the object
#' @return list of parameter names
#' @family parameter functions
#' @rdname param.list
#' @export
setGeneric("param.list",function(obj)standardGeneric("param.list"))

#' @rdname param.list
#' @export
setGeneric("param.list<-",function(obj,value)standardGeneric("param.list<-"))

#' parameter values
#'
#' get/set the values for a parameter.
#' @param obj a model or iterator object from the *struct* class
#' @param name of a parameter
#' @return value of output
#' @family parameter functions
#' @rdname param.value
#' @export
setGeneric("param.value",function(obj,name)standardGeneric("param.value"))

#' @rdname param.value
#' @export
setGeneric("param.value<-",function(obj,name,idx,value)standardGeneric("param.value<-"))

#####################################
###### output class generics #####
#####################################

#' output identifiers
#'
#' return a list of valid output ids for an object
#' @param obj a model or iterator object from the *struct* class
#' @return list of output ids
#' @family output functions
#' @export
setGeneric("output.ids",function(obj)standardGeneric("output.ids"))

#' output values
#'
#' get/set the values for an output.
#' @param obj a model or iterator object from the *struct* class
#' @param name of an output
#' @return value of output
#' @family output functions
#' @rdname output.value
#' @export
setGeneric("output.value",function(obj,name)standardGeneric("output.value"))

#' @rdname output.value
#' @export
setGeneric("output.value<-",function(obj,name,value)standardGeneric("output.value<-"))

#' get/set outputs for an object
#'
#' @param obj a model or iterator object from the *struct* class
#' @param name name of output as a string
#' @rdname outputs
#' @family output functions
#' @export
setGeneric("output.obj",function(obj,name)standardGeneric("output.obj"))

#' @export
#' @param value a valid value for the parameter being set
#' @rdname outputs
#' @family output functions
setGeneric("output.obj<-",function(obj,name,value)standardGeneric("output.obj<-"))

#' verify output name
#'
#' verify that the name of an output is valid for an object
#' @param obj a model or iterator object from the *struct* class
#' @param name name of the output as a string
#' @return TRUE if output name is valid, FALSE if not
#' @family output functions
#' @export
setGeneric("is.output",function(obj,name)standardGeneric("is.output"))

#' output names
#'
#' return a list of valid parameter names for an object
#' @param obj a model or iterator object from the *struct* class
#' @return list of parameter names
#' @family parameter functions
#' @export
setGeneric("output.name",function(obj,name)standardGeneric("output.name"))

#' output list
#'
#' get a named list of outputs and thier current value for an object
#' @param obj a model or iterator object from the *struct* class
#' @param value a named list of outputs for an object
#' @return list of output names
#' @family output functions
#' @rdname output.list
#' @export
setGeneric("output.list",function(obj)standardGeneric("output.list"))

#' @rdname output.list
#' @export
setGeneric("output.list<-",function(obj,value)standardGeneric("output.list<-"))

#####################################
###### chart class generics #####
#####################################

#' chart names
#'
#' return a list of valid parameter names for an object
#' @param obj a model or iterator object from the *struct* class
#' @return list of chart names
#' @family chart functions
#' @export
setGeneric("chart.name",function(obj,name)standardGeneric("chart.name"))

#' plot a chart
#'
#' @param obj a model or iterator object from the *struct* class
#' @param name name of chart to plot
#' @param opt list of options for this chart
#' @rdname chart.plot
#' @family chart functions
#' @export
setGeneric("chart.plot",function(obj,name,opt=NULL)standardGeneric("chart.plot"))

#' valid chart names for an object
#'
#' @param obj a model or iterator object from the *struct* class
#' @param name name of chart to plot
#' @rdname chart.ids
#' @family chart functions
#' @export
setGeneric("chart.ids",function(obj)standardGeneric("chart.ids"))

#' verify chart name
#'
#' verify that the name of chart is valid for an object
#' @param obj a model or iterator object from the *struct* class
#' @param name name of the chart as a string
#' @return TRUE if chart name is valid, FALSE if not
#' @family chart functions
#' @export
setGeneric("is.chart",function(obj,name)standardGeneric("is.chart"))

#' get/set the options for a chart
#'
#' @param obj a model or iterator object from the *struct* class
#' @param name name of chart to plot
#' @param opt list of options for this chart
#' @rdname chart.opt
#' @family chart functions
#' @export
setGeneric("chart.opt",function(obj,name)standardGeneric("chart.opt"))

#' @rdname chart.opt
#' @export
setGeneric("chart.opt<-",function(obj,name,value)standardGeneric("chart.opt<-"))

#' get/set chart object
#'
#' @param obj a model or iterator object from the *struct* class
#' @param name name of chart to plot
#' @rdname chart.obj
#' @family chart functions
#' @export
setGeneric("chart.obj",function(obj,name)standardGeneric("chart.obj"))

#' @rdname chart.obj
#' @export
setGeneric("chart.obj<-",function(obj,name,value)standardGeneric("chart.obj<-"))


#####################################
###### struct class generics #####
#####################################

#' get/set type for an object
#'
#' @param obj an object from the \pkg{struct} class
#' @param value a valid type string
#' @rdname type
#' @family struct_class functions
#' @export
setGeneric("type",function(obj)standardGeneric("type"))

#' @export
#' @rdname type
setGeneric("type<-",function(obj,value)standardGeneric("type<-"))

#' get/set name for an object
#'
#' @param obj an object from the \pkg{struct} class
#' @param value a valid string
#' @rdname name
#' @family struct_class functions
#' @export
setGeneric("name",function(obj)standardGeneric("name"))

#' @export
#' @rdname name
setGeneric("name<-",function(obj,value)standardGeneric("name<-"))

#' get/set description for an object
#'
#' @param obj an object from the \pkg{struct} class
#' @param value a valid string
#' @rdname desc
#' @family struct_class functions
#' @export
setGeneric("description",function(obj)standardGeneric("description"))

#' @export
#' @rdname desc
setGeneric("description<-",function(obj,value)standardGeneric("description<-"))

#################################
###### model class generics #####
#################################

#' Train a model
#'
#' Trains a model using the input dataset
#' @param model a model object
#' @param data a dataset object
#' @family model functions
#' @rdname train
#' @export
setGeneric("train",function(M,D)standardGeneric("train"))

#' Apply a (trained) model to a dataset D to get a prediction
#'
#' Apply a model using the input dataset. Requires that the model is trained first.
#' @param model a model object
#' @param data a dataset object
#' @family model functions
#' @rdname predict
#' @export
setGeneric("predict",function(M,D)standardGeneric("predict"))

#' get/set output name as prediction output for a model
#'
#' get/set the prediction output for a model. This determines which outputs from this model are supplied as inputs to the next model when used in a model.list
#' @param M a model object
#' @param value name of an output for this model
#' @family model functions
#' @rdname predicted.name
#' @export
setGeneric("predicted.name",function(M)standardGeneric("predicted.name"))

#' @export
setGeneric("predicted.name<-",function(M,value)standardGeneric("predicted.name<-"))

#' prediction output for a model
#'
#' returns the prediction output for a model. This is supplied as input to the next model when used in a model.list
#' @param model a model object
#' @family model functions
#' @rdname predicted
#' @export
setGeneric("predicted",function(M)standardGeneric("predicted"))

######################################
###### model.list class generics #####
######################################

#' Get/set models of a model.list
#'
#' Returns the list of models in a model.list object
#' @param ML a model.list object
#' @param value a list containing only model objects
#' @family model.list functions
#' @rdname models
#' @export
setGeneric("models",function(ML)standardGeneric("models"))

#' @export
#' @rdname models
setGeneric("models<-",function(ML,value)standardGeneric("models<-"))

###################################
###### dataset class generics #####
###################################

#' get/set data for a dataset object
#'
#' @param obj a type object from the *struct* class
#' @param value a data.frame of raw data
#' @rdname data
#' @family dataset functions
#' @export
setGeneric("data",function(obj)standardGeneric("data"))

#' @export
#' @rdname data
setGeneric("data<-",function(obj,value)standardGeneric("data<-"))

#' get/set sample meta data for a dataset object
#'
#' @param obj a type object from the *struct* class
#' @param value a data.frame of meta data
#' @rdname sample.meta
#' @family dataset functions
#' @export
setGeneric("sample.meta",function(obj)standardGeneric("sample.meta"))

#' @export
#' @rdname sample.meta
setGeneric("sample.meta<-",function(obj,value)standardGeneric("sample.meta<-"))

#' get/set variable meta data for a dataset object
#'
#' @param obj a type object from the *struct* class
#' @param value a data.frame of meta data
#' @rdname variable.meta
#' @family dataset functions
#' @export
setGeneric("variable.meta",function(obj)standardGeneric("variable.meta"))

#' @export
#' @rdname variable.meta
setGeneric("variable.meta<-",function(obj,value)standardGeneric("variable.meta<-"))

####################################
###### iterator class generics #####
####################################

#' run an iterator object
#'
#' @param I an iterator object
#' @param D a dataset object
#' @param MET a metric object
#' @rdname iterator
#' @family iterator functions
#' @export
setGeneric("run",function(I,D,MET)standardGeneric("run"))

#' evaluate an iterator object
#'
#' @rdname iterator
#' @family iterator functions
#' @export
setGeneric("evaluate",function(I,MET)standardGeneric("evaluate"))

#' get/set output name as prediction output for a model
#'
#' get/set the prediction output for a model. This determines which outputs from this model are supplied as inputs to the next model when used in a model.list
#' @param M an iterator object
#' @param value name of an output for iterator M
#' @family iterator functions
#' @rdname result.name
#' @export
setGeneric("result.name",function(M)standardGeneric("result.name"))

#' @export
setGeneric("result.name<-",function(M,value)standardGeneric("result.name<-"))

#' results output for an iterator
#'
#' returns the results of an iterator. This is used to control model flow.
#' @param M an iterator object
#' @family iterator functions
#' @rdname result
#' @export
setGeneric("result",function(M)standardGeneric("result"))

####################################
###### metric class generics #####
####################################

#' calculate a metric
#'
#' @param MET a metric object
#' @param Y = sample meta data e.g. of test data
#' @param Yhat = predicted meta data after applying model to test data
#' @rdname metric
#' @family metric functions
#' @export
setGeneric("calculate",function(MET,Y,Yhat)standardGeneric("calculate"))

#' get the value for a metric
#'
#' @return value the calculated value of a metric
#' @rdname metric
#' @family metric functions
#' @export
setGeneric("value",function(MET)standardGeneric("value"))

#' @export
#' @rdname metric
setGeneric("value<-",function(obj,value)standardGeneric("value<-"))

####################################
###### stato class generics #####
####################################

#' get the stato.id for an object
#'
#' @return id the stato id
#' @rdname stato
#' @family stato functions
#' @export
setGeneric("stato.id",function(obj)standardGeneric("stato.id"))

#' get the stato name for an object
#'
#' @return name the stato name
#' @rdname stato
#' @family stato functions
#' @export
setGeneric("stato.name",function(obj)standardGeneric("stato.name"))

#' get the stato name for an object
#'
#' @return def the stato description
#' @rdname stato
#' @family stato functions
#' @export
setGeneric("stato.definition",function(obj)standardGeneric("stato.definition"))

#' display a stato summary of the object
#'
#' @rdname stato
#' @family stato functions
#' @export
setGeneric("stato.summary",function(obj)standardGeneric("stato.summary"))

#' get a pdf of a stato object
#'
#' @rdname stato
#' @family stato functions
#' @export
setGeneric("stato.pdf",function(obj,outpath,filename,outformat)standardGeneric("stato.pdf"))