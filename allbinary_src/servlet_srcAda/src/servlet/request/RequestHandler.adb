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


package body servlet.request.RequestHandler_Package is

   procedure Initialize_Fields (This : in out RequestHandler'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out RequestHandler'Class) is
   begin
      HttpServlet_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return RequestHandler_Access is
      This : constant RequestHandler_Access := new RequestHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws ServletException
   procedure init (This : in out RequestHandler; config : ServletConfig_Access) is
   begin
        HttpServlet (This).init (config);
   end init;

   procedure destroy (This : in out RequestHandler) is
   begin
        null;
   end destroy;

   --  throws ServletException, IOException
   procedure processRequest (This : in out RequestHandler; request : HttpServletRequest_Access; response : HttpServletResponse_Access) is
      out_Id : PrintWriter_Access;
      workflowInterface : WorkFlowInterface_Access;
   begin
        begin
            response.setContentType (To_Unbounded_String ("text/html"));
            out_Id := response.getWriter;
            workflowInterface := RequestWorkFlowFactory_Package.getInstance (ServletRequest_Access (request), ServletResponse_Access (response), This.getServletConfig, This.getServletContext);
            if (workflowInterface) /= (null) then
                out_Id.print (workflowInterface.process);
            end if;
            out_Id.flush;
            out_Id.close;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SERVLETERROR) then
                This.logUtil.put (To_Unbounded_String ("Servlet LicensingException"), This'Unchecked_Access, To_Unbounded_String ("processRequest()"), e);
            end if;
            response.sendRedirect (This.abcs.globals.URLGLOBALS.LICENSEERRORPAGE);
                end;
        end;
   end processRequest;

   --  throws ServletException, IOException
   procedure doGet (This : in out RequestHandler; request : HttpServletRequest_Access; response : HttpServletResponse_Access) is
   begin
        This.processRequest (request, response);
   end doGet;

   --  throws ServletException, IOException
   procedure doPost (This : in out RequestHandler; request : HttpServletRequest_Access; response : HttpServletResponse_Access) is
   begin
        This.processRequest (request, response);
   end doPost;

   function getServletInfo (This : in out RequestHandler) return Unbounded_String is
   begin
        return To_Unbounded_String ("WorkFlow Request Handler");
   end getServletInfo;

   procedure getServletInfo (This : in out RequestHandler) is
      Java_Result : constant Unbounded_String := RequestHandler'Class (This).getServletInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getServletInfo;

end servlet.request.RequestHandler_Package;


