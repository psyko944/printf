#include "ft_printf.h"

int ft_print_h(va_list arg)
{
    unsigned int    x;

    x = va_arg(arg, unsigned int);
    ft_putnbr_base_unsigned((unsigned long long)x, "0123456789abcdef");
    return get_size_num_u(x, 16);
}
