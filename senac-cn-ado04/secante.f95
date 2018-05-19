program secante

    implicit none

    
    double precision :: valor, p0, p, p1, epsilon = 0.000001
    integer :: N_inter = 1000, count
    character(len = 10) :: arg
    call get_command_argument(1, arg)
    read (arg, *) valor

    p0 = valor
    p = valor - 1

    do count = 0, N_inter
        p1 = (p0 * p + valor) / (p0 + p)
        if (abs(p1 - p) < epsilon .or. p1 ** 2 == valor) then
            print *, real(p1)
            exit
        end if
        p0 = p
        p = p1   
    end do

end program