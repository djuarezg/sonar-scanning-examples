Û
S/home/daniel.juarez/Development/dotnetcore-docs-hello-world/Pages/Privacy.cshtml.cs
	namespace 	
dotnetcoresample
 
. 
Pages  
;  !
public 
class 
PrivacyModel 
: 
	PageModel %
{ 
private 
readonly 
ILogger 
< 
PrivacyModel )
>) *
_logger+ 2
;2 3
public

 

PrivacyModel

 
(

 
ILogger

 
<

  
PrivacyModel

  ,
>

, -
logger

. 4
)

4 5
{ 
_logger 
= 
logger 
; 
} 
public 

void 
OnGet 
( 
) 
{ 
} 
} »
F/home/daniel.juarez/Development/dotnetcore-docs-hello-world/Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddRazorPages 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if		 
(		 
!		 
app		 
.		 	
Environment			 
.		 
IsDevelopment		 "
(		" #
)		# $
)		$ %
{

 
app 
. 
UseExceptionHandler 
( 
$str $
)$ %
;% &
app 
. 
UseHsts 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseStaticFiles 
( 
) 
; 
app 
. 

UseRouting 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapRazorPages 
( 
) 
; 
app 
. 
Run 
( 
) 	
;	 
Ê
Q/home/daniel.juarez/Development/dotnetcore-docs-hello-world/Pages/Index.cshtml.cs
	namespace 	
dotnetcoresample
 
. 
Pages  
;  !
public 
class 

IndexModel 
: 
	PageModel #
{ 
public

 

string

 
	OSVersion

 
{

 
get

 !
{

" #
return

$ *
RuntimeInformation

+ =
.

= >
OSDescription

> K
;

K L
}

M N
}

P Q
private 
readonly 
ILogger 
< 

IndexModel '
>' (
_logger) 0
;0 1
public 


IndexModel 
( 
ILogger 
< 

IndexModel (
>( )
logger* 0
)0 1
{ 
_logger 
= 
logger 
; 
} 
public 

void 
OnGet 
( 
) 
{ 
} 
} Ú
Q/home/daniel.juarez/Development/dotnetcore-docs-hello-world/Pages/Error.cshtml.cs
	namespace 	
dotnetcoresample
 
. 
Pages  
;  !
[ 
ResponseCache 
( 
Duration 
= 
$num 
, 
Location %
=& '!
ResponseCacheLocation( =
.= >
None> B
,B C
NoStoreD K
=L M
trueN R
)R S
]S T
[ "
IgnoreAntiforgeryToken 
] 
public		 
class		 

ErrorModel		 
:		 
	PageModel		 #
{

 
public 

string 
? 
	RequestId 
{ 
get "
;" #
set$ '
;' (
}) *
public 

bool 
ShowRequestId 
=>  
!! "
string" (
.( )
IsNullOrEmpty) 6
(6 7
	RequestId7 @
)@ A
;A B
private 
readonly 
ILogger 
< 

ErrorModel '
>' (
_logger) 0
;0 1
public 


ErrorModel 
( 
ILogger 
< 

ErrorModel (
>( )
logger* 0
)0 1
{ 
_logger 
= 
logger 
; 
} 
public 

void 
OnGet 
( 
) 
{ 
	RequestId 
= 
Activity 
. 
Current $
?$ %
.% &
Id& (
??) +
HttpContext, 7
.7 8
TraceIdentifier8 G
;G H
} 
} 