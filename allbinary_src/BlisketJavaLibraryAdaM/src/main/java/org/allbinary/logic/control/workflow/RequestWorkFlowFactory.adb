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


with org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package; use org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.logic.control.workflow.WorkFlowData_Package; use org.allbinary.logic.control.workflow.WorkFlowData_Package;

package body org.allbinary.logic.control.workflow.RequestWorkFlowFactory_Package is

   package WorkFlowEntityFactory_Package renames Standard.org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
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
      RequestWorkFlowFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (request_Param : access ServletRequest_Package.ServletRequest'Class; response_Param : access ServletResponse_Package.ServletResponse'Class; servletConfig_Param : access ServletConfig_Package.ServletConfig'Class; servletContext_Param : access ServletContext_Package.ServletContext'Class) return WorkFlowInterface_Access is
      request : constant ServletRequest_Access := ServletRequest_Access (request_Param);
      response : constant ServletResponse_Access := ServletResponse_Access (response_Param);
      servletConfig : constant ServletConfig_Access := ServletConfig_Access (servletConfig_Param);
      servletContext : constant ServletContext_Access := ServletContext_Access (servletContext_Param);
      httpRequest : HttpServletRequest_Access;
      requestCommand : Unbounded_String;
      index : Integer;
      storeName : Unbounded_String;
      requestName : Unbounded_String;
   begin
        httpRequest := HttpServletRequest_Access (request);
        requestCommand := httpRequest.getPathInfo;
        index := Java_Index_Of (requestCommand, Java_Image (AbPathData_Package.getInstance.SEPARATOR));
        storeName := Unbounded_Slice (requestCommand, (0) + 1, index);
        requestName := Unbounded_Slice (requestCommand, (index) + 1, Length (requestCommand));
        return WorkFlowInterface_Access (WorkFlowEntityFactory_Package.getInstance.create2.get (requestName, storeName));
   end getInstance;

   --  throws Exception, LicensingException
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return WorkFlowInterface_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      workFlowName : Unbounded_String;
      weblisketSession : WeblisketSession_Access;
      storeName : Unbounded_String;
   begin
        workFlowName := Java_Unbox (pageContext.getRequest.getParameter (WorkFlowData_Package.getInstance.NAME));
        weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        storeName := weblisketSession.getStoreName;
        return WorkFlowInterface_Access (WorkFlowEntityFactory_Package.getInstance.create2.get (workFlowName, storeName));
   end getInstance;

   procedure getInstance (request_Param : access ServletRequest_Package.ServletRequest'Class; response_Param : access ServletResponse_Package.ServletResponse'Class; servletConfig_Param : access ServletConfig_Package.ServletConfig'Class; servletContext_Param : access ServletContext_Package.ServletContext'Class) is
      Java_Result : constant WorkFlowInterface_Access := getInstance (request_Param => request_Param, response_Param => response_Param, servletConfig_Param => servletConfig_Param, servletContext_Param => servletContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant WorkFlowInterface_Access := getInstance (hashMap_Param => hashMap_Param, pageContext_Param => pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.control.workflow.RequestWorkFlowFactory_Package;


