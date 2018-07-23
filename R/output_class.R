#' outputs_class
#'
#' A base class in the \pkg{struct} package. Provides several fundamental methods for getting/setting outputs etc and should not be called directly.
#' @export outputs_class
#' @include generics.R struct_class.R entity_class.R
#'

outputs_class<-setClass(
  "outputs_class",
  slots=c('outputs'="character"
  )
)

## initialise outputs on object creation
setMethod(f="initialize",
          signature="outputs_class",
          definition=function(.Object,...)
          {
            L=list(...)
            if (length(L)>0)
            {
              for (i in 1:length(L))
              {
                output.value(.Object,names(L)[[i]])=L[[names(L)[[i]]]]
              }
            }
            return(.Object)
          }
)

#' @export
setMethod(f="output.obj",
          signature=c("outputs_class","character"),
          definition=function(obj,name)
          {
            value=slot(obj, paste("outputs",name,sep='.'))
            return(value)
          }
)

#' @export
setMethod(f="output.obj<-",
          signature=c("outputs_class","character"),
          definition=function(obj,name,value)
          {
            p=slot(obj, paste("outputs",name,sep='.'))
            slot(obj, paste("outputs",name,sep='.'))=value
            return(obj)
          }
)

#' @export
setMethod(f="is.output",
          signature=c("outputs_class"),
          definition=function(obj,name)
          {
            valid=(obj@outputs)
            if (name %in% valid)
            {return(TRUE)}
            else
            {return(FALSE)}
          }
)

#' @export
setMethod(f="output.ids",
          signature=c("outputs_class"),
          definition=function(obj)
          {
            return(obj@outputs)
          }
)

#' @export
setMethod(f="output.name",
          signature=c("outputs_class",'character'),
          definition=function(obj,name)
          {
            p=slot(obj, paste("outputs",name,sep='.'))
            # if the output is an entity then get its name
            if (is(p,'entity'))
            {
              value=name(p)
            }
            else
            {
              # otherwise just return the slot name
              value=slot(obj, paste("outputs",name,sep='.'))
            }
            return(value)
          }
)

#'@export
setMethod(f='output.list',
          signature=c('outputs_class'),
          definition=function(obj)
          {
            L=list()
            names=output.names(obj)
            for (i in 1:length(names))
            {
              L[[names[[i]]]]=output(obj,names[[i]])
            }
            return(L)
          }
)

#'@export
setMethod(f='output.list<-',
          signature=c('outputs_class','list'),
          definition=function(obj,value)
          {
            names=name(value)
            for (i in 1:length(names))
            {
              output(obj,names[[i]])=value[[i]]
            }
            return(obj)
          }
)

#' @export
setMethod(f="output.value",
          signature=c("outputs_class","character"),
          definition=function(obj,name)
          {

            p=slot(obj, paste("outputs",name,sep='.'))
            # if the output is an entity then set its value
            if (is(p,'entity'))
            {
              value=value(p)

            }
            else
            {
              # otherwise just set it to the value
              value=slot(obj, paste("outputs",name,sep='.'))
            }
            return(value)
          }
)

#' @export
setMethod(f="output.value<-",
          signature=c("outputs_class","character"),
          definition=function(obj,name,value)
          {
            p=slot(obj, paste("outputs",name,sep='.'))
            # if the parameter is an entity then set its value
            if (is(p,'entity'))
            {
              value(p)=value
              slot(obj, paste("outputs",name,sep='.'))=p
            }
            else
            {
              # otherwise just set it to the value
              slot(obj, paste("outputs",name,sep='.'))=value
            }
            return(obj)
          }
)