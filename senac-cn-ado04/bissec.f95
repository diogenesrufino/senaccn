program bissec

    implicit none

    
    double precision :: valor, min, max, m, epsilon = 0.000001
    integer :: N_inter = 1000, count
    character (len = 10) :: arg
    call get_command_argument(1, arg)
    read (arg, *) valor

    min = 0
    max = valor
    IF (max ** 2 == valor) max = max + 1

    do count = 0, N_inter
        m = (max + min) / 2
        if (m ** 2 == valor .or. (max - min) / 2 < epsilon) then
            print *, real (m)
            exit
        
       elseif (m ** 2 > valor) then
            max = m
        elseif (m ** 2 < valor) then
            min = m
        end if
    end do

    

end program