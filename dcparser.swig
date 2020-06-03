%module(package="dcparser", directors="1") dcparser

%{

// Core dcParser headers.
#include "dcbase.h"
#include "dcFile.h"

%}

// STD libraries.
%include "std_string.i" 

// Core dcParser headers.
%include "dcbase.h"
%include "dcFile.h"
