--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package; use org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;
with org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException_Package; use org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException_Package;

package body org.allbinary.logic.communication.http.request.MultipartRequestParams_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbFileUploadFactory_Package renames Standard.org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   package InvalidContentTypeException_Package renames Standard.org.apache.commons.fileupload.FileUploadBase.InvalidContentTypeException_Package;
   procedure Initialize_Fields (This : in out MultipartRequestParams'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.special := False;
   end Initialize_Fields;


   procedure Initialize (This : in out MultipartRequestParams'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
   begin
        RequestParams_Package.Initialize (This);
        Initialize_Fields (This);
        MultipartRequestParams'Class (This).processMultipartRequest (request);
   end Initialize;

   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return MultipartRequestParams_Access is
      This : constant MultipartRequestParams_Access := new MultipartRequestParams;
   begin
      MultipartRequestParams_Package.Initialize (This.all, request_Param);
      return This;
   end Create;

   procedure Initialize (This : in out MultipartRequestParams'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        RequestParams_Package.Initialize (This);
        Initialize_Fields (This);
        MultipartRequestParams'Class (This).processMultipartRequest (HttpServletRequest_Access (pageContext.getRequest));
   end Initialize;

   function Create (pageContext_Param : access PageContext_Package.PageContext'Class) return MultipartRequestParams_Access is
      This : constant MultipartRequestParams_Access := new MultipartRequestParams;
   begin
      MultipartRequestParams_Package.Initialize (This.all, pageContext_Param);
      return This;
   end Create;

   procedure setSpecial (This : in out MultipartRequestParams) is
   begin
        This.special := True;
   end setSpecial;

   procedure processMultipartRequest (This : in out MultipartRequestParams; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      specialRequest : HashMap_Access;
      multipartRequestList : List_Access;
      fileItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      fileItem : FileItem_Access;
      name : Unbounded_String;
      index : Integer;
   begin
        begin
            specialRequest := StdUtil_Package.getInstance.createHashMap;
            multipartRequestList := AbFileUploadFactory_Package.getInstance.getFileItemStreamList (request);
            if (multipartRequestList) /= (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("FileItem List Size: ") & Java_Image (multipartRequestList.size), MultipartRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("processMultipartRequest()"));
                end if;
                fileItemArray := multipartRequestList.toArray;
                size := fileItemArray'Length;
                for index in 0 .. (size) - 1 loop
                    fileItem := FileItem_Access (fileItemArray (index));
                    name := fileItem.getName;
                    if StringValidationUtil_Package.getInstance.isEmpty (name) then
                        specialRequest.put (fileItem.getFieldName, fileItem.getString);
                    else
                        specialRequest.put (fileItem.getFieldName, fileItem);
                    end if;
                end loop;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    This.logUtil.putF (To_Unbounded_String ("Special Request Data: ") & specialRequest.toString, MultipartRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("processMultipartRequest()"));
                end if;
                MultipartRequestParams'Class (This).setSpecial;
                MultipartRequestParams'Class (This).setMap (specialRequest);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                This.logUtil.putF (To_Unbounded_String ("Using Normal RequestParams"), MultipartRequestParams_Access'(This'Unchecked_Access), To_Unbounded_String ("processMultipartRequest()"));
            end if;
            RequestParams (This).setMap (request.getParameterMap);
                end;
        end;
   end processMultipartRequest;

   --  throws Exception
   function toHashMap (This : in out MultipartRequestParams) return HashMap_Access is
   begin
        if This.special then
            return HashMap_Access (MultipartRequestParams'Class (This).getMap);
        else
            return RequestParams (This).toHashMap;
        end if;
   end toHashMap;

end org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;


