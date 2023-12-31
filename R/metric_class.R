#' metric class
#'
#' A class for metrics to assess performance of e.g. models, iterators.
#' Not intended to be called directly, this class should be inherited to provide
#' functionality for method-specific classes.
#' @export metric
#' @param Y the true class labels
#' @param Yhat the predicted class labels
#' @param value value
#' @include generics.R parameter_class.R output_class.R model_class.R
#' @include iterator_class.R model_list_class.R
#' @return a metric object
#' @examples
#' MET = metric()
#' @param ... named slots and their values.
#' @rdname metric
metric = function(...) {
    # new object
    out = new_struct('metric',...)
    return(out)
}

.metric<-setClass(
    "metric",
    contains = c('struct_class'),
    slots = c(type = 'character',
        value = 'numeric'
    )
)

#' @rdname metric
#' @export
#' @examples
#' M = metric()
#' calculate(M,Y,Yhat)
setMethod(f = "calculate",
    signature = c('metric'),
    definition = function(obj,Y,Yhat) {
        warning('no calculation provided for this metric')
        return(obj)
    }
)

#' @rdname metric
#' @export
#' @examples
#' MET = metric()
#' value(MET)
setMethod(f = "value",
    signature = c("metric"),
    definition = function(obj) {
        return(obj@value)
    }
)

#' @rdname metric
#' @export
#' @examples
#' MET = metric()
#' value(MET) = 10
setMethod(f = "value<-",
    signature = c("metric"),
    definition = function(obj) {
        return(obj)
    }
)


#' Example metric
#'
#' An example metric for testing
#' @export test_metric
#' @return test metric object
#' @param obj metric object
#' @rdname test_metric
#' @include metric_class.R
#' @examples
#' MET = test_metric()
#'
test_metric<-setClass(
    "test_metric",
    contains = 'metric',
    prototype = list(name = 'example metric')
)

#' calculate metric example
#'
#' calculates a metric, which just returns a value of 3.142
#' @export
#' @return dataset object
#' @rdname test_metric
#' @examples
#' MET = test_metric()
#' MET = calculate(MET)
#'
setMethod(f = "calculate",
    signature = c('test_metric'),
    definition = function(obj) {
        value(obj) = 3.142
        return(obj)
    }
)


setMethod(f = "show",
    signature = c("metric"),
    definition = function(object) {
        callNextMethod()
        cat('value:         ', value(object),'\n',sep = '')
        cat('\n')
    }
)

# autocompletion, return sample_meta column names
#' @export
#' @rdname autocompletion
#' @method .DollarNames metric
.DollarNames.metric<- function(x, pattern = "") {
    .DollarNames.struct_class(x,pattern)
}

#' @export 
#' @rdname autocompletion
setMethod('.DollarNames','metric',.DollarNames.metric)