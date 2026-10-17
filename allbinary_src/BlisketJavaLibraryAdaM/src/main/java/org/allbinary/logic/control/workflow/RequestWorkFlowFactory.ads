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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.ServletConfig_Package; use javax.servlet.ServletConfig_Package;
--  with javax.servlet.ServletContext_Package; use javax.servlet.ServletContext_Package;
--  with javax.servlet.ServletRequest_Package; use javax.servlet.ServletRequest_Package;
--  with javax.servlet.ServletResponse_Package; use javax.servlet.ServletResponse_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package; use org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package org.allbinary.logic.control.workflow.RequestWorkFlowFactory_Package is

   package WorkFlowEntityFactory_Package renames org.allbinary.data.tables.workflow.WorkFlowEntityFactory_Package;
   package WeblisketSession_Package renames org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type RequestWorkFlowFactory is tagged;
   type RequestWorkFlowFactory_Access is access all RequestWorkFlowFactory'Class;
   type RequestWorkFlowFactory_Access_Array is array (Natural range <>) of RequestWorkFlowFactory_Access;
   type RequestWorkFlowFactory_Access_Array_Access is access all RequestWorkFlowFactory_Access_Array;

   type RequestWorkFlowFactory is new Java_Object with null record;

   procedure Initialize (This : in out RequestWorkFlowFactory'Class);
   function Create return RequestWorkFlowFactory_Access;
   function getInstance (request : ServletRequest_Access; response : ServletResponse_Access; servletConfig : ServletConfig_Access; servletContext : ServletContext_Access) return WorkFlowInterface_Access;
   procedure getInstance (request : ServletRequest_Access; response : ServletResponse_Access; servletConfig : ServletConfig_Access; servletContext : ServletContext_Access);
   function getInstance (hashMap : HashMap_Access; pageContext : PageContext_Access) return WorkFlowInterface_Access;
   procedure getInstance (hashMap : HashMap_Access; pageContext : PageContext_Access);

end org.allbinary.logic.control.workflow.RequestWorkFlowFactory_Package;


