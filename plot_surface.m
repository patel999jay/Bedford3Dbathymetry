% Author: Franz Heubach

% plot

load bathy.txt
x=bathy(:,1);
y=bathy(:,2);
depth=bathy(:,3);


%figure(1)
%stem3(x, y, depth)

max(x)
min(x)
min(y)
max(y)

xv = linspace(min(x), max(x), 975);
yv = linspace(min(y), max(y), 1446);
[X, Y] = meshgrid(xv, yv);
Z = -griddata(x,y,depth,X,Y);

Z(isnan(Z)) = 0;

figure(2)
surf(X,Y,Z);
grid on
set(gca, 'ZLim', [-100 0])
shading interp
axis equal

disp('Min and Max of Z')
disp(min(min(Z)))
disp(max(max(Z)))

Z_bitmap = mat2gray(Z);

imwrite(Z_bitmap, 'bathy.tiff')
