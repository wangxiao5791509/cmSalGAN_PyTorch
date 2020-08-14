clear; clc;
%% norm depth to 0-255
% read depth iamge from
root_path = 'yourpath\org_depth/';
% save the 0-255 depth iamge in
path_save = 'yourpath\depth/';
if ~exist(path_save, 'dir')
    mkdir(path_save);
end
%%
a_dir = dir(root_path);
% b_dir = dir(path_save);
for k = 3:length(a_dir)
    disp(k);
    i_name = a_dir(k).name;
    path_i_name = [root_path i_name];
    img_a_read = im2double(imread(path_i_name));
    normD = 1 - reshape(mapminmax(img_a_read(:)',0,1),size(img_a_read));
    res = normD * 255;
    img_save = uint8(res);
    imwrite(img_save,[path_save i_name(1:end-4) '.jpg']);
end
disp('done!');
