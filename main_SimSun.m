clear, clc, close all;

% Create figure
figure_handle = figure;
plot(1:10, rand(1, 10));
xlabel('X 轴坐标');
ylabel('Y 轴坐标');
title_text = '标题';
title(title_text, 'FontSize', 13);

% Scale
pos=get(gcf,'Position');
scale=0.7;
set(gcf,'Position',[pos(1),pos(2),pos(3)*scale,pos(4)*scale]);

% Export graphics
folder_name = 'saved_figures';
figure_name = 'figure_1';  
resolution = 300; 
export_graphics(figure_handle, folder_name, figure_name, resolution);