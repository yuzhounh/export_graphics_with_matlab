function export_graphics(folder_name, figure_name, resolution)
% create a folder to save the graphics
remkdir(folder_name);

%% exportgraphics
folder = sprintf('%s/method_1_exportgraphics', folder_name); 
remkdir(folder);

% file path
output_filepath_jpg = sprintf('%s/%s.jpg', folder, figure_name);
output_filepath_png = sprintf('%s/%s.png', folder, figure_name);
output_filepath_tif = sprintf('%s/%s.tif', folder, figure_name);
output_filepath_gif = sprintf('%s/%s.gif', folder, figure_name);
output_filepath_bmp = sprintf('%s/%s.bmp', folder, figure_name);
output_filepath_eps = sprintf('%s/%s.eps', folder, figure_name);
output_filepath_pdf = sprintf('%s/%s.pdf', folder, figure_name);
output_filepath_svg = sprintf('%s/%s.svg', folder, figure_name);
output_filepath_emf = sprintf('%s/%s.emf', folder, figure_name);
output_filepath_fig = sprintf('%s/%s.fig', folder, figure_name);

% exportgraphics
exportgraphics(gcf, output_filepath_jpg, 'Resolution', resolution);
exportgraphics(gcf, output_filepath_png, 'Resolution', resolution);
exportgraphics(gcf, output_filepath_tif, 'Resolution', resolution);
exportgraphics(gcf, output_filepath_gif, 'Resolution', resolution);
% exportgraphics(gcf, output_filepath_bmp, 'Resolution', resolution);
exportgraphics(gcf, output_filepath_eps, 'ContentType', 'vector');
exportgraphics(gcf, output_filepath_pdf, 'ContentType', 'vector');
% exportgraphics(gcf, output_filepath_svg, 'ContentType', 'vector');
exportgraphics(gcf, output_filepath_emf, 'ContentType', 'vector');
% exportgraphics(gcf, output_filepath_fig, 'ContentType', 'vector');

%% print
folder = sprintf('%s/method_2_print', folder_name); 
remkdir(folder);

% file path
output_filepath_jpg = sprintf('%s/%s.jpg', folder, figure_name);
output_filepath_png = sprintf('%s/%s.png', folder, figure_name);
output_filepath_tif = sprintf('%s/%s.tif', folder, figure_name);
output_filepath_gif = sprintf('%s/%s.gif', folder, figure_name);
output_filepath_bmp = sprintf('%s/%s.bmp', folder, figure_name);
output_filepath_eps = sprintf('%s/%s.eps', folder, figure_name);
output_filepath_pdf = sprintf('%s/%s.pdf', folder, figure_name);
output_filepath_svg = sprintf('%s/%s.svg', folder, figure_name);
output_filepath_emf = sprintf('%s/%s.emf', folder, figure_name);
output_filepath_fig = sprintf('%s/%s.fig', folder, figure_name);

% print
print(gcf, output_filepath_jpg, '-djpeg', sprintf('-r%d', resolution));
print(gcf, output_filepath_png, '-dpng', sprintf('-r%d', resolution));
print(gcf, output_filepath_tif, '-dtiff', sprintf('-r%d', resolution));  
% print(gcf, output_filepath_gif, '-dgif', sprintf('-r%d', resolution));  
% print(gcf, output_filepath_bmp, '-dbmp', sprintf('-r%d', resolution));  
print(gcf, output_filepath_emf, '-dmeta', sprintf('-r%d', resolution));
print(gcf, output_filepath_pdf, '-dpdf', '-vector'); 
print(gcf, output_filepath_eps, '-depsc', '-vector'); 
print(gcf, output_filepath_svg, '-dsvg', '-vector');
print(gcf, output_filepath_emf, '-dmeta', '-vector');
% print(gcf, output_filepath_fig, '-dfig', '-vector');

%% saveas
folder = sprintf('%s/method_3_saveas', folder_name); 
remkdir(folder);

% file path
output_filepath_jpg = sprintf('%s/%s.jpg', folder, figure_name);
output_filepath_png = sprintf('%s/%s.png', folder, figure_name);
output_filepath_tif = sprintf('%s/%s.tif', folder, figure_name);
output_filepath_gif = sprintf('%s/%s.gif', folder, figure_name);
output_filepath_bmp = sprintf('%s/%s.bmp', folder, figure_name);
output_filepath_eps = sprintf('%s/%s.eps', folder, figure_name);
output_filepath_pdf = sprintf('%s/%s.pdf', folder, figure_name);
output_filepath_svg = sprintf('%s/%s.svg', folder, figure_name);
output_filepath_emf = sprintf('%s/%s.emf', folder, figure_name);
output_filepath_fig = sprintf('%s/%s.fig', folder, figure_name);

saveas(gcf, output_filepath_jpg);
saveas(gcf, output_filepath_png);
saveas(gcf, output_filepath_tif); 
% saveas(gcf, output_filepath_gif); 
saveas(gcf, output_filepath_bmp); 
saveas(gcf, output_filepath_eps);
saveas(gcf, output_filepath_pdf); 
saveas(gcf, output_filepath_svg); 
saveas(gcf, output_filepath_emf); 
saveas(gcf, output_filepath_fig);

%% export_fig
folder = sprintf('%s/method_4_exportfig', folder_name); 
remkdir(folder);

% file path
output_filepath_jpg = sprintf('%s/%s.jpg', folder, figure_name);
output_filepath_png = sprintf('%s/%s.png', folder, figure_name);
output_filepath_tif = sprintf('%s/%s.tif', folder, figure_name);
output_filepath_gif = sprintf('%s/%s.gif', folder, figure_name);
output_filepath_bmp = sprintf('%s/%s.bmp', folder, figure_name);
output_filepath_eps = sprintf('%s/%s.eps', folder, figure_name);
output_filepath_pdf = sprintf('%s/%s.pdf', folder, figure_name);
output_filepath_svg = sprintf('%s/%s.svg', folder, figure_name);
output_filepath_emf = sprintf('%s/%s.emf', folder, figure_name);
output_filepath_fig = sprintf('%s/%s.fig', folder, figure_name);

export_fig(output_filepath_jpg, '-jpeg', sprintf('-r%d', resolution), '-transparent');
export_fig(output_filepath_png, '-png', sprintf('-r%d', resolution), '-transparent');
export_fig(output_filepath_tif, '-tiff', sprintf('-r%d', resolution), '-transparent');
export_fig(output_filepath_gif, '-gif', sprintf('-r%d', resolution), '-transparent');
export_fig(output_filepath_bmp, '-bmp', sprintf('-r%d', resolution), '-transparent');
export_fig(output_filepath_eps, '-eps', '-painters', '-transparent');
export_fig(output_filepath_pdf, '-pdf', '-painters', '-transparent');
export_fig(output_filepath_svg, '-svg', '-painters', '-transparent');
export_fig(output_filepath_emf, '-emf', '-painters', '-transparent');
export_fig(output_filepath_fig, '-fig', '-painters', '-transparent');

%% fig2svg
folder = sprintf('%s/method_5_fig2svg', folder_name); 
remkdir(folder);

% file path
output_filepath_jpg = sprintf('%s/%s.jpg', folder, figure_name);
output_filepath_png = sprintf('%s/%s.png', folder, figure_name);
output_filepath_tif = sprintf('%s/%s.tif', folder, figure_name);
output_filepath_gif = sprintf('%s/%s.gif', folder, figure_name);
output_filepath_bmp = sprintf('%s/%s.bmp', folder, figure_name);
output_filepath_eps = sprintf('%s/%s.eps', folder, figure_name);
output_filepath_pdf = sprintf('%s/%s.pdf', folder, figure_name);
output_filepath_svg = sprintf('%s/%s.svg', folder, figure_name);
output_filepath_emf = sprintf('%s/%s.emf', folder, figure_name);
output_filepath_fig = sprintf('%s/%s.fig', folder, figure_name);

% fig2svg(output_filepath_jpg);
% fig2svg(output_filepath_png);
% fig2svg(output_filepath_tif);
% fig2svg(output_filepath_gif);
% fig2svg(output_filepath_bmp);
% fig2svg(output_filepath_eps);
% fig2svg(output_filepath_pdf);
fig2svg(output_filepath_svg);
% fig2svg(output_filepath_emf);
% fig2svg(output_filepath_fig);

%% savefig
folder = sprintf('%s/method_6_savefig', folder_name); 
remkdir(folder);

% file path
output_filepath_jpg = sprintf('%s/%s.jpg', folder, figure_name);
output_filepath_png = sprintf('%s/%s.png', folder, figure_name);
output_filepath_tif = sprintf('%s/%s.tif', folder, figure_name);
output_filepath_gif = sprintf('%s/%s.gif', folder, figure_name);
output_filepath_bmp = sprintf('%s/%s.bmp', folder, figure_name);
output_filepath_eps = sprintf('%s/%s.eps', folder, figure_name);
output_filepath_pdf = sprintf('%s/%s.pdf', folder, figure_name);
output_filepath_svg = sprintf('%s/%s.svg', folder, figure_name);
output_filepath_emf = sprintf('%s/%s.emf', folder, figure_name);
output_filepath_fig = sprintf('%s/%s.fig', folder, figure_name);

savefig(output_filepath_fig);