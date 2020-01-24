//
// DarkDLLCore Source Code Example
//

// Lets the compiler know DARKDLL Functions are to be seen by DarkBASIC
#define DARKDLL __declspec(dllexport)

// Standard Includes
#include "windows.h"
#include "stdio.h"

// Use this function to handle loading and freeing of the DLL
BOOL WINAPI DllMain( HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpvReserved)
{
    switch (fdwReason)
	{
		case DLL_PROCESS_ATTACH:
			// When DLL Is loaded - prompt
			MessageBox(NULL, "DLL_PROCESS_ATTACH", "DllMain", MB_OK);
			break;

		case DLL_PROCESS_DETACH:
			// When DLL Is released - prompt
			MessageBox(NULL, "DLL_PROCESS_DETACH", "DllMain", MB_OK);
			break;
    }
    return TRUE;
}

// No Data In, No Data Out
DARKDLL void SimpleFunction(void)
{
	// Prompt
	MessageBox(NULL, "Hello World", "Simple Function", MB_OK);
}

// DataIn: INTEGER  DataOut: INTEGER
DARKDLL DWORD FunctionReturnInteger(int DataIn)
{
	// Prompt
	char str[256];
	sprintf(str,"Function has received the Integer value of %d", DataIn);
	MessageBox(NULL, str, "FunctionReturnInteger", MB_OK);

	// Prepare an INTEGER and return as a DWORD
	int DataOut = 11;
	return *((DWORD*)&DataOut);
}

// DataIn: FLOAT  DataOut: FLOAT
DARKDLL DWORD FunctionReturnFloat(float DataIn)
{
	// Prompt
	char str[256];
	sprintf(str,"Function has received the Float value of %f", DataIn);
	MessageBox(NULL, str, "FunctionReturnFloat", MB_OK);

	// Prepare a FLOAT and return as a DWORD
	float DataOut = 22.2f;
	return *((DWORD*)&DataOut);
}

// To export a string from a DLL, the string must be global
static char gGlobalDataString[256];

// DataIn: STRING  DataOut: STRING
DARKDLL DWORD FunctionReturnString(char* DataIn)
{
	// Prompt
	char str[256];
	sprintf(str,"Function has received the String value of %s", DataIn);
	MessageBox(NULL, str, "FunctionReturnString", MB_OK);

	// Prepare a STRING and return as a DWORD POINTER
	strcpy(gGlobalDataString, "HELLO WORLD!!");
	return (DWORD)(DWORD*)gGlobalDataString;
}

