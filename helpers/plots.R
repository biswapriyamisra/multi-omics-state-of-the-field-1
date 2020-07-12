reverse_log_trans <- function(base=10) {
    # CC-BY-SA 4.0 Brian Diggs, modified
    # https://stackoverflow.com/a/11054781
    scales::trans_new(
        paste0(
            'reverselog-', format(base)),
            function(x) -log(x, base),
            function(x) base^-x,
            scales::log_breaks(base=base),
            domain = c(1e-100, Inf)
    )
}