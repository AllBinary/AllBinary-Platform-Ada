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

limited with tags.workflow.processing.basic.BasicWorkFlowTag_Package;
package tags.workflow.processing.basic.BasicWorkFlowTag_Package_References is
   type BasicWorkFlowTag_Access is access all tags.workflow.processing.basic.BasicWorkFlowTag_Package.BasicWorkFlowTag'Class;
   type BasicWorkFlowTag_Access_Array is array (Natural range <>) of BasicWorkFlowTag_Access;
   type BasicWorkFlowTag_Access_Array_Access is access all BasicWorkFlowTag_Access_Array;
   type BasicWorkFlowTag_Access_Array_Access_Array is array (Natural range <>) of BasicWorkFlowTag_Access_Array_Access;
   type BasicWorkFlowTag_Access_Array_Access_Array_Access is access all BasicWorkFlowTag_Access_Array_Access_Array;
end tags.workflow.processing.basic.BasicWorkFlowTag_Package_References;

with tags.workflow.processing.basic.BasicWorkFlowTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.StoreWorkFlowTag_Package; use tags.StoreWorkFlowTag_Package;

package tags.workflow.processing.basic.BasicWorkFlowTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StoreWorkFlowTag_Package renames Standard.tags.StoreWorkFlowTag_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicWorkFlowTag_Access is tags.workflow.processing.basic.BasicWorkFlowTag_Package_References.BasicWorkFlowTag_Access;
   function "=" (Left, Right : BasicWorkFlowTag_Access) return Boolean renames tags.workflow.processing.basic.BasicWorkFlowTag_Package_References."=";
   subtype BasicWorkFlowTag_Access_Array is tags.workflow.processing.basic.BasicWorkFlowTag_Package_References.BasicWorkFlowTag_Access_Array;
   function "=" (Left, Right : BasicWorkFlowTag_Access_Array) return Boolean renames tags.workflow.processing.basic.BasicWorkFlowTag_Package_References."=";
   subtype BasicWorkFlowTag_Access_Array_Access is tags.workflow.processing.basic.BasicWorkFlowTag_Package_References.BasicWorkFlowTag_Access_Array_Access;
   function "=" (Left, Right : BasicWorkFlowTag_Access_Array_Access) return Boolean renames tags.workflow.processing.basic.BasicWorkFlowTag_Package_References."=";
   subtype BasicWorkFlowTag_Access_Array_Access_Array is tags.workflow.processing.basic.BasicWorkFlowTag_Package_References.BasicWorkFlowTag_Access_Array_Access_Array;
   function "=" (Left, Right : BasicWorkFlowTag_Access_Array_Access_Array) return Boolean renames tags.workflow.processing.basic.BasicWorkFlowTag_Package_References."=";
   subtype BasicWorkFlowTag_Access_Array_Access_Array_Access is tags.workflow.processing.basic.BasicWorkFlowTag_Package_References.BasicWorkFlowTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicWorkFlowTag_Access_Array_Access_Array_Access) return Boolean renames tags.workflow.processing.basic.BasicWorkFlowTag_Package_References."=";

   type BasicWorkFlowTag is new StoreWorkFlowTag with record
      BasicWorkFlowTag_Field_logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out BasicWorkFlowTag'Class);
   function Create return BasicWorkFlowTag_Access;
   function doStartTag (This : in out BasicWorkFlowTag) return Integer;

end tags.workflow.processing.basic.BasicWorkFlowTag_Package;


