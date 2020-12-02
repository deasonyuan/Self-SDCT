% Compile libraries and download network

[home_dir, name, ext] = fileparts(mfilename('fullpath'));

% mtimesx
if exist('external_libs/mtimesx', 'dir') == 7
    cd external_libs/mtimesx
    mtimesx_build;
    cd(home_dir)
else
    error('Mtimesx not found.')
end

% PDollar toolbox
if exist('external_libs/pdollar_toolbox/external', 'dir') == 7
    cd external_libs/pdollar_toolbox/external
    toolboxCompile;
    cd(home_dir)
else
    warning('PDollars toolbox not found. Clone this submodule if you want to use HOG features. Skipping for now.')
end

% matconvnet
if exist('external_libs/matconvnet/matlab', 'dir') == 7
    cd external_libs/matconvnet/matlab
    try
        disp('Trying to compile MatConvNet with GPU support')
        vl_compilenn('enableGpu', true)
    catch err
        warning('install', 'Could not compile MatConvNet with GPU support. Compiling for only CPU instead.\nVisit http://www.vlfeat.org/matconvnet/install/ for instructions of how to compile MatConvNet.\nNote: remember to move the mex-files after re-compiling.');
        vl_compilenn;
    end
    status = movefile('mex/vl_*.mex*');
else
    warning('install', 'Matconvnet not found. Clone this submodule if you want to use CNN features. Skipping for now.')
end