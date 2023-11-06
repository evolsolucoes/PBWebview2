EnableExplicit

Procedure.s json_GetString(jsonStr.s)
	Protected ret.s = ""
	Protected json_id.i = ParseJSON(#PB_Any, jsonStr)
	If json_id
	  Protected *json_value = JSONValue(json_id)
	  If JSONType(*json_value) = #PB_JSON_String
	    ret = GetJSONString(*json_value)
	  EndIf
	  FreeJSON(json_id)
	EndIf
	ProcedureReturn ret
EndProcedure