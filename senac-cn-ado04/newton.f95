program newton

  implicit none

    
    double precision :: valor, p0, p, epsilon = 0.000001
    integer :: N_inter = 1000, count
    character(len = 10) :: arg
    call get_command_argument(1, arg)
    read (arg, *) valor

    p0 = valor
    DO count = 0, N_inter
        p = (p0 + (valor / p0)) / 2
        IF (abs(p - p0) < epsilon .OR. p ** 2 == valor) then
            print *, real (p)
            exit
        end if
        p0 = p   
    end do

end program