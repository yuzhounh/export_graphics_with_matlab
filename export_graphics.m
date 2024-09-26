function export_graphics(figure_handle, folder_name, figure_name, resolution)
% Add path
addpath(genpath('fig2svg-master\'));
addpath(genpath('export_fig-master\'));

% create a folder to save the graphics
remkdir(folder_name);

%% exportgraphics
folder = sprintf('%s/method_1_exportgraphics', folder_name); 
remkdir(folder);

% file path
figure_jpg = sprintf('%s/%s.jpg', folder, figure_name);
figure_png = sprintf('%s/%s.png', folder, figure_name);
figure_tif = sprintf('%s/%s.tif', folder, figure_name);
figure_gif = sprintf('%s/%s.gif', folder, figure_name);
figure_bmp = sprintf('%s/%s.bmp', folder, figure_name);
figure_eps = sprintf('%s/%s.eps', folder, figure_name);
figure_pdf = sprintf('%s/%s.pdf', folder, figure_name);
figure_svg = sprintf('%s/%s.svg', folder, figure_name);
figure_emf = sprintf('%s/%s.emf', folder, figure_name);
figure_fig = sprintf('%s/%s.fig', folder, figure_name);

% exportgraphics
exportgraphics(figure_handle, figure_jpg, 'Resolution', resolution);
exportgraphics(figure_handle, figure_png, 'Resolution', resolution);
exportgraphics(figure_handle, figure_tif, 'Resolution', resolution);
exportgraphics(figure_handle, figure_gif, 'Resolution', resolution);
% exportgraphics(figure_handle, figure_bmp, 'Resolution', resolution);
exportgraphics(figure_handle, figure_eps, 'ContentType', 'vector');
exportgraphics(figure_handle, figure_pdf, 'ContentType', 'vector');
% exportgraphics(figure_handle, figure_svg, 'ContentType', 'vector');
exportgraphics(figure_handle, figure_emf, 'ContentType', 'vector');
% exportgraphics(figure_handle, figure_fig, 'ContentType', 'vector');

%% print
folder = sprintf('%s/method_2_print', folder_name); 
remkdir(folder);

% file path
figure_jpg = sprintf('%s/%s.jpg', folder, figure_name);
figure_png = sprintf('%s/%s.png', folder, figure_name);
figure_tif = sprintf('%s/%s.tif', folder, figure_name);
figure_gif = sprintf('%s/%s.gif', folder, figure_name);
figure_bmp = sprintf('%s/%s.bmp', folder, figure_name);
figure_eps = sprintf('%s/%s.eps', folder, figure_name);
figure_pdf = sprintf('%s/%s.pdf', folder, figure_name);
figure_svg = sprintf('%s/%s.svg', folder, figure_name);
figure_emf = sprintf('%s/%s.emf', folder, figure_name);
figure_fig = sprintf('%s/%s.fig', folder, figure_name);

% print
print(figure_handle, figure_jpg, '-djpeg', sprintf('-r%d', resolution));
print(figure_handle, figure_png, '-dpng', sprintf('-r%d', resolution));
print(figure_handle, figure_tif, '-dtiff', sprintf('-r%d', resolution));  
% print(figure_handle, figure_gif, '-dgif', sprintf('-r%d', resolution));  
% print(figure_handle, figure_bmp, '-dbmp', sprintf('-r%d', resolution));  
print(figure_handle, figure_emf, '-dmeta', sprintf('-r%d', resolution));
print(figure_handle, figure_pdf, '-dpdf', '-vector'); 
print(figure_handle, figure_eps, '-depsc', '-vector'); 
print(figure_handle, figure_svg, '-dsvg', '-vector');
% print(figure_handle, figure_emf, '-dmeta', '-vector');
% print(figure_handle, figure_fig, '-dfig', '-vector');

%% saveas
folder = sprintf('%s/method_3_saveas', folder_name); 
remkdir(folder);

% file path
figure_jpg = sprintf('%s/%s.jpg', folder, figure_name);
figure_png = sprintf('%s/%s.png', folder, figure_name);
figure_tif = sprintf('%s/%s.tif', folder, figure_name);
figure_gif = sprintf('%s/%s.gif', folder, figure_name);
figure_bmp = sprintf('%s/%s.bmp', folder, figure_name);
figure_eps = sprintf('%s/%s.eps', folder, figure_name);
figure_pdf = sprintf('%s/%s.pdf', folder, figure_name);
figure_svg = sprintf('%s/%s.svg', folder, figure_name);
figure_emf = sprintf('%s/%s.emf', folder, figure_name);
figure_fig = sprintf('%s/%s.fig', folder, figure_name);

saveas(figure_handle, figure_jpg);
saveas(figure_handle, figure_png);
saveas(figure_handle, figure_tif); 
% saveas(figure_handle, figure_gif); 
saveas(figure_handle, figure_bmp); 
saveas(figure_handle, figure_eps);
saveas(figure_handle, figure_pdf); 
saveas(figure_handle, figure_svg); 
saveas(figure_handle, figure_emf); 
saveas(figure_handle, figure_fig);

%% export_fig
folder = sprintf('%s/method_4_exportfig', folder_name); 
remkdir(folder);

% file path
figure_jpg = sprintf('%s/%s.jpg', folder, figure_name);
figure_png = sprintf('%s/%s.png', folder, figure_name);
figure_tif = sprintf('%s/%s.tif', folder, figure_name);
figure_gif = sprintf('%s/%s.gif', folder, figure_name);
figure_bmp = sprintf('%s/%s.bmp', folder, figure_name);
figure_eps = sprintf('%s/%s.eps', folder, figure_name);
figure_pdf = sprintf('%s/%s.pdf', folder, figure_name);
figure_svg = sprintf('%s/%s.svg', folder, figure_name);
figure_emf = sprintf('%s/%s.emf', folder, figure_name);
figure_fig = sprintf('%s/%s.fig', folder, figure_name);

export_fig(figure_handle, figure_jpg, '-jpeg', sprintf('-r%d', resolution), '-transparent');
export_fig(figure_handle, figure_png, '-png', sprintf('-r%d', resolution), '-transparent');
export_fig(figure_handle, figure_tif, '-tiff', sprintf('-r%d', resolution), '-transparent');
export_fig(figure_handle, figure_gif, '-gif', sprintf('-r%d', resolution), '-transparent');
export_fig(figure_handle, figure_bmp, '-bmp', sprintf('-r%d', resolution), '-transparent');
export_fig(figure_handle, figure_eps, '-eps', '-painters', '-transparent');
export_fig(figure_handle, figure_pdf, '-pdf', '-painters', '-transparent');
export_fig(figure_handle, figure_svg, '-svg', '-painters', '-transparent');
export_fig(figure_handle, figure_emf, '-emf', '-painters', '-transparent');
export_fig(figure_handle, figure_fig, '-fig', '-painters', '-transparent');

%% fig2svg
folder = sprintf('%s/method_5_fig2svg', folder_name); 
remkdir(folder);

% file path
figure_jpg = sprintf('%s/%s.jpg', folder, figure_name);
figure_png = sprintf('%s/%s.png', folder, figure_name);
figure_tif = sprintf('%s/%s.tif', folder, figure_name);
figure_gif = sprintf('%s/%s.gif', folder, figure_name);
figure_bmp = sprintf('%s/%s.bmp', folder, figure_name);
figure_eps = sprintf('%s/%s.eps', folder, figure_name);
figure_pdf = sprintf('%s/%s.pdf', folder, figure_name);
figure_svg = sprintf('%s/%s.svg', folder, figure_name);
figure_emf = sprintf('%s/%s.emf', folder, figure_name);
figure_fig = sprintf('%s/%s.fig', folder, figure_name);

% export_fig(figure_handle, figure_jpg);
% export_fig(figure_handle, figure_png);
% export_fig(figure_handle, figure_tif);
% export_fig(figure_handle, figure_gif);
% export_fig(figure_handle, figure_bmp);
% export_fig(figure_handle, figure_eps);
% export_fig(figure_handle, figure_pdf);
export_fig(figure_handle, figure_svg);
% export_fig(figure_handle, figure_emf);
% export_fig(figure_handle, figure_fig);

%% savefig
folder = sprintf('%s/method_6_savefig', folder_name); 
remkdir(folder);

% file path
figure_jpg = sprintf('%s/%s.jpg', folder, figure_name);
figure_png = sprintf('%s/%s.png', folder, figure_name);
figure_tif = sprintf('%s/%s.tif', folder, figure_name);
figure_gif = sprintf('%s/%s.gif', folder, figure_name);
figure_bmp = sprintf('%s/%s.bmp', folder, figure_name);
figure_eps = sprintf('%s/%s.eps', folder, figure_name);
figure_pdf = sprintf('%s/%s.pdf', folder, figure_name);
figure_svg = sprintf('%s/%s.svg', folder, figure_name);
figure_emf = sprintf('%s/%s.emf', folder, figure_name);
figure_fig = sprintf('%s/%s.fig', folder, figure_name);

savefig(figure_handle, figure_fig);