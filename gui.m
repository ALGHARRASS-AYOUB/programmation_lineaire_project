% First Window: Read cost function, max/min, number of constraints
options.Resize = 'on';
title = 'GUI DATA';
prompt = {'function objet (c vector)',...
    'Max (enter 1) Min (enter 2)',...
    'nombre des contraintes'};
DefaultText = {'[ ]','',''};
a = inputdlg(prompt,title,1,DefaultText,options);

c    = eval(a{1});
type = eval(a{2});
nConstraints = eval(a{3});
struct1 = struct('vari',{},'Type',{});
%% Second window: Sense of each inequality constraint
title = '(In)equality Constraints Data';

for i = 1:nConstraints
    prompt = {['Specify (<=,>=,=) for constraint no. ', num2str(i)]};
    DefaultText = {''};
    a = inputdlg(prompt,title,1,DefaultText,options);
    struct1(1,i).Type = a{1};
end

%% Third window: matrix A
title = 'Inequality constraint coefficients';
prompt = {'GIVE ME MATLAB MATRIX A'};
DefaultText = {'[ ]'}; % MATLAB MATRIX
a = inputdlg(prompt,title,1,DefaultText,options);
A = eval(a{1});
%% Fourth window: vector b
title = 'Inequality (upper/lower) Bounds';
prompt = {'GIVE ME VECTOR b'};
DefaultText = {'[ ]'}; % VECTOR MATRIX
a = inputdlg(prompt,title,1,DefaultText,options);
b = eval(a{1});