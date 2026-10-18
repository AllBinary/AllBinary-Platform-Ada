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


with java.io.InputStream_Package; use java.io.InputStream_Package;
with admin.taghelpers.AuthenticationHelper_Package; use admin.taghelpers.AuthenticationHelper_Package;
with admin.taghelpers.AuthenticationHelperFactory_Package; use admin.taghelpers.AuthenticationHelperFactory_Package;
with admin.taghelpers.AuthenticationHelperUtil_Package; use admin.taghelpers.AuthenticationHelperUtil_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.file.upload.FileUploadData_Package; use org.allbinary.logic.communication.http.file.upload.FileUploadData_Package;
with org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package; use org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
with org.allbinary.logic.communication.http.request.HttpRequestUtil_Package; use org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
with org.allbinary.logic.communication.http.request.MultipartRequestParams_Package; use org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
with org.allbinary.logic.io.AbFileOutputStream_Package; use org.allbinary.logic.io.AbFileOutputStream_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.servlet.BlisketServletUtil_Package; use org.allbinary.servlet.BlisketServletUtil_Package;
with org.apache.commons.fileupload.FileItem_Package; use org.apache.commons.fileupload.FileItem_Package;

package body org.allbinary.servlet.file.UploadFileServlet_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package AuthenticationHelper_Package renames Standard.admin.taghelpers.AuthenticationHelper_Package;
   package AuthenticationHelperFactory_Package renames Standard.admin.taghelpers.AuthenticationHelperFactory_Package;
   package AuthenticationHelperUtil_Package renames Standard.admin.taghelpers.AuthenticationHelperUtil_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package FileUploadData_Package renames Standard.org.allbinary.logic.communication.http.file.upload.FileUploadData_Package;
   package HttpFileUploadUtil_Package renames Standard.org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;
   package HttpRequestUtil_Package renames Standard.org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
   package MultipartRequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.MultipartRequestParams_Package;
   package AbFileOutputStream_Package renames Standard.org.allbinary.logic.io.AbFileOutputStream_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BlisketServletUtil_Package renames Standard.org.allbinary.servlet.BlisketServletUtil_Package;
   package FileItem_Package renames Standard.org.apache.commons.fileupload.FileItem_Package;
   procedure Initialize_Fields (This : in out UploadFileServlet'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.requestHashMap := null;
      This.fileName := Null_Unbounded_String;
   end Initialize_Fields;

   procedure Initialize (This : in out UploadFileServlet'Class) is
   begin
      HttpServlet_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return UploadFileServlet_Access is
      This : constant UploadFileServlet_Access := new UploadFileServlet;
   begin
      UploadFileServlet_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws ServletException, IOException
   procedure processRequest (This : in out UploadFileServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      response : constant HttpServletResponse_Access := HttpServletResponse_Access (response_Param);
      isError : Boolean;
      inputStream : InputStream_Access;
      filePath : Unbounded_String;
      hashMap : HashMap_Access;
      authenticationHelper : AuthenticationHelper_Access;
   begin
        isError := False;
        inputStream := null;
        begin
            BlisketServletUtil_Package.getInstance.init (request);
            This.requestHashMap := MultipartRequestParams_Package.Create (request).toHashMap;
            filePath := Java_Unbox (This.requestHashMap.get (FileUploadData_Package.getInstance.UPLOAD_TO_FILE_PATH));
            if (filePath) = (Null_Unbounded_String) then
                isError := True;
                response.sendError (HttpServletResponse_Package.SC_NOT_FOUND);
                return;
            end if;
            hashMap := StdUtil_Package.getInstance.createHashMap;
            authenticationHelper := AuthenticationHelper_Access (AuthenticationHelperFactory_Package.Create.getInstance (hashMap, request));
            if authenticationHelper.isAuthenticated then
                if AuthenticationHelperUtil_Package.getInstance.isAuthorized (authenticationHelper, filePath) then
                    UploadFileServlet'Class (This).saveFile (filePath);
                    response.setContentType (To_Unbounded_String ("text/plain"));
                    response.getOutputStream.write (To_Unbounded_String ("OK!").getBytes);
                else
                    isError := True;
                    response.sendError (HttpServletResponse_Package.SC_UNAUTHORIZED, To_Unbounded_String ("You are not Authorized"));
                end if;
            else
                isError := True;
                response.sendError (HttpServletResponse_Package.SC_UNAUTHORIZED, To_Unbounded_String ("Please Login"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, UploadFileServlet_Access'(This'Unchecked_Access), To_Unbounded_String ("processRequest()"), e);
            end if;
            isError := True;
            response.sendError (HttpServletResponse_Package.SC_NOT_FOUND);
                end;
        end;
        --  finally
        begin
            if not (isError) then
                StreamUtil_Package.getInstance.close (response.getOutputStream);
            end if;
            if not (StreamUtil_Package.getInstance.close (inputStream)) then
                null;
            end if;
        end;
   end processRequest;

   --  throws Exception
   procedure saveFile (This : in out UploadFileServlet; filePath_Param : Unbounded_String) is
      filePath : Unbounded_String := filePath_Param;
      fileOutputStream : AbFileOutputStream_Access;
      fileItem : FileItem_Access;
      file : AbFile_Access;
      stringBuffer : StringMaker_Access;
      byteArray : Short_Short_Integer_Array_Access;
   begin
        fileOutputStream := null;
        begin
            fileItem := FileItem_Access (This.requestHashMap.get (FileUploadData_Package.getInstance.FILE_DATA));
            if ((fileItem) /= (null)) and then ((fileItem.getSize) > (1)) then
                This.fileName := HttpRequestUtil_Package.getInstance.generateFileName (fileItem.getName);
                if (Java_Ends_With (filePath, To_Unbounded_String ("/"))) or else (Java_Ends_With (filePath, To_Unbounded_String ("\"))) then
                    filePath := filePath & This.fileName;
                end if;
                file := AbFile_Package.createAbFile (Java_Image (URLGLOBALS_Package.getWebappPath) & filePath);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("Uploaded File: "));
                    stringBuffer.append (This.fileName);
                    stringBuffer.append (To_Unbounded_String (" New File: "));
                    stringBuffer.append (file.getPath);
                    This.logUtil.putF (stringBuffer.toString, UploadFileServlet_Access'(This'Unchecked_Access), To_Unbounded_String ("saveFile()"));
                end if;
                HttpFileUploadUtil_Package.log (fileItem);
                byteArray := fileItem.get;
                if file.isFile then
                    file.delete;
                    file.createNewFile;
                end if;
                fileOutputStream := AbFileOutputStream_Package.createFromAbFile (file);
                fileOutputStream.write (byteArray);
            end if;
        end;
        --  finally
        begin
            if (fileOutputStream) /= (null) then
                fileOutputStream.close;
            end if;
        end;
   end saveFile;

   --  throws ServletException, IOException
   procedure doGet (This : in out UploadFileServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      response : constant HttpServletResponse_Access := HttpServletResponse_Access (response_Param);
   begin
        UploadFileServlet'Class (This).processRequest (request, response);
   end doGet;

   --  throws ServletException, IOException
   procedure doPost (This : in out UploadFileServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      response : constant HttpServletResponse_Access := HttpServletResponse_Access (response_Param);
   begin
        UploadFileServlet'Class (This).processRequest (request, response);
   end doPost;

   function getServletInfo (This : in out UploadFileServlet) return Unbounded_String is
   begin
        return To_Unbounded_String ("Upload Cloud Files");
   end getServletInfo;

end org.allbinary.servlet.file.UploadFileServlet_Package;


