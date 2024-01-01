{smcl}
{* *! version 0.1  31dec2023}{...}
{viewerjumpto "Syntax" "tablbl##syntax"}{...}
{viewerjumpto "Description" "tablbl##description"}{...}
{viewerjumpto "Options" "tablbl##options"}{...}
{viewerjumpto "Examples" "tablbl##examples"}{...}

{title:Title}

{phang}
{bf:tablbl} {hline 2} Tabulate values showing both values and user-defined value labels


{marker syntax}{title:Syntax}

{p 8 17 2}
{cmd:tablbl}
{it:{help varname:varname1}} [{it:{help varname:varname2}}]
{ifin}
[{it:{help tabulate twoway##weight:weight}}]
[{cmd:,} {it:options}]

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opt mask(str)}}mask for formatting labels; default mask is "#."{p_end}
{synopt:{it:{help tabulate}}}tabulate options

{marker description}{...}
{title:Description}

{pstd}
{cmd:tablbl} replicates Stata's tabulate command, but includes both the 
variable values and the user-defined value labels in the output.


{marker options}{...}
{title:Options}

{pstd}
{opt mask(str)} specifies a mask for formatting the numeric labels. In the 
mask, # is replaced by the numeric label. The default mask is "#. " 
so that numeric value 3 is shown as "3. ". Spaces are relevant. For the mask 
"[#] ", numeric value 3 would be shown as "[3] ".


{marker examples}{...}
{title:Examples}

{cmd:. sysuse auto2}
{cmd:. tablbl rep78 foreign}
{cmd:. tablbl rep78 foreign, mask("[#] ")}


{marker author}{...}
{title:Author} 

{p 4 4 2}Thomas Goldring{break}
thomasgoldring@gmail.com


{marker acknowledgements}{...}
{title:Acknowledgements} 

{p 4 4 2}This command includes substantial portions of code from {cmd:labvalclone}, 
by Nicholas J. Cox (n.j.cox@durham.ac.uk). It also includes code from a post
by Nicholas J. Cox on Statalist, available at {browse "https://www.stata.com/statalist/archive/2007-03/msg00601.html"}{p_end}
