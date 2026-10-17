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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.StoreWorkFlowTag_Package; use tags.StoreWorkFlowTag_Package;

package tags.workflow.processing.basic.BasicWorkFlowTag_Package is

   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StoreWorkFlowTag_Package renames Standard.tags.StoreWorkFlowTag_Package;

   type BasicWorkFlowTag is tagged;
   type BasicWorkFlowTag_Access is access all BasicWorkFlowTag'Class;
   type BasicWorkFlowTag_Access_Array is array (Natural range <>) of BasicWorkFlowTag_Access;
   type BasicWorkFlowTag_Access_Array_Access is access all BasicWorkFlowTag_Access_Array;

   type BasicWorkFlowTag is new StoreWorkFlowTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out BasicWorkFlowTag'Class);
   function Create return BasicWorkFlowTag_Access;
   function doStartTag (This : in out BasicWorkFlowTag) return Integer;
   procedure doStartTag (This : in out BasicWorkFlowTag);

end tags.workflow.processing.basic.BasicWorkFlowTag_Package;


