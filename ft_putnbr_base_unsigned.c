#include "ft_printf.h"

void    ft_putnbr_base_unsigned(unsigned long long nb, char *base)
{
    unsigned long long  base_size;
    
    base_size = ft_strlen(base);
    if (nb >= base_size)
        ft_putnbr_base_unsigned(nb / base_size, base);
    ft_putchar(base[nb % base_size]);
}
