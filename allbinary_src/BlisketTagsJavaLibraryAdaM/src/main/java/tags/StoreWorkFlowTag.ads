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
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with taghelpers.StoreTagWorkFlowHelperFactory_Package; use taghelpers.StoreTagWorkFlowHelperFactory_Package;
with tags.HelperTag_Package; use tags.HelperTag_Package;

package tags.StoreWorkFlowTag_Package is

   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package TransformInfoData_Package renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package StoreTagWorkFlowHelperFactory_Package renames taghelpers.StoreTagWorkFlowHelperFactory_Package;

   type StoreWorkFlowTag is tagged;
   type StoreWorkFlowTag_Access is access all StoreWorkFlowTag'Class;
   type StoreWorkFlowTag_Access_Array is array (Natural range <>) of StoreWorkFlowTag_Access;
   type StoreWorkFlowTag_Access_Array_Access is access all StoreWorkFlowTag_Access_Array;

   type StoreWorkFlowTag is new HelperTag with record
      logUtil : LogUtil_Access;
      viewName : Unbounded_String;
      viewFile : Unbounded_String;
   end record;

   procedure Initialize (This : in out StoreWorkFlowTag'Class);
   function Create return StoreWorkFlowTag_Access;
   procedure setName (This : in out StoreWorkFlowTag; value : Unbounded_String);
   function process (This : in out StoreWorkFlowTag) return Integer;
   procedure process (This : in out StoreWorkFlowTag);
   function doStartTag (This : in out StoreWorkFlowTag) return Integer;
   procedure doStartTag (This : in out StoreWorkFlowTag);

end tags.StoreWorkFlowTag_Package;


