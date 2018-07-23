#' parameter_class
#'
#' A base class in the \pkg{struct} package. Provides several fundamental methods for getting/setting parameters etc and should not be called directly.
#' @export parameter_class
#' @include generics.R struct_class.R
#'

parameter_class<-setClass(
  "parameter_class",
  slots=c('params'="character"
          )
)

## initialise parameters on object creation
setMethod(f="initialize",
          signature="parameter_class",
          definition=function(.Object,...)
          {
            L=list(...)
            if (length(L)>0)
            {
              for (i in 1:length(L))
              {
                param.value(.Object,names(L)[[i]])=L[[names(L)[[i]]]]
              }
            }
            return(.Object)
          }
)

#' @export
setMethod(f="param.obj",
          signature=c("parameter_class","character"),
          definition=function(obj,name)
          {
            value=slot(obj, paste("params",name,sep='.'))
            return(value)
          }
)

#' @export
setMethod(f="param.obj<-",
  signature=c("parameter_class","character"),
  definition=function(obj,name,value)
  {
    slot(obj, paste("params",name,sep='.'))=value
    return(obj)
  }
)

#' @export
setMethod(f="is.param",
          signature=c("parameter_class"),
          definition=function(obj,name)
          {
            valid=(obj@params)
            if (name %in% valid)
            {return(TRUE)}
            else
            {return(FALSE)}
          }
)

#' @export
setMethod(f="param.ids",
          signature=c("parameter_class"),
          definition=function(obj)
          {
            return(obj@params)
          }
)

#' @export
setMethod(f="param.name",
          signature=c("parameter_class",'character'),
          definition=function(obj,name)
          {
            p=slot(obj, paste("params",name,sep='.'))
            # if the parameter is an entity then get its name
            if (is(p,'entity'))
            {
              value=name(p)
            }
            else
            {
              # otherwise just return the slot name
              value=slot(obj, paste("params",name,sep='.'))
            }
            return(value)
          }
)

#'@export
setMethod(f='param.list',
          signature=c('parameter_class'),
          definition=function(obj)
          {
            L=list()
            names=param.names(obj)
            for (i in 1:length(names))
            {
              L[[names[[i]]]]=param(obj,names[[i]])
            }
            return(L)
          }
)

#'@export
setMethod(f='param.list<-',
          signature=c('parameter_class','list'),
          definition=function(obj,value)
          {
            names=name(value)
            for (i in 1:length(names))
            {
              param(obj,names[[i]])=value[[i]]
            }
            return(obj)
          }
)

#' @export
setMethod(f="param.value",
          signature=c("parameter_class","character"),
          definition=function(obj,name)
          {

            p=slot(obj, paste("params",name,sep='.'))
            # if the parameter is an entity then set its value
            if (is(p,'entity'))
            {
              value=value(p)

            }
            else
            {
              # otherwise just set it to the value
              value=slot(obj, paste("params",name,sep='.'))
            }
            return(value)
          }
)

#' @export
setMethod(f="param.value<-",
          signature=c("parameter_class","character","missing"),
          definition=function(obj,name,value)
          {
            p=slot(obj, paste("params",name,sep='.'))
            # if the parameter is an entity then set its value
            if (is(p,'entity'))
            {
              value(p)=value
              slot(obj, paste("params",name,sep='.'))=p
            }
            else
            {
              # otherwise just set it to the value
              slot(obj, paste("params",name,sep='.'))=value
            }
            return(obj)
          }
)

#' @export
setMethod(f="param.value<-",
          signature=c("parameter_class","character",'numeric'),
          definition=function(obj,name,idx,value)
          {
            M=models(obj)
            #if its an iterator, pass the request trhogh to the models
            if(is(obj,'iterator') | is(obj,'model.list'))
            {
              param.value(M,name,idx)=value
            }
            else # must be model
            {
              param.value(M,name)=value
            }
            models(obj)=M
            return(obj)
          }
)