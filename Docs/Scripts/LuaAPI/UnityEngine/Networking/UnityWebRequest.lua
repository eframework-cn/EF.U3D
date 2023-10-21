---@class UnityEngine.Networking.UnityWebRequest : System.Object
---@field disposeCertificateHandlerOnDispose bool
---@field disposeDownloadHandlerOnDispose bool
---@field disposeUploadHandlerOnDispose bool
---@field method System.String
---@field error System.String
---@field useHttpContinue bool
---@field url System.String
---@field uri System.Uri
---@field responseCode long
---@field uploadProgress float
---@field isModifiable bool
---@field isDone bool
---@field result UnityEngine.Networking.UnityWebRequest.Result
---@field downloadProgress float
---@field uploadedBytes ulong
---@field downloadedBytes ulong
---@field redirectLimit int
---@field uploadHandler UnityEngine.Networking.UploadHandler
---@field downloadHandler UnityEngine.Networking.DownloadHandler
---@field certificateHandler UnityEngine.Networking.CertificateHandler
---@field timeout int
---@field kHttpVerbGET System.String
---@field kHttpVerbHEAD System.String
---@field kHttpVerbPOST System.String
---@field kHttpVerbPUT System.String
---@field kHttpVerbCREATE System.String
---@field kHttpVerbDELETE System.String
local UnityWebRequest = {}

---@overload fun(uri:System.Uri):void
function UnityWebRequest.ClearCookieCache() end

function UnityWebRequest:Dispose() end

---@return UnityEngine.Networking.UnityWebRequestAsyncOperation
function UnityWebRequest:SendWebRequest() end

function UnityWebRequest:Abort() end

---@param name System.String
---@return System.String
function UnityWebRequest:GetRequestHeader(name) end

---@param name System.String
---@param value System.String
function UnityWebRequest:SetRequestHeader(name, value) end

---@param name System.String
---@return System.String
function UnityWebRequest:GetResponseHeader(name) end

---@return table
function UnityWebRequest:GetResponseHeaders() end

---@overload fun(uri:System.Uri):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityWebRequest.Get(uri) end

---@overload fun(uri:System.Uri):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityWebRequest.Delete(uri) end

---@overload fun(uri:System.Uri):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityWebRequest.Head(uri) end

---@overload fun(uri:System.Uri, bodyData:byte[]):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, bodyData:System.String):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, bodyData:System.String):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@param bodyData byte[]
---@return UnityEngine.Networking.UnityWebRequest
function UnityWebRequest.Put(uri, bodyData) end

---@overload fun(uri:System.Uri, postData:System.String):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, formData:UnityEngine.WWWForm):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, formData:UnityEngine.WWWForm):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, multipartFormSections:table):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, multipartFormSections:table):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, multipartFormSections:table, boundary:byte[]):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, multipartFormSections:table, boundary:byte[]):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.String, formFields:table):UnityEngine.Networking.UnityWebRequest
---@overload fun(uri:System.Uri, formFields:table):UnityEngine.Networking.UnityWebRequest
---@param uri System.String
---@param postData System.String
---@return UnityEngine.Networking.UnityWebRequest
function UnityWebRequest.Post(uri, postData) end

---@overload fun(s:System.String, e:System.Text.Encoding):System.String
---@param s System.String
---@return System.String
function UnityWebRequest.EscapeURL(s) end

---@overload fun(s:System.String, e:System.Text.Encoding):System.String
---@param s System.String
---@return System.String
function UnityWebRequest.UnEscapeURL(s) end

---@param multipartFormSections table
---@param boundary byte[]
---@return byte[]
function UnityWebRequest.SerializeFormSections(multipartFormSections, boundary) end

---@return byte[]
function UnityWebRequest.GenerateBoundary() end

---@param formFields table
---@return byte[]
function UnityWebRequest.SerializeSimpleForm(formFields) end

UnityEngine.Networking.UnityWebRequest = UnityWebRequest