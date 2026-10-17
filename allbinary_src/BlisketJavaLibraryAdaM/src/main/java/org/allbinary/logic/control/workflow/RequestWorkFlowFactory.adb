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


package body org.allbinary.logic.control.workflow.RequestWorkFlowFactory_Package is

   procedure Initialize_Fields (This : in out RequestWorkFlowFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RequestWorkFlowFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RequestWorkFlowFactory_Access is
      This : constant RequestWorkFlowFactory_Access := new RequestWorkFlowFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (request : ServletRequest_Access; response : ServletResponse_Access; servletConfig : ServletConfig_Access; servletContext : ServletContext_Access) return WorkFlowInterface_Access is
      httpRequest : HttpServletRequest_Access;
      requestCommand : Unbounded_String;
      index : Integer;
      storeName : Unbounded_String;
      requestName : Unbounded_String;
   begin
        httpRequest := HttpServletRequest_Access (request);
        requestCommand := httpRequest.getPathInfo;
        index := (Index (requestCommand, To_String (AbPathData_Package.getInstance.SEPARATOR)) - 1);
        storeName := Unbounded_Slice (requestCommand, (0) + 1, index);
        requestName := Unbounded_Slice (requestCommand, (index) + 1, Length (requestCommand));
        return WorkFlowEntityFactory_Package.getInstance.create2.get (requestName, storeName);
   end getInstance;

   --  throws Exception, LicensingException
   function getInstance (hashMap : HashMap_Access; pageContext : PageContext_Access) return WorkFlowInterface_Access is
      workFlowName : Unbounded_String;
      weblisketSession : WeblisketSession_Access;
      storeName : Unbounded_String;
   begin
        workFlowName := Unbounded_String (pageContext.getRequest.getParameter (WorkFlowData_Package.getInstance.NAME));
        weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        storeName := weblisketSession.getStoreName;
        return WorkFlowEntityFactory_Package.getInstance.create2.get (workFlowName, storeName);
   end getInstance;

   procedure getInstance (request : ServletRequest_Access; response : ServletResponse_Access; servletConfig : ServletConfig_Access; servletContext : ServletContext_Access) is
      Java_Result : constant WorkFlowInterface_Access := getInstance (request, response, servletConfig, servletContext);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (hashMap : HashMap_Access; pageContext : PageContext_Access) is
      Java_Result : constant WorkFlowInterface_Access := getInstance (hashMap, pageContext);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.control.workflow.RequestWorkFlowFactory_Package;


