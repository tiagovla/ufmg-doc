% update electric fields except the tangential components
% on the boundaries 

current_time  = current_time + dt/2;

Ex(1:nx,2:ny,2:nz) = Cexe(1:nx,2:ny,2:nz).*Ex(1:nx,2:ny,2:nz) ...
                     + Cexhz(1:nx,2:ny,2:nz).*...
                     (Hz(1:nx,2:ny,2:nz)-Hz(1:nx,1:ny-1,2:nz)) ...
                     + Cexhy(1:nx,2:ny,2:nz).*...
                     (Hy(1:nx,2:ny,2:nz)-Hy(1:nx,2:ny,1:nz-1));   
                  
Ey(2:nx,1:ny,2:nz)=Ceye(2:nx,1:ny,2:nz).*Ey(2:nx,1:ny,2:nz) ...
                      + Ceyhx(2:nx,1:ny,2:nz).*  ...
                      (Hx(2:nx,1:ny,2:nz)-Hx(2:nx,1:ny,1:nz-1)) ...
                      + Ceyhz(2:nx,1:ny,2:nz).*  ...
                      (Hz(2:nx,1:ny,2:nz)-Hz(1:nx-1,1:ny,2:nz)); 
               
Ez(2:nx,2:ny,1:nz)=Ceze(2:nx,2:ny,1:nz).*Ez(2:nx,2:ny,1:nz) ...
                      + Cezhy(2:nx,2:ny,1:nz).*  ...
                      (Hy(2:nx,2:ny,1:nz)-Hy(1:nx-1,2:ny,1:nz)) ...
                      + Cezhx(2:nx,2:ny,1:nz).*...
                      (Hx(2:nx,2:ny,1:nz)-Hx(2:nx,1:ny-1,1:nz));
