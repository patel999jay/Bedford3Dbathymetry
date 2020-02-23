% Author : Jay Patel
% Bedford Basin Bathy from GEBCO 2019 database. 
% required GEBCO 2019 - bedford basin bathy you can go to this link and
% download required custom bathy : https://download.gebco.net/

% netcad file name and path
filename='D:\Dal\Bellhop\dbs\bedfordbasinbathy\gebco_2019_n44.74834442138672_s44.666290283203125_w-63.7013053894043_e-63.52518081665039.nc';

ncdisp(filename); % display file details

% Reading from database
bedford_long=ncread(filename,'lon'); 
bedford_lat=ncread(filename,'lat');
bedford_ele=ncread(filename,'elevation');

% 2D mapping of bathy
% figure(1)
% worldmap('Canada');
% mymap=pcolor(bedford_lat,bedford_long,bedford_ele);
% mymap.EdgeAlpha=0;
% load coast
% hold on
% plot(long,lat,'k')

% Plot surface of bathy
figure(2)
surf(bedford_lat,bedford_long,bedford_ele); % modification to match dimensions of the matrix