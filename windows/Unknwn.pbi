﻿;Unknwn.pbi

; #IID_IUnknown$ = "{00000000-0000-0000-C000-000000000046}"

CompilerIf Not Defined(IID_IUnknown, #PB_Label)
  DataSection
    IID_IUnknown:
    Data.l $00000000
    Data.w $0000, $0000
    Data.b $C0, $00, $00, $00, $00, $00, $00, $46
  EndDataSection
CompilerEndIf

Structure IUnknownVtbl
	QueryInterface.i
	AddRef.i
	Release.i
EndStructure
