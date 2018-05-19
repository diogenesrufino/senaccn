program bhaskara

!Programa que encontra raízes pela fórmula de Bháskara

 implicit none

 integer :: a, b, c, D, r1, r2
 real :: Part_Real, Part_imag
 character (len=10) :: valor
 character (len=32) :: valor1, valor2

 call getarg(1, valor)
 read (valor,*) a
 call getarg(2,valor)
 read (valor,*) b
 call getarg(3,valor)
 read (valor,*) c

 if (a /= 0) then

        D = b*b - 4*a*c 

        else if (D == 0) then

            print*, 'r1=', -b/(2*a)

 end if
 
 if (D > 0) then

        print*, 'r1=',(-b+SQRT(REAL(D)))/(2.0*a)
        print*, 'r2=',(-b-SQRT(REAL(D)))/(2.0*a)

        else 
            Part_Real = -b/(2.0*a)
            Part_Imag = (SQRT(REAL(-D))/(2.0*a))

            write(valor1,*)Part_Real
            write(valor2,*)Part_Imag

            print*,'r1 =',trim(valor1),' +',trim(valor2),' i'
            print*,'r2 =',trim(valor1),' -',trim(valor2),' i'

 end if
 
 
 end program bhaskara