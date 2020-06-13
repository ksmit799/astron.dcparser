%module(package="dcparser", directors="1") dcparser

%{

// Core dcParser headers.
#include "dcbase.h"
#include "dcFile.h"
#include "dcDeclaration.h"
#include "dcPackerInterface.h"
#include "dcPacker.h"
#include "dcClass.h"
#include "dcField.h"
#include "dcParameter.h"
#include "dcClassParameter.h"
#include "dcAtomicField.h"

%}

%feature("director") DCPackerInterface;
%feature("director") DCField;
%feature("director") DCParameter;
%feature("director") DCClassParameter;
%feature("director") DCAtomicField;

// C libraries.
%include "carrays.i"
%include "stdint.i"

// STD libraries.
%include "std_string.i" 
%include "std_vector.i"

%array_functions(char, charArray)

namespace std {
	%template(VectorUchar) vector<unsigned char>;
}

// Core dcParser headers.
%include "dcbase.h"
%include "dcFile.h"
%include "dcDeclaration.h"
%include "dcPackerInterface.h"
%include "dcPacker.h"
%include "dcClass.h"
%include "dcField.h"
%include "dcParameter.h"
%include "dcClassParameter.h"
%include "dcAtomicField.h"
