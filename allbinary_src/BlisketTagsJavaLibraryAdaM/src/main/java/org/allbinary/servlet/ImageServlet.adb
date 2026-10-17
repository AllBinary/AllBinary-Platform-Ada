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


package body org.allbinary.servlet.ImageServlet_Package is

   procedure Initialize_Fields (This : in out ImageServlet'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageServlet'Class) is
   begin
      HttpServlet_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageServlet_Access is
      This : constant ImageServlet_Access := new ImageServlet;
   begin
      ImageServlet_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws ServletException, IOException
   procedure processRequest (This : in out ImageServlet; request_Param : access HttpServletRequest'Class; response_Param : access HttpServletResponse'Class) is
      request : HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      response : HttpServletResponse_Access := HttpServletResponse_Access (response_Param);
      inputStream : InputStream_Access;
      requestURI : Unbounded_String;
      file : AbFile_Access;
      outputStream : ByteArrayOutputStream_Access;
      byteArray : Short_Short_Integer_Array_Access;
   begin
        inputStream := null;
        begin
            BlisketServletUtil_Package.getInstance.init (request);
            requestURI := request.getRequestURI;
            file := AbFile_Package.createAbFile (Java_Image (URLGLOBALS.getWebappPath) & requestURI);
            inputStream := CloudStreamUtil_Package.getInstance.getFileLocal (file);
            outputStream := ByteArrayOutputStream_Package.Create (8000);
            byteArray := StreamUtil_Package.getInstance.getByteArray (inputStream, outputStream, new Short_Short_Integer_Array'(0 .. (16384) - 1 => 0));
            response.setContentType (To_Unbounded_String ("image/jpeg;charset=utf-8"));
            response.getOutputStream.write (byteArray);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, ImageServlet_Access'(This'Unchecked_Access), To_Unbounded_String ("processRequest()"), e);
            end if;
                end;
        end;
        --  finally
        begin
            StreamUtil_Package.getInstance.close (response.getOutputStream);
            if not (StreamUtil_Package.getInstance.close (inputStream)) then
                response.sendError (HttpServletResponse_Package.SC_NOT_FOUND);
            end if;
        end;
   end processRequest;

   --  throws ServletException, IOException
   procedure doGet (This : in out ImageServlet; request_Param : access HttpServletRequest'Class; response_Param : access HttpServletResponse'Class) is
      request : HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      response : HttpServletResponse_Access := HttpServletResponse_Access (response_Param);
   begin
        This.processRequest (request, response);
   end doGet;

   --  throws ServletException, IOException
   procedure doPost (This : in out ImageServlet; request_Param : access HttpServletRequest'Class; response_Param : access HttpServletResponse'Class) is
      request : HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
      response : HttpServletResponse_Access := HttpServletResponse_Access (response_Param);
   begin
        This.processRequest (request, response);
   end doPost;

   function getServletInfo (This : in out ImageServlet) return Unbounded_String is
   begin
        return To_Unbounded_String ("Serves Up Image");
   end getServletInfo;

end org.allbinary.servlet.ImageServlet_Package;


