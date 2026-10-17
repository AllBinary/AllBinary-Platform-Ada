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


package body org.allbinary.servlet.file.DownloadFileServlet_Package is

   procedure Initialize_Fields (This : in out DownloadFileServlet'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.DOWNLOAD := To_Unbounded_String ("download");
      This.DEFAULT_BUFFER_SIZE := 16384;
   end Initialize_Fields;

   procedure Initialize (This : in out DownloadFileServlet'Class) is
   begin
      HttpServlet_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return DownloadFileServlet_Access is
      This : constant DownloadFileServlet_Access := new DownloadFileServlet;
   begin
      DownloadFileServlet_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws ServletException, IOException
   procedure processRequest (This : in out DownloadFileServlet; request_Param : access HttpServletRequest'Class; response_Param : access HttpServletResponse'Class) is
      request : HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      response : HttpServletResponse_Access := HttpServletResponse_Access (response_Param);
      inputStream : InputStream_Access;
      requestPath : Unbounded_String;
      beginIndex : Integer;
      filePath : Unbounded_String;
      file : AbFile_Access;
      hashMap : HashMap_Access;
      authenticationHelper : AuthenticationHelper_Access;
      contentType : Unbounded_String;
      stringBuffer : StringMaker_Access;
   begin
        inputStream := null;
        begin
            BlisketServletUtil_Package.getInstance.init (request);
            requestPath := request.getRequestURI;
            if (requestPath) = (Null_Unbounded_String) then
                response.sendError (HttpServletResponse_Package.SC_NOT_FOUND);
                return;
            end if;
            beginIndex := (Index (requestPath, To_String (This.DOWNLOAD)) - 1);
            filePath := StringUtil_Package.getInstance.EMPTY_STRING;
            if (beginIndex) >= (0) then
                filePath := Unbounded_Slice (requestPath, ((beginIndex) + (Length (This.DOWNLOAD))) + 1, Length (requestPath));
            else
                response.sendError (HttpServletResponse_Package.SC_NOT_FOUND);
            end if;
            file := AbFile_Package.createAbFile (Java_Image (URLGLOBALS.getWebappPath) & filePath);
            if not (file.exists) then
                response.sendError (HttpServletResponse_Package.SC_NOT_FOUND);
                return;
            end if;
            hashMap := StdUtil_Package.getInstance.createHashMap;
            authenticationHelper := AuthenticationHelper_Access (AuthenticationHelperFactory_Package.Create.getInstance (hashMap, request));
            if authenticationHelper.isAuthenticated then
                if AuthenticationHelperUtil_Package.getInstance.isAuthorized (authenticationHelper, filePath) then
                    inputStream := CloudStreamUtil_Package.getInstance.getFile (file);
                    contentType := This.getServletContext.getMimeType (file.getName);
                    if (contentType) = (Null_Unbounded_String) then
                        contentType := To_Unbounded_String ("application/octet-stream");
                    end if;
                    response.reset;
                    response.setBufferSize (This.DEFAULT_BUFFER_SIZE);
                    response.setContentType (contentType);
                    response.setHeader (To_Unbounded_String ("Content-Length"), To_Unbounded_String (Java_Image (file.length)));
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("attachment; filename="""));
                    stringBuffer.append (file.getName);
                    stringBuffer.append (CommonSeps_Package.getInstance.QUOTE);
                    response.setHeader (To_Unbounded_String ("Content-Disposition"), stringBuffer.toString);
                    StreamUtil_Package.getInstance.get (inputStream, response.getOutputStream, new Short_Short_Integer_Array'(0 .. (16348) - 1 => 0));
                else
                    response.sendError (HttpServletResponse_Package.SC_UNAUTHORIZED, To_Unbounded_String ("You are not Authorized"));
                end if;
            else
                response.sendError (HttpServletResponse_Package.SC_UNAUTHORIZED, To_Unbounded_String ("Please Login"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, DownloadFileServlet_Access'(This'Unchecked_Access), To_Unbounded_String ("processRequest()"), e);
            end if;
            response.sendError (HttpServletResponse_Package.SC_NOT_FOUND);
                end;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (response.getOutputStream);
            if not (StreamUtil_Package.getInstance.close (inputStream)) then
                null;
            end if;
        end;
   end processRequest;

   --  throws ServletException, IOException
   procedure doGet (This : in out DownloadFileServlet; request_Param : access HttpServletRequest'Class; response_Param : access HttpServletResponse'Class) is
      request : HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      response : HttpServletResponse_Access := HttpServletResponse_Access (response_Param);
   begin
        This.processRequest (request, response);
   end doGet;

   --  throws ServletException, IOException
   procedure doPost (This : in out DownloadFileServlet; request_Param : access HttpServletRequest'Class; response_Param : access HttpServletResponse'Class) is
      request : HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      response : HttpServletResponse_Access := HttpServletResponse_Access (response_Param);
   begin
        This.processRequest (request, response);
   end doPost;

   function getServletInfo (This : in out DownloadFileServlet) return Unbounded_String is
   begin
        return To_Unbounded_String ("Serves Up Cloud Files");
   end getServletInfo;

end org.allbinary.servlet.file.DownloadFileServlet_Package;


