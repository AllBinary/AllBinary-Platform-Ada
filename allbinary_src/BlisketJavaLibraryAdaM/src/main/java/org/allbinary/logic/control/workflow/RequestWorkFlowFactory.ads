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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.ServletConfig_Package; use javax.servlet.ServletConfig_Package;
--  with javax.servlet.ServletContext_Package; use javax.servlet.ServletContext_Package;
--  with javax.servlet.ServletRequest_Package; use javax.servlet.ServletRequest_Package;
--  with javax.servlet.ServletResponse_Package; use javax.servlet.ServletResponse_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package; use org.allbinary.logic.control.workflow.WorkFlowInterface_Package;

package org.allbinary.logic.control.workflow.RequestWorkFlowFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;

   type RequestWorkFlowFactory is tagged;
   type RequestWorkFlowFactory_Access is access all RequestWorkFlowFactory'Class;
   type RequestWorkFlowFactory_Access_Array is array (Natural range <>) of RequestWorkFlowFactory_Access;
   type RequestWorkFlowFactory_Access_Array_Access is access all RequestWorkFlowFactory_Access_Array;
   type RequestWorkFlowFactory_Access_Array_Access_Array is array (Natural range <>) of RequestWorkFlowFactory_Access_Array_Access;
   type RequestWorkFlowFactory_Access_Array_Access_Array_Access is access all RequestWorkFlowFactory_Access_Array_Access_Array;

   type RequestWorkFlowFactory is new Java_Object with null record;

   procedure Initialize (This : in out RequestWorkFlowFactory'Class);
   function Create return RequestWorkFlowFactory_Access;
   function getInstance (request_Param : access ServletRequest_Package.ServletRequest'Class; response_Param : access ServletResponse_Package.ServletResponse'Class; servletConfig_Param : access ServletConfig_Package.ServletConfig'Class; servletContext_Param : access ServletContext_Package.ServletContext'Class) return WorkFlowInterface_Access;
   procedure getInstance (request_Param : access ServletRequest_Package.ServletRequest'Class; response_Param : access ServletResponse_Package.ServletResponse'Class; servletConfig_Param : access ServletConfig_Package.ServletConfig'Class; servletContext_Param : access ServletContext_Package.ServletContext'Class);
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return WorkFlowInterface_Access;
   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end org.allbinary.logic.control.workflow.RequestWorkFlowFactory_Package;


