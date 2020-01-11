function fig = HwHHAnalysis()
% This is the machine-generated representation of a Handle Graphics object
% and its children.  Note that handle values may change when these objects
% are re-created. This may cause problems with any callbacks written to
% depend on the value of the handle at the time the object was saved.
% This problem is solved by saving the output as a FIG-file.
%
% To reopen this object, just type the name of the M-file at the MATLAB
% prompt. The M-file and its associated MAT-file must be on your path.
% 
% NOTE: certain newer features in MATLAB may not have been saved in this
% M-file due to limitations of this format, which has been superseded by
% FIG-files.  Figures which have been annotated using the plot editor tools
% are incompatible with the M-file/MAT-file format, and should be saved as
% FIG-files.

load HwHHAnalysis

h0 = figure('Color',[0.8 0.8 0.8], ...
	'Colormap',mat0, ...
	'FileName','D:\matlab\RowlandRoutines\HwHH4\HwHHAnalysis.m', ...
	'MenuBar','none', ...
	'Name','HwHH Analysis', ...
	'NumberTitle','off', ...
	'PaperPosition',[18 180 576 432], ...
	'PaperType','a4letter', ...
	'PaperUnits','points', ...
	'Position',[218 86 156 713], ...
	'Resize','off', ...
	'Tag','HwHHControlBox', ...
	'ToolBar','none');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[9 346.5 100.5 129.75], ...
	'Style','frame', ...
	'Tag','Frame1');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback',mat1, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[16.5 446.25 84.75 15.75], ...
	'String','Interpolated', ...
	'Style','radiobutton', ...
	'Tag','SelectInterp');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback',mat2, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[15 403.5 82.5 15.75], ...
	'String','Polynomial', ...
	'Style','radiobutton', ...
	'Tag','SelectPoly');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback',mat3, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[15.75 372.75 80.25 18], ...
	'String','Smoothed', ...
	'Style','radiobutton', ...
	'Tag','SelectSmooth');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[15.75 422.25 84.75 14.25], ...
	'String',' ', ...
	'Style','popupmenu', ...
	'Tag','InterpMethod', ...
	'TooltipString','Interpolation Method', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Enable','off', ...
	'ListboxTop',0, ...
	'Position',[15.75 349.5 83.25 15.75], ...
	'String',' ', ...
	'Style','popupmenu', ...
	'Tag','SmoothInterpMethod', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[12.75 390.75 26.25 13.5], ...
	'String','Order', ...
	'Style','text', ...
	'Tag','StaticText1');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Enable','off', ...
	'ListboxTop',0, ...
	'Position',[40.5 390 59.25 15], ...
	'Style','edit', ...
	'Tag','PolyOrder');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'FontAngle','italic', ...
	'FontName','Helvetica', ...
	'FontSize',14, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[18.75 459.75 79.5 15], ...
	'String','Curve Fit', ...
	'Style','text', ...
	'Tag','StaticText2');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[15 437.25 78 11.25], ...
	'String','Interpolation Method', ...
	'Style','text', ...
	'Tag','StaticText3');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[14.25 366 78 11.25], ...
	'String','Interpolation Method', ...
	'Style','text', ...
	'Tag','StaticText3');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[9 478.5 99 48.75], ...
	'Style','frame', ...
	'Tag','Frame2');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'FontAngle','italic', ...
	'FontName','Helvetica', ...
	'FontSize',14, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[12 512.25 95.25 13.5], ...
	'String','Held Variable', ...
	'Style','text', ...
	'Tag','StaticText4');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[14.25 496.5 90 15], ...
	'String',' ', ...
	'Style','popupmenu', ...
	'Tag','ChooseHoldVar', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[8.25 253.5 100.5 90.75], ...
	'Style','frame', ...
	'Tag','Frame3');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[63.75 291.75 22.5 10.5], ...
	'String','Max', ...
	'Style','text', ...
	'Tag','StaticText8');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[33.75 294 18 9], ...
	'String','Min', ...
	'Style','text', ...
	'Tag','StaticText7');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[18.75 258 9 12], ...
	'String','Y', ...
	'Style','text', ...
	'Tag','StaticText6');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[18.75 276.75 9.75 11.25], ...
	'String','X', ...
	'Style','text', ...
	'Tag','StaticText5');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Enable','off', ...
	'ListboxTop',0, ...
	'Position',[63 256.5 27 15], ...
	'Style','edit', ...
	'Tag','MaxYAxis');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Enable','off', ...
	'ListboxTop',0, ...
	'Position',[30.75 256.5 27 15], ...
	'Style','edit', ...
	'Tag','MinYAxis');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Enable','off', ...
	'ListboxTop',0, ...
	'Position',[63 276 27 15], ...
	'Style','edit', ...
	'Tag','MaxXAxis');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Enable','off', ...
	'ListboxTop',0, ...
	'Position',[30.75 276 27 15], ...
	'Style','edit', ...
	'Tag','MinXAxis');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback',mat4, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[14.25 301.5 79.5 15.75], ...
	'String','Manual', ...
	'Style','radiobutton', ...
	'Tag','SelectManAxis');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback',mat5, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[14.25 315 81.75 14.25], ...
	'String','Automatic', ...
	'Style','radiobutton', ...
	'Tag','SelectAutoAxis');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'FontAngle','italic', ...
	'FontName','Helvetica', ...
	'FontSize',14, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[21.75 327.75 78.75 15.75], ...
	'String','Axis Scale', ...
	'Style','text', ...
	'Tag','StaticText9');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[7.5 4.5 102 210], ...
	'Style','frame', ...
	'Tag','Frame4');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0 0 0], ...
	'Enable','inactive', ...
	'ForegroundColor',[0.501960784313725 1 0], ...
	'ListboxTop',0, ...
	'Position',[78 171 25.5 13.5], ...
	'Style','edit', ...
	'Tag','HeldVarValue');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0 0 0], ...
	'Enable','inactive', ...
	'ForegroundColor',[0.501960784313725 1 0], ...
	'ListboxTop',0, ...
	'Position',[12 171 48.75 13.5], ...
	'Style','edit', ...
	'Tag','HeldVarName');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[15.75 88.5 90.75 12.75], ...
	'String','Find/Update HwHH', ...
	'Style','checkbox', ...
	'Tag','FindHwHH');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0 0 0], ...
	'Enable','inactive', ...
	'ForegroundColor',[0.501960784313725 1 0], ...
	'ListboxTop',0, ...
	'Position',[59.25 117 45 14.25], ...
	'Style','edit', ...
	'Tag','HwHHBox');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Enable','inactive', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[11.25 110.25 31.5 11.25], ...
	'String','HwHH', ...
	'Style','text', ...
	'Tag','StaticText12');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Enable','inactive', ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[10.5 134.25 40.5 13.5], ...
	'String','Optimum', ...
	'Style','text', ...
	'Tag','StaticText12');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0 0 0], ...
	'Enable','inactive', ...
	'ForegroundColor',[0.501960784313725 1 0], ...
	'ListboxTop',0, ...
	'Position',[60 134.25 45 14.25], ...
	'Style','edit', ...
	'Tag','OptimumBox');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Enable','inactive', ...
	'ListboxTop',0, ...
	'Position',[81 149.25 24.75 9.75], ...
	'String','Next', ...
	'Style','text', ...
	'Tag','StaticText11');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Enable','inactive', ...
	'ListboxTop',0, ...
	'Position',[9 150 36.75 9.75], ...
	'String','Previous', ...
	'Style','text', ...
	'Tag','StaticText11');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Enable','inactive', ...
	'ListboxTop',0, ...
	'Position',[12 159 92.25 12], ...
	'Style','slider', ...
	'Tag','ChooseHeldVarValue');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Enable','inactive', ...
	'ListboxTop',0, ...
	'Position',[63.75 172.5 11.25 11.25], ...
	'String','=', ...
	'Style','text', ...
	'Tag','StaticText10');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[12 185.25 92.25 12], ...
	'String','Start/Refresh', ...
	'Tag','StartRefresh');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'FontAngle','italic', ...
	'FontName','Helvetica', ...
	'FontSize',14, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[10.5 197.25 94.5 16.5], ...
	'String','Tuning Curves', ...
	'Style','text', ...
	'Tag','StaticText13');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[7.5 216.75 101.25 34.5], ...
	'Style','frame', ...
	'Tag','Frame5');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'FontAngle','italic', ...
	'FontName','Helvetica', ...
	'FontSize',14, ...
	'FontWeight','bold', ...
	'ListboxTop',0, ...
	'Position',[21 235.5 73.5 14.25], ...
	'String','Noise', ...
	'Style','text', ...
	'Tag','StaticText14');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[1 1 1], ...
	'Enable','off', ...
	'ListboxTop',0, ...
	'Position',[78 220.5 28.5 15.75], ...
	'Style','edit', ...
	'Tag','UserNoiseValue');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback',mat6, ...
	'ListboxTop',0, ...
	'Position',[42 223.5 36 9.75], ...
	'String','Other', ...
	'Style','radiobutton', ...
	'Tag','ChooseUserNoise');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback',mat7, ...
	'ListboxTop',0, ...
	'Position',[9 224.25 34.5 10.5], ...
	'String','Zero', ...
	'Style','radiobutton', ...
	'Tag','ChooseZeroNoise');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[58.5 46.5 39.75 16.5], ...
	'String','Save Plot', ...
	'Tag','SavePlotButton');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[15 47.25 44.25 15.75], ...
	'String',' ', ...
	'Style','popupmenu', ...
	'Tag','PlotFileTypeMenu', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0 0 0], ...
	'Enable','inactive', ...
	'ForegroundColor',[0.501960784313725 1 0], ...
	'ListboxTop',0, ...
	'Position',[59.25 102 45 14.25], ...
	'Style','edit', ...
	'Tag','userHwHHBox');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'FontWeight','light', ...
	'ListboxTop',0, ...
	'Position',[27 120 32.25 10.5], ...
	'String','Locked', ...
	'Style','text', ...
	'Tag','StaticText15');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'FontWeight','light', ...
	'ListboxTop',0, ...
	'Position',[36.75 102.75 21 10.5], ...
	'String','User', ...
	'Style','text', ...
	'Tag','StaticText16');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[15.75 78.75 85.5 9.75], ...
	'String','Construction Lines', ...
	'Style','checkbox', ...
	'Tag','ShowConstructLines');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[15.75 66.75 86.25 11.25], ...
	'String','Show Raw Line', ...
	'Style','checkbox', ...
	'Tag','ShowRawLine');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback',mat8, ...
	'ListboxTop',0, ...
	'Position',[14.25 36 46.5 10.5], ...
	'String','Current', ...
	'Style','radiobutton', ...
	'Tag','SaveCurr');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'Callback',mat9, ...
	'ListboxTop',0, ...
	'Position',[57 34.5 46.5 12], ...
	'String','All Plots', ...
	'Style','radiobutton', ...
	'Tag','SaveAll');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[41.25 6.75 25.5 15], ...
	'String','Save', ...
	'Tag','SaveData');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'ListboxTop',0, ...
	'Position',[68.25 9 33 13.5], ...
	'String',' ', ...
	'Style','popupmenu', ...
	'Tag','ChooseDataType', ...
	'Value',1);
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'FontWeight','demi', ...
	'ListboxTop',0, ...
	'Position',[31.5 24.75 56.25 8.25], ...
	'String','HwHH DATA', ...
	'Style','text', ...
	'Tag','StaticText17');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[14.25 6.75 25.5 14.25], ...
	'String','Load', ...
	'Tag','LoadData');
h1 = uicontrol('Parent',h0, ...
	'Units','points', ...
	'BackgroundColor',[0.752941176470588 0.752941176470588 0.752941176470588], ...
	'ListboxTop',0, ...
	'Position',[14.25 481.5 88.5 12.75], ...
	'String','Use Diagonal Data', ...
	'Style','checkbox', ...
	'Tag','DiagonalCheckBox');
if nargout > 0, fig = h0; end