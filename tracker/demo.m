
% This demo script runs the selfSDCT tracker

% Add paths
setup_paths();

% Load video information
video_path = 'sequences/Crossing';
[seq, ground_truth] = load_video_info(video_path);

% Run tracker
results = run_selfSDCT(seq);

