clear, clc, close all;

% Create figure
figure_handle = figure;
plot(1:10, rand(1, 10));
xlabel('X label');
ylabel('Y label');
title_text = 'Title';
title(title_text, 'FontSize', 13);

% Scale the figure
pos = get(gcf, 'Position');
scale = 0.7;
set(gcf, 'Position', [pos(1), pos(2), pos(3)*scale, pos(4)*scale]);

% Specify the folder name where the figure will be saved
folder_name = 'figures';

% Specify the filename for the saved figure (without extension)
figure_name = 'figure_1';  

% Set the resolution for the exported figure (in DPI)
resolution = 300; 

% Call custom function to export the figure
export_graphics(figure_handle, folder_name, figure_name, resolution);