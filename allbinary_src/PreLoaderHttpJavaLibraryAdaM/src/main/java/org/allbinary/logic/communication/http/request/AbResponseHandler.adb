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


package body org.allbinary.logic.communication.http.request.AbResponseHandler_Package is

   procedure Initialize_Fields (This : in out AbResponseHandler'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AbResponseHandler'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbResponseHandler_Access is
      This : constant AbResponseHandler_Access := new AbResponseHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws JspTagException
   procedure sendJspTagRedirect (pageContext : PageContext_Access; e : Ada.Exceptions.Exception_Occurrence) is
      logUtil : LogUtil_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGERROR) then
                logUtil.put (To_Unbounded_String ("Jsp Tag Exception"), To_Unbounded_String ("AbResponseHandler"), To_Unbounded_String ("sendJspRedirect()"), e);
            end if;
            AbResponseHandler_Package.sendRedirect (pageContext, FREEBLISKET_PATH_GLOBALS.getInstance.ERRORPAGE);
        exception
            when e2 : others =>
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.LICENSINGERROR) then
                logUtil.put (To_Unbounded_String ("Exception in Redirect Handling"), To_Unbounded_String ("AbResponseHandler"), To_Unbounded_String ("sendJspRedirect"), e);
            end if;
            Java_Throw (Java_New_Exception ("JspTagException"));
        end;
   end sendJspTagRedirect;

   --  throws ServletException
   procedure sendServletRedirect (pageContext : PageContext_Access; e : Ada.Exceptions.Exception_Occurrence) is
      logUtil : LogUtil_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGERROR) then
                logUtil.put (To_Unbounded_String ("Jsp Tag Exception"), To_Unbounded_String ("AbResponseHandler"), To_Unbounded_String ("sendJspRedirect()"), e);
            end if;
            AbResponseHandler_Package.sendRedirect (pageContext, FREEBLISKET_PATH_GLOBALS.getInstance.ERRORPAGE);
        exception
            when e2 : others =>
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.LICENSINGERROR) then
                logUtil.put (To_Unbounded_String ("Exception in Redirect Handling"), To_Unbounded_String ("AbResponseHandler"), To_Unbounded_String ("sendJspRedirect"), e);
            end if;
            Java_Throw (Java_New_Exception ("ServletException"));
        end;
   end sendServletRedirect;

   --  throws JspTagException
   procedure sendJspTagLicensingRedirect (pageContext : PageContext_Access; e : Ada.Exceptions.Exception_Occurrence) is
      logUtil : LogUtil_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGERROR) then
                logUtil.put (To_Unbounded_String ("Licensing Exception"), To_Unbounded_String ("AbResponseHandler"), To_Unbounded_String ("sendJspTagLicensingRedirect()"), e);
            end if;
            AbResponseHandler_Package.sendRedirect (pageContext, FREEBLISKET_PATH_GLOBALS.getInstance.LICENSEERRORPAGE);
        exception
            when e2 : others =>
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.LICENSINGERROR) then
                logUtil.put (To_Unbounded_String ("Exception in Redirect Handling"), To_Unbounded_String ("AbResponseHandler"), To_Unbounded_String ("sendJspTagLicensingRedirect"), e);
            end if;
            Java_Throw (Java_New_Exception ("JspTagException"));
        end;
   end sendJspTagLicensingRedirect;

   --  throws ServletException
   procedure sendServletLicensingRedirect (pageContext : PageContext_Access; e : Ada.Exceptions.Exception_Occurrence) is
      logUtil : LogUtil_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGERROR) then
                logUtil.put (To_Unbounded_String ("Licensing Exception"), To_Unbounded_String ("AbResponseHandler"), To_Unbounded_String ("sendServletLicensingRedirect()"), e);
            end if;
            AbResponseHandler_Package.sendRedirect (pageContext, FREEBLISKET_PATH_GLOBALS.getInstance.LICENSEERRORPAGE);
        exception
            when e2 : others =>
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.LICENSINGERROR) then
                logUtil.put (To_Unbounded_String ("Exception in Redirect Handling"), To_Unbounded_String ("AbResponseHandler"), To_Unbounded_String ("sendServletLicensingRedirect"), e);
            end if;
            Java_Throw (Java_New_Exception ("ServletException"));
        end;
   end sendServletLicensingRedirect;

   --  throws Exception
   procedure sendRedirect (pageContext : PageContext_Access; page : Unbounded_String) is
      request : HttpServletRequest_Access;
      response : HttpServletResponse_Access;
      requestDispatcher : RequestDispatcher_Access;
   begin
        request := HttpServletRequest_Access (pageContext.getRequest);
        response := HttpServletResponse_Access (pageContext.getResponse);
        requestDispatcher := request.getRequestDispatcher (page);
        if response.isCommitted then
            response.sendRedirect (page);
        else
            begin
                requestDispatcher.forward (request, response);
            exception
                when e : others =>
                pageContext.getOut.print (To_Unbounded_String ("Error: ") & page);
            end;
        end if;
   end sendRedirect;

end org.allbinary.logic.communication.http.request.AbResponseHandler_Package;


