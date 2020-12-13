;Generated by PB Type Library Importer Version: 1.0

;- ICoreWebView2AcceleratorKeyPressedEventArgs

DataSection
	IID_ICoreWebView2AcceleratorKeyPressedEventArgs:
	Data.l $9F760F8A
	Data.w $FB79, $42BE
	Data.b $99, $90, $7B, $56, $90, $F, $A9, $C7
EndDataSection

Interface ICoreWebView2AcceleratorKeyPressedEventArgs Extends IUnknown
	get_KeyEventKind(KeyEventKind.i)
	get_VirtualKey(VirtualKey.i)
	get_KeyEventLParam(lParam.i)
	get_PhysicalKeyStatus(PhysicalKeyStatus.i)
	get_Handled(Handled.i)
	put_Handled(Handled.l)
EndInterface 

;- Enum COREWEBVIEW2_KEY_EVENT_KIND
#COREWEBVIEW2_KEY_EVENT_KIND_KEY_DOWN = 0
#COREWEBVIEW2_KEY_EVENT_KIND_KEY_UP = 1
#COREWEBVIEW2_KEY_EVENT_KIND_SYSTEM_KEY_DOWN = 2
#COREWEBVIEW2_KEY_EVENT_KIND_SYSTEM_KEY_UP = 3

;- COREWEBVIEW2_PHYSICAL_KEY_STATUS
Structure COREWEBVIEW2_PHYSICAL_KEY_STATUS Align #PB_Structure_AlignC
	RepeatCount.l
	ScanCode.l
	IsExtendedKey.l
	IsMenuKeyDown.l
	WasKeyDown.l
	IsKeyReleased.l
EndStructure

;- ICoreWebView2AcceleratorKeyPressedEventHandler

DataSection
	IID_ICoreWebView2AcceleratorKeyPressedEventHandler:
	Data.l $B29C7E28
	Data.w $FA79, $41A8
	Data.b $8E, $44, $65, $81, $1C, $76, $DC, $B2
EndDataSection

Interface ICoreWebView2AcceleratorKeyPressedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2Controller

DataSection
	IID_ICoreWebView2Controller:
	Data.l $4D00C0D1
	Data.w $9434, $4EB6
	Data.b $80, $78, $86, $97, $A5, $60, $33, $4F
EndDataSection

Interface ICoreWebView2Controller Extends IUnknown
	get_IsVisible(IsVisible.i)
	put_IsVisible(IsVisible.l)
	get_Bounds(Bounds.i)
	CompilerIf #PB_Compiler_Processor = #PB_Processor_x64
		put_Bounds(Bounds.i)
	CompilerElse
		put_Bounds(Bounds_tagRECT_left.l, Bounds_tagRECT_top.l, Bounds_tagRECT_right.l, Bounds_tagRECT_bottom.l)
	CompilerEndIf
	get_ZoomFactor(ZoomFactor.i)
	put_ZoomFactor(ZoomFactor.d)
	add_ZoomFactorChanged(eventHandler.i, token.i)
	remove_ZoomFactorChanged(token.q)
	CompilerIf #PB_Compiler_Processor = #PB_Processor_x64
		SetBoundsAndZoomFactor(Bounds.i, ZoomFactor.d)
	CompilerElse
		SetBoundsAndZoomFactor(Bounds_tagRECT_left.l, Bounds_tagRECT_top.l, Bounds_tagRECT_right.l, Bounds_tagRECT_bottom.l, ZoomFactor.d)
	CompilerEndIf
	MoveFocus(reason.l)
	add_MoveFocusRequested(eventHandler.i, token.i)
	remove_MoveFocusRequested(token.q)
	add_GotFocus(eventHandler.i, token.i)
	remove_GotFocus(token.q)
	add_LostFocus(eventHandler.i, token.i)
	remove_LostFocus(token.q)
	add_AcceleratorKeyPressed(eventHandler.i, token.i)
	remove_AcceleratorKeyPressed(token.q)
	get_ParentWindow(ParentWindow.i)
	put_ParentWindow(ParentWindow.i)
	NotifyParentWindowPositionChanged()
	Close()
	get_CoreWebView2(CoreWebView2.i)
EndInterface 

;- ICoreWebView2ZoomFactorChangedEventHandler

DataSection
	IID_ICoreWebView2ZoomFactorChangedEventHandler:
	Data.l $B52D71D6
	Data.w $C4DF, $4543
	Data.b $A9, $C, $64, $A3, $E6, $F, $38, $CB
EndDataSection

Interface ICoreWebView2ZoomFactorChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- EventRegistrationToken
Structure EventRegistrationToken Align #PB_Structure_AlignC
	value.q
EndStructure

;- Enum COREWEBVIEW2_MOVE_FOCUS_REASON
#COREWEBVIEW2_MOVE_FOCUS_REASON_PROGRAMMATIC = 0
#COREWEBVIEW2_MOVE_FOCUS_REASON_NEXT = 1
#COREWEBVIEW2_MOVE_FOCUS_REASON_PREVIOUS = 2

;- ICoreWebView2MoveFocusRequestedEventHandler

DataSection
	IID_ICoreWebView2MoveFocusRequestedEventHandler:
	Data.l $69035451
	Data.w $6DC7, $4CB8
	Data.b $9B, $CE, $B2, $BD, $70, $AD, $28, $9F
EndDataSection

Interface ICoreWebView2MoveFocusRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2MoveFocusRequestedEventArgs

DataSection
	IID_ICoreWebView2MoveFocusRequestedEventArgs:
	Data.l $2D6AA13B
	Data.w $3839, $4A15
	Data.b $92, $FC, $D8, $8B, $3C, $D, $9C, $9D
EndDataSection

Interface ICoreWebView2MoveFocusRequestedEventArgs Extends IUnknown
	get_reason(reason.i)
	get_Handled(value.i)
	put_Handled(value.l)
EndInterface 

;- ICoreWebView2FocusChangedEventHandler

DataSection
	IID_ICoreWebView2FocusChangedEventHandler:
	Data.l $5EA24BD
	Data.w $6452, $4926
	Data.b $90, $14, $4B, $82, $B4, $98, $13, $5D
EndDataSection

Interface ICoreWebView2FocusChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2

DataSection
	IID_ICoreWebView2:
	Data.l $76ECEACB
	Data.w $462, $4D94
	Data.b $AC, $83, $42, $3A, $67, $93, $77, $5E
EndDataSection

Interface ICoreWebView2 Extends IUnknown
	get_Settings(Settings.i)
	get_Source(uri.i)
	Navigate(uri.s)
	NavigateToString(htmlContent.s)
	add_NavigationStarting(eventHandler.i, token.i)
	remove_NavigationStarting(token.q)
	add_ContentLoading(eventHandler.i, token.i)
	remove_ContentLoading(token.q)
	add_SourceChanged(eventHandler.i, token.i)
	remove_SourceChanged(token.q)
	add_HistoryChanged(eventHandler.i, token.i)
	remove_HistoryChanged(token.q)
	add_NavigationCompleted(eventHandler.i, token.i)
	remove_NavigationCompleted(token.q)
	add_FrameNavigationStarting(eventHandler.i, token.i)
	remove_FrameNavigationStarting(token.q)
	add_FrameNavigationCompleted(eventHandler.i, token.i)
	remove_FrameNavigationCompleted(token.q)
	add_ScriptDialogOpening(eventHandler.i, token.i)
	remove_ScriptDialogOpening(token.q)
	add_PermissionRequested(eventHandler.i, token.i)
	remove_PermissionRequested(token.q)
	add_ProcessFailed(eventHandler.i, token.i)
	remove_ProcessFailed(token.q)
	AddScriptToExecuteOnDocumentCreated(javaScript.s, handler.i)
	RemoveScriptToExecuteOnDocumentCreated(id.s)
	ExecuteScript(javaScript.s, handler.i)
	CapturePreview(imageFormat.l, imageStream.i, handler.i)
	Reload()
	PostWebMessageAsJson(webMessageAsJson.s)
	PostWebMessageAsString(webMessageAsString.s)
	add_WebMessageReceived(handler.i, token.i)
	remove_WebMessageReceived(token.q)
	CallDevToolsProtocolMethod(methodName.s, parametersAsJson.s, handler.i)
	get_BrowserProcessId(value.i)
	get_CanGoBack(CanGoBack.i)
	get_CanGoForward(CanGoForward.i)
	GoBack()
	GoForward()
	GetDevToolsProtocolEventReceiver(eventName.s, receiver.i)
	Stop()
	add_NewWindowRequested(eventHandler.i, token.i)
	remove_NewWindowRequested(token.q)
	add_DocumentTitleChanged(eventHandler.i, token.i)
	remove_DocumentTitleChanged(token.q)
	get_DocumentTitle(title.i)
	AddHostObjectToScript(name.s, object.i)
	RemoveHostObjectFromScript(name.s)
	OpenDevToolsWindow()
	add_ContainsFullScreenElementChanged(eventHandler.i, token.i)
	remove_ContainsFullScreenElementChanged(token.q)
	get_ContainsFullScreenElement(ContainsFullScreenElement.i)
	add_WebResourceRequested(eventHandler.i, token.i)
	remove_WebResourceRequested(token.q)
	AddWebResourceRequestedFilter(uri.s, ResourceContext.l)
	RemoveWebResourceRequestedFilter(uri.s, ResourceContext.l)
	add_WindowCloseRequested(eventHandler.i, token.i)
	remove_WindowCloseRequested(token.q)
EndInterface 

;- ICoreWebView2Settings

DataSection
	IID_ICoreWebView2Settings:
	Data.l $E562E4F0
	Data.w $D7FA, $43AC
	Data.b $8D, $71, $C0, $51, $50, $49, $9F, $0
EndDataSection

Interface ICoreWebView2Settings Extends IUnknown
	get_IsScriptEnabled(IsScriptEnabled.i)
	put_IsScriptEnabled(IsScriptEnabled.l)
	get_IsWebMessageEnabled(IsWebMessageEnabled.i)
	put_IsWebMessageEnabled(IsWebMessageEnabled.l)
	get_AreDefaultScriptDialogsEnabled(AreDefaultScriptDialogsEnabled.i)
	put_AreDefaultScriptDialogsEnabled(AreDefaultScriptDialogsEnabled.l)
	get_IsStatusBarEnabled(IsStatusBarEnabled.i)
	put_IsStatusBarEnabled(IsStatusBarEnabled.l)
	get_AreDevToolsEnabled(AreDevToolsEnabled.i)
	put_AreDevToolsEnabled(AreDevToolsEnabled.l)
	get_AreDefaultContextMenusEnabled(enabled.i)
	put_AreDefaultContextMenusEnabled(enabled.l)
	get_AreHostObjectsAllowed(allowed.i)
	put_AreHostObjectsAllowed(allowed.l)
	get_IsZoomControlEnabled(enabled.i)
	put_IsZoomControlEnabled(enabled.l)
	get_IsBuiltInErrorPageEnabled(enabled.i)
	put_IsBuiltInErrorPageEnabled(enabled.l)
EndInterface 

;- ICoreWebView2NavigationStartingEventHandler

DataSection
	IID_ICoreWebView2NavigationStartingEventHandler:
	Data.l $9ADBE429
	Data.w $F36D, $432B
	Data.b $9D, $DC, $F8, $88, $1F, $BD, $76, $E3
EndDataSection

Interface ICoreWebView2NavigationStartingEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2NavigationStartingEventArgs

DataSection
	IID_ICoreWebView2NavigationStartingEventArgs:
	Data.l $5B495469
	Data.w $E119, $438A
	Data.b $9B, $18, $76, $4, $F2, $5F, $2E, $49
EndDataSection

Interface ICoreWebView2NavigationStartingEventArgs Extends IUnknown
	get_uri(uri.i)
	get_IsUserInitiated(IsUserInitiated.i)
	get_IsRedirected(IsRedirected.i)
	get_RequestHeaders(RequestHeaders.i)
	get_Cancel(Cancel.i)
	put_Cancel(Cancel.l)
	get_NavigationId(NavigationId.i)
EndInterface 

;- ICoreWebView2HttpRequestHeaders

DataSection
	IID_ICoreWebView2HttpRequestHeaders:
	Data.l $E86CAC0E
	Data.w $5523, $465C
	Data.b $B5, $36, $8F, $B9, $FC, $8C, $8C, $60
EndDataSection

Interface ICoreWebView2HttpRequestHeaders Extends IUnknown
	GetHeader(name.s, value.i)
	GetHeaders(name.s, iterator.i)
	Contains(name.s, Contains.i)
	SetHeader(name.s, value.s)
	RemoveHeader(name.s)
	GetIterator(iterator.i)
EndInterface 

;- ICoreWebView2HttpHeadersCollectionIterator

DataSection
	IID_ICoreWebView2HttpHeadersCollectionIterator:
	Data.l $702FC30
	Data.w $F43B, $47BB
	Data.b $AB, $52, $A4, $2C, $B5, $52, $AD, $9F
EndDataSection

Interface ICoreWebView2HttpHeadersCollectionIterator Extends IUnknown
	GetCurrentHeader(name.i, value.i)
	get_HasCurrentHeader(hasCurrent.i)
	MoveNext(hasNext.i)
EndInterface 

;- ICoreWebView2ContentLoadingEventHandler

DataSection
	IID_ICoreWebView2ContentLoadingEventHandler:
	Data.l $364471E7
	Data.w $F2BE, $4910
	Data.b $BD, $BA, $D7, $20, $77, $D5, $1C, $4B
EndDataSection

Interface ICoreWebView2ContentLoadingEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2ContentLoadingEventArgs

DataSection
	IID_ICoreWebView2ContentLoadingEventArgs:
	Data.l $C8A1275
	Data.w $9B6B, $4901
	Data.b $87, $AD, $70, $DF, $25, $BA, $FA, $6E
EndDataSection

Interface ICoreWebView2ContentLoadingEventArgs Extends IUnknown
	get_IsErrorPage(IsErrorPage.i)
	get_NavigationId(NavigationId.i)
EndInterface 

;- ICoreWebView2SourceChangedEventHandler

DataSection
	IID_ICoreWebView2SourceChangedEventHandler:
	Data.l $3C067F9F
	Data.w $5388, $4772
	Data.b $8B, $48, $79, $F7, $EF, $1A, $B3, $7C
EndDataSection

Interface ICoreWebView2SourceChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2SourceChangedEventArgs

DataSection
	IID_ICoreWebView2SourceChangedEventArgs:
	Data.l $31E0E545
	Data.w $1DBA, $4266
	Data.b $89, $14, $F6, $38, $48, $A1, $F7, $D7
EndDataSection

Interface ICoreWebView2SourceChangedEventArgs Extends IUnknown
	get_IsNewDocument(IsNewDocument.i)
EndInterface 

;- ICoreWebView2HistoryChangedEventHandler

DataSection
	IID_ICoreWebView2HistoryChangedEventHandler:
	Data.l $C79A420C
	Data.w $EFD9, $4058
	Data.b $92, $95, $3E, $8B, $4B, $CA, $B6, $45
EndDataSection

Interface ICoreWebView2HistoryChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2NavigationCompletedEventHandler

DataSection
	IID_ICoreWebView2NavigationCompletedEventHandler:
	Data.l $D33A35BF
	Data.w $1C49, $4F98
	Data.b $93, $AB, $0, $6E, $5, $33, $FE, $1C
EndDataSection

Interface ICoreWebView2NavigationCompletedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2NavigationCompletedEventArgs

DataSection
	IID_ICoreWebView2NavigationCompletedEventArgs:
	Data.l $30D68B7D
	Data.w $20D9, $4752
	Data.b $A9, $CA, $EC, $84, $48, $FB, $B5, $C1
EndDataSection

Interface ICoreWebView2NavigationCompletedEventArgs Extends IUnknown
	get_IsSuccess(IsSuccess.i)
	get_WebErrorStatus(WebErrorStatus.i)
	get_NavigationId(NavigationId.i)
EndInterface 

;- Enum COREWEBVIEW2_WEB_ERROR_STATUS
#COREWEBVIEW2_WEB_ERROR_STATUS_UNKNOWN = 0
#COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_COMMON_NAME_IS_INCORRECT = 1
#COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_EXPIRED = 2
#COREWEBVIEW2_WEB_ERROR_STATUS_CLIENT_CERTIFICATE_CONTAINS_ERRORS = 3
#COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_REVOKED = 4
#COREWEBVIEW2_WEB_ERROR_STATUS_CERTIFICATE_IS_INVALID = 5
#COREWEBVIEW2_WEB_ERROR_STATUS_SERVER_UNREACHABLE = 6
#COREWEBVIEW2_WEB_ERROR_STATUS_TIMEOUT = 7
#COREWEBVIEW2_WEB_ERROR_STATUS_ERROR_HTTP_INVALID_SERVER_RESPONSE = 8
#COREWEBVIEW2_WEB_ERROR_STATUS_CONNECTION_ABORTED = 9
#COREWEBVIEW2_WEB_ERROR_STATUS_CONNECTION_RESET = 10
#COREWEBVIEW2_WEB_ERROR_STATUS_DISCONNECTED = 11
#COREWEBVIEW2_WEB_ERROR_STATUS_CANNOT_CONNECT = 12
#COREWEBVIEW2_WEB_ERROR_STATUS_HOST_NAME_NOT_RESOLVED = 13
#COREWEBVIEW2_WEB_ERROR_STATUS_OPERATION_CANCELED = 14
#COREWEBVIEW2_WEB_ERROR_STATUS_REDIRECT_FAILED = 15
#COREWEBVIEW2_WEB_ERROR_STATUS_UNEXPECTED_ERROR = 16

;- ICoreWebView2ScriptDialogOpeningEventHandler

DataSection
	IID_ICoreWebView2ScriptDialogOpeningEventHandler:
	Data.l $EF381BF9
	Data.w $AFA8, $4E37
	Data.b $91, $C4, $8A, $C4, $85, $24, $BD, $FB
EndDataSection

Interface ICoreWebView2ScriptDialogOpeningEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2ScriptDialogOpeningEventArgs

DataSection
	IID_ICoreWebView2ScriptDialogOpeningEventArgs:
	Data.l $7390BB70
	Data.w $ABE0, $4843
	Data.b $95, $29, $F1, $43, $B3, $1B, $3, $D6
EndDataSection

Interface ICoreWebView2ScriptDialogOpeningEventArgs Extends IUnknown
	get_uri(uri.i)
	get_Kind(Kind.i)
	get_Message(Message.i)
	Accept()
	get_DefaultText(DefaultText.i)
	get_ResultText(ResultText.i)
	put_ResultText(ResultText.s)
	GetDeferral(deferral.i)
EndInterface 

;- Enum COREWEBVIEW2_SCRIPT_DIALOG_KIND
#COREWEBVIEW2_SCRIPT_DIALOG_KIND_ALERT = 0
#COREWEBVIEW2_SCRIPT_DIALOG_KIND_CONFIRM = 1
#COREWEBVIEW2_SCRIPT_DIALOG_KIND_PROMPT = 2
#COREWEBVIEW2_SCRIPT_DIALOG_KIND_BEFOREUNLOAD = 3

;- ICoreWebView2Deferral

DataSection
	IID_ICoreWebView2Deferral:
	Data.l $C10E7F7B
	Data.w $B585, $46F0
	Data.b $A6, $23, $8B, $EF, $BF, $3E, $4E, $E0
EndDataSection

Interface ICoreWebView2Deferral Extends IUnknown
	Complete()
EndInterface 

;- ICoreWebView2PermissionRequestedEventHandler

DataSection
	IID_ICoreWebView2PermissionRequestedEventHandler:
	Data.l $15E1C6A3
	Data.w $C72A, $4DF3
	Data.b $91, $D7, $D0, $97, $FB, $EC, $6B, $FD
EndDataSection

Interface ICoreWebView2PermissionRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2PermissionRequestedEventArgs

DataSection
	IID_ICoreWebView2PermissionRequestedEventArgs:
	Data.l $973AE2EF
	Data.w $FF18, $4894
	Data.b $8F, $B2, $3C, $75, $8F, $4, $68, $10
EndDataSection

Interface ICoreWebView2PermissionRequestedEventArgs Extends IUnknown
	get_uri(uri.i)
	get_PermissionKind(PermissionKind.i)
	get_IsUserInitiated(IsUserInitiated.i)
	get_State(State.i)
	put_State(State.l)
	GetDeferral(deferral.i)
EndInterface 

;- Enum COREWEBVIEW2_PERMISSION_KIND
#COREWEBVIEW2_PERMISSION_KIND_UNKNOWN_PERMISSION = 0
#COREWEBVIEW2_PERMISSION_KIND_MICROPHONE = 1
#COREWEBVIEW2_PERMISSION_KIND_CAMERA = 2
#COREWEBVIEW2_PERMISSION_KIND_GEOLOCATION = 3
#COREWEBVIEW2_PERMISSION_KIND_NOTIFICATIONS = 4
#COREWEBVIEW2_PERMISSION_KIND_OTHER_SENSORS = 5
#COREWEBVIEW2_PERMISSION_KIND_CLIPBOARD_READ = 6

;- Enum COREWEBVIEW2_PERMISSION_STATE
#COREWEBVIEW2_PERMISSION_STATE_DEFAULT = 0
#COREWEBVIEW2_PERMISSION_STATE_ALLOW = 1
#COREWEBVIEW2_PERMISSION_STATE_DENY = 2

;- ICoreWebView2ProcessFailedEventHandler

DataSection
	IID_ICoreWebView2ProcessFailedEventHandler:
	Data.l $79E0AEA4
	Data.w $990B, $42D9
	Data.b $AA, $1D, $F, $CC, $2E, $5B, $C7, $F1
EndDataSection

Interface ICoreWebView2ProcessFailedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2ProcessFailedEventArgs

DataSection
	IID_ICoreWebView2ProcessFailedEventArgs:
	Data.l $8155A9A4
	Data.w $1474, $4A86
	Data.b $8C, $AE, $15, $1B, $F, $A6, $B8, $CA
EndDataSection

Interface ICoreWebView2ProcessFailedEventArgs Extends IUnknown
	get_ProcessFailedKind(ProcessFailedKind.i)
EndInterface 

;- Enum COREWEBVIEW2_PROCESS_FAILED_KIND
#COREWEBVIEW2_PROCESS_FAILED_KIND_BROWSER_PROCESS_EXITED = 0
#COREWEBVIEW2_PROCESS_FAILED_KIND_RENDER_PROCESS_EXITED = 1
#COREWEBVIEW2_PROCESS_FAILED_KIND_RENDER_PROCESS_UNRESPONSIVE = 2

;- ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler

DataSection
	IID_ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler:
	Data.l $B99369F3
	Data.w $9B11, $47B5
	Data.b $BC, $6F, $8E, $78, $95, $FC, $EA, $17
EndDataSection

Interface ICoreWebView2AddScriptToExecuteOnDocumentCreatedCompletedHandler Extends IUnknown
	Invoke(errorCode.l, id.s)
EndInterface 

;- ICoreWebView2ExecuteScriptCompletedHandler

DataSection
	IID_ICoreWebView2ExecuteScriptCompletedHandler:
	Data.l $49511172
	Data.w $CC67, $4BCA
	Data.b $99, $23, $13, $71, $12, $F4, $C4, $CC
EndDataSection

Interface ICoreWebView2ExecuteScriptCompletedHandler Extends IUnknown
	Invoke(errorCode.l, resultObjectAsJson.s)
EndInterface 

;- Enum COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT
#COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT_PNG = 0
#COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT_JPEG = 1

;- _LARGE_INTEGER
Structure _LARGE_INTEGER Align #PB_Structure_AlignC
	QuadPart.q
EndStructure

;- ICoreWebView2CapturePreviewCompletedHandler

DataSection
	IID_ICoreWebView2CapturePreviewCompletedHandler:
	Data.l $697E05E9
	Data.w $3D8F, $45FA
	Data.b $96, $F4, $8F, $FE, $1E, $DE, $DA, $F5
EndDataSection

Interface ICoreWebView2CapturePreviewCompletedHandler Extends IUnknown
	Invoke(errorCode.l)
EndInterface 

;- ICoreWebView2WebMessageReceivedEventHandler

DataSection
	IID_ICoreWebView2WebMessageReceivedEventHandler:
	Data.l $57213F19
	Data.w $E6, $49FA
	Data.b $8E, $7, $89, $8E, $A0, $1E, $CB, $D2
EndDataSection

Interface ICoreWebView2WebMessageReceivedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2WebMessageReceivedEventArgs

DataSection
	IID_ICoreWebView2WebMessageReceivedEventArgs:
	Data.l $F99A40C
	Data.w $E962, $4207
	Data.b $9E, $92, $E3, $D5, $42, $EF, $F8, $49
EndDataSection

Interface ICoreWebView2WebMessageReceivedEventArgs Extends IUnknown
	get_Source(Source.i)
	get_webMessageAsJson(webMessageAsJson.i)
	TryGetWebMessageAsString(webMessageAsString.i)
EndInterface 

;- ICoreWebView2CallDevToolsProtocolMethodCompletedHandler

DataSection
	IID_ICoreWebView2CallDevToolsProtocolMethodCompletedHandler:
	Data.l $5C4889F0
	Data.w $5EF6, $4C5A
	Data.b $95, $2C, $D8, $F1, $B9, $2D, $5, $74
EndDataSection

Interface ICoreWebView2CallDevToolsProtocolMethodCompletedHandler Extends IUnknown
	Invoke(errorCode.l, returnObjectAsJson.s)
EndInterface 

;- ICoreWebView2DevToolsProtocolEventReceiver

DataSection
	IID_ICoreWebView2DevToolsProtocolEventReceiver:
	Data.l $B32CA51A
	Data.w $8371, $45E9
	Data.b $93, $17, $AF, $2, $1D, $8, $3, $67
EndDataSection

Interface ICoreWebView2DevToolsProtocolEventReceiver Extends IUnknown
	add_DevToolsProtocolEventReceived(handler.i, token.i)
	remove_DevToolsProtocolEventReceived(token.q)
EndInterface 

;- ICoreWebView2DevToolsProtocolEventReceivedEventHandler

DataSection
	IID_ICoreWebView2DevToolsProtocolEventReceivedEventHandler:
	Data.l $E2FDA4BE
	Data.w $5456, $406C
	Data.b $A2, $61, $3D, $45, $21, $38, $36, $2C
EndDataSection

Interface ICoreWebView2DevToolsProtocolEventReceivedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2DevToolsProtocolEventReceivedEventArgs

DataSection
	IID_ICoreWebView2DevToolsProtocolEventReceivedEventArgs:
	Data.l $653C2959
	Data.w $BB3A, $4377
	Data.b $86, $32, $B5, $8A, $DA, $4E, $66, $C4
EndDataSection

Interface ICoreWebView2DevToolsProtocolEventReceivedEventArgs Extends IUnknown
	get_ParameterObjectAsJson(ParameterObjectAsJson.i)
EndInterface 

;- ICoreWebView2NewWindowRequestedEventHandler

DataSection
	IID_ICoreWebView2NewWindowRequestedEventHandler:
	Data.l $D4C185FE
	Data.w $C81C, $4989
	Data.b $97, $AF, $2D, $3F, $A7, $AB, $56, $51
EndDataSection

Interface ICoreWebView2NewWindowRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2NewWindowRequestedEventArgs

DataSection
	IID_ICoreWebView2NewWindowRequestedEventArgs:
	Data.l $34ACB11C
	Data.w $FC37, $4418
	Data.b $91, $32, $F9, $C2, $1D, $1E, $AF, $B9
EndDataSection

Interface ICoreWebView2NewWindowRequestedEventArgs Extends IUnknown
	get_uri(uri.i)
	put_NewWindow(NewWindow.i)
	get_NewWindow(NewWindow.i)
	put_Handled(Handled.l)
	get_Handled(Handled.i)
	get_IsUserInitiated(IsUserInitiated.i)
	GetDeferral(deferral.i)
	get_WindowFeatures(value.i)
EndInterface 

;- ICoreWebView2WindowFeatures

DataSection
	IID_ICoreWebView2WindowFeatures:
	Data.l $5EAF559F
	Data.w $B46E, $4397
	Data.b $88, $60, $E4, $22, $F2, $87, $FF, $1E
EndDataSection

Interface ICoreWebView2WindowFeatures Extends IUnknown
	get_HasPosition(value.i)
	get_HasSize(value.i)
	get_left(value.i)
	get_top(value.i)
	get_Height(value.i)
	get_Width(value.i)
	get_ShouldDisplayMenuBar(value.i)
	get_ShouldDisplayStatus(value.i)
	get_ShouldDisplayToolbar(value.i)
	get_ShouldDisplayScrollBars(value.i)
EndInterface 

;- ICoreWebView2DocumentTitleChangedEventHandler

DataSection
	IID_ICoreWebView2DocumentTitleChangedEventHandler:
	Data.l $F5F2B923
	Data.w $953E, $4042
	Data.b $9F, $95, $F3, $A1, $18, $E1, $AF, $D4
EndDataSection

Interface ICoreWebView2DocumentTitleChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2ContainsFullScreenElementChangedEventHandler

DataSection
	IID_ICoreWebView2ContainsFullScreenElementChangedEventHandler:
	Data.l $E45D98B1
	Data.w $AFEF, $45BE
	Data.b $8B, $AF, $6C, $77, $28, $86, $7F, $73
EndDataSection

Interface ICoreWebView2ContainsFullScreenElementChangedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2WebResourceRequestedEventHandler

DataSection
	IID_ICoreWebView2WebResourceRequestedEventHandler:
	Data.l $AB00B74C
	Data.w $15F1, $4646
	Data.b $80, $E8, $E7, $63, $41, $D2, $5D, $71
EndDataSection

Interface ICoreWebView2WebResourceRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2WebResourceRequestedEventArgs

DataSection
	IID_ICoreWebView2WebResourceRequestedEventArgs:
	Data.l $453E667F
	Data.w $12C7, $49D4
	Data.b $BE, $6D, $DD, $BE, $79, $56, $F5, $7A
EndDataSection

Interface ICoreWebView2WebResourceRequestedEventArgs Extends IUnknown
	get_Request(Request.i)
	get_Response(Response.i)
	put_Response(Response.i)
	GetDeferral(deferral.i)
	get_ResourceContext(context.i)
EndInterface 

;- ICoreWebView2WebResourceRequest

DataSection
	IID_ICoreWebView2WebResourceRequest:
	Data.l $97055CD4
	Data.w $512C, $4264
	Data.b $8B, $5F, $E3, $F4, $46, $CE, $A6, $A5
EndDataSection

Interface ICoreWebView2WebResourceRequest Extends IUnknown
	get_uri(uri.i)
	put_uri(uri.s)
	get_Method(Method.i)
	put_Method(Method.s)
	get_Content(Content.i)
	put_Content(Content.i)
	get_Headers(Headers.i)
EndInterface 

;- ICoreWebView2WebResourceResponse

DataSection
	IID_ICoreWebView2WebResourceResponse:
	Data.l $AAFCC94F
	Data.w $FA27, $48FD
	Data.b $97, $DF, $83, $E, $F7, $5A, $AE, $C9
EndDataSection

Interface ICoreWebView2WebResourceResponse Extends IUnknown
	get_Content(Content.i)
	put_Content(Content.i)
	get_Headers(Headers.i)
	get_StatusCode(StatusCode.i)
	put_StatusCode(StatusCode.l)
	get_ReasonPhrase(ReasonPhrase.i)
	put_ReasonPhrase(ReasonPhrase.s)
EndInterface 

;- ICoreWebView2HttpResponseHeaders

DataSection
	IID_ICoreWebView2HttpResponseHeaders:
	Data.l $3C5FF5A
	Data.w $9B45, $4A88
	Data.b $88, $1C, $89, $A9, $F3, $28, $61, $9C
EndDataSection

Interface ICoreWebView2HttpResponseHeaders Extends IUnknown
	AppendHeader(name.s, value.s)
	Contains(name.s, Contains.i)
	GetHeader(name.s, value.i)
	GetHeaders(name.s, iterator.i)
	GetIterator(iterator.i)
EndInterface 

;- Enum COREWEBVIEW2_WEB_RESOURCE_CONTEXT
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_ALL = 0
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_DOCUMENT = 1
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_STYLESHEET = 2
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_IMAGE = 3
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_MEDIA = 4
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_FONT = 5
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_SCRIPT = 6
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_XML_HTTP_REQUEST = 7
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_FETCH = 8
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_TEXT_TRACK = 9
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_EVENT_SOURCE = 10
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_WEBSOCKET = 11
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_MANIFEST = 12
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_SIGNED_EXCHANGE = 13
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_PING = 14
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_CSP_VIOLATION_REPORT = 15
#COREWEBVIEW2_WEB_RESOURCE_CONTEXT_OTHER = 16

;- ICoreWebView2WindowCloseRequestedEventHandler

DataSection
	IID_ICoreWebView2WindowCloseRequestedEventHandler:
	Data.l $5C19E9E0
	Data.w $92F, $486B
	Data.b $AF, $FA, $CA, $82, $31, $91, $30, $39
EndDataSection

Interface ICoreWebView2WindowCloseRequestedEventHandler Extends IUnknown
	Invoke(sender.i, args.i)
EndInterface 

;- ICoreWebView2CreateCoreWebView2ControllerCompletedHandler

DataSection
	IID_ICoreWebView2CreateCoreWebView2ControllerCompletedHandler:
	Data.l $6C4819F3
	Data.w $C9B7, $4260
	Data.b $81, $27, $C9, $F5, $BD, $E7, $F6, $8C
EndDataSection

Interface ICoreWebView2CreateCoreWebView2ControllerCompletedHandler Extends IUnknown
	Invoke(errorCode.l, createdController.i)
EndInterface 

;- ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler

DataSection
	IID_ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler:
	Data.l $4E8A3389
	Data.w $C9D8, $4BD2
	Data.b $B6, $B5, $12, $4F, $EE, $6C, $C1, $4D
EndDataSection

Interface ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler Extends IUnknown
	Invoke(errorCode.l, createdEnvironment.i)
EndInterface 

;- ICoreWebView2Environment

DataSection
	IID_ICoreWebView2Environment:
	Data.l $B96D755E
	Data.w $319, $4E92
	Data.b $A2, $96, $23, $43, $6F, $46, $A1, $FC
EndDataSection

Interface ICoreWebView2Environment Extends IUnknown
	CreateCoreWebView2Controller(ParentWindow.i, handler.i)
	CreateWebResourceResponse(Content.i, StatusCode.l, ReasonPhrase.s, Headers.s, Response.i)
	get_BrowserVersionString(versionInfo.i)
	add_NewBrowserVersionAvailable(eventHandler.i, token.i)
	remove_NewBrowserVersionAvailable(token.q)
EndInterface 

;- ICoreWebView2NewBrowserVersionAvailableEventHandler

DataSection
	IID_ICoreWebView2NewBrowserVersionAvailableEventHandler:
	Data.l $F9A2976E
	Data.w $D34E, $44FC
	Data.b $AD, $EE, $81, $B6, $B5, $7C, $A9, $14
EndDataSection

Interface ICoreWebView2NewBrowserVersionAvailableEventHandler Extends IUnknown
	Invoke(webviewEnvironment.i, args.i)
EndInterface 

;- ICoreWebView2EnvironmentOptions

DataSection
	IID_ICoreWebView2EnvironmentOptions:
	Data.l $2FDE08A8
	Data.w $1E9A, $4766
	Data.b $8C, $5, $95, $A9, $CE, $B9, $D1, $C5
EndDataSection

Interface ICoreWebView2EnvironmentOptions Extends IUnknown
	get_AdditionalBrowserArguments(value.i)
	put_AdditionalBrowserArguments(value.s)
	get_Language(value.i)
	put_Language(value.s)
	get_TargetCompatibleBrowserVersion(value.i)
	put_TargetCompatibleBrowserVersion(value.s)
	get_AllowSingleSignOnUsingOSPrimaryAccount(allow.i)
	put_AllowSingleSignOnUsingOSPrimaryAccount(allow.l)
EndInterface 

Structure ICoreWebView2EnvironmentOptionsVtbl Extends IUnknownVtbl
	get_AdditionalBrowserArguments.i
	put_AdditionalBrowserArguments.i
	get_Language.i
	put_Language.i
	get_TargetCompatibleBrowserVersion.i
	put_TargetCompatibleBrowserVersion.i
	get_AllowSingleSignOnUsingOSPrimaryAccount.i
	put_AllowSingleSignOnUsingOSPrimaryAccount.i
EndStructure

