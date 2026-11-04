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

limited with tags.StoreWorkFlowTag_Package;
package tags.StoreWorkFlowTag_Package_References is
   type StoreWorkFlowTag_Access is access all tags.StoreWorkFlowTag_Package.StoreWorkFlowTag'Class;
   type StoreWorkFlowTag_Access_Array is array (Natural range <>) of StoreWorkFlowTag_Access;
   type StoreWorkFlowTag_Access_Array_Access is access all StoreWorkFlowTag_Access_Array;
   type StoreWorkFlowTag_Access_Array_Access_Array is array (Natural range <>) of StoreWorkFlowTag_Access_Array_Access;
   type StoreWorkFlowTag_Access_Array_Access_Array_Access is access all StoreWorkFlowTag_Access_Array_Access_Array;
end tags.StoreWorkFlowTag_Package_References;

with tags.StoreWorkFlowTag_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.HelperTag_Package; use tags.HelperTag_Package;

package tags.StoreWorkFlowTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype StoreWorkFlowTag_Access is tags.StoreWorkFlowTag_Package_References.StoreWorkFlowTag_Access;
   function "=" (Left, Right : StoreWorkFlowTag_Access) return Boolean renames tags.StoreWorkFlowTag_Package_References."=";
   subtype StoreWorkFlowTag_Access_Array is tags.StoreWorkFlowTag_Package_References.StoreWorkFlowTag_Access_Array;
   function "=" (Left, Right : StoreWorkFlowTag_Access_Array) return Boolean renames tags.StoreWorkFlowTag_Package_References."=";
   subtype StoreWorkFlowTag_Access_Array_Access is tags.StoreWorkFlowTag_Package_References.StoreWorkFlowTag_Access_Array_Access;
   function "=" (Left, Right : StoreWorkFlowTag_Access_Array_Access) return Boolean renames tags.StoreWorkFlowTag_Package_References."=";
   subtype StoreWorkFlowTag_Access_Array_Access_Array is tags.StoreWorkFlowTag_Package_References.StoreWorkFlowTag_Access_Array_Access_Array;
   function "=" (Left, Right : StoreWorkFlowTag_Access_Array_Access_Array) return Boolean renames tags.StoreWorkFlowTag_Package_References."=";
   subtype StoreWorkFlowTag_Access_Array_Access_Array_Access is tags.StoreWorkFlowTag_Package_References.StoreWorkFlowTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreWorkFlowTag_Access_Array_Access_Array_Access) return Boolean renames tags.StoreWorkFlowTag_Package_References."=";

   type StoreWorkFlowTag is new HelperTag with record
      logUtil : LogUtil_Access;
      viewName : Unbounded_String;
      viewFile : Unbounded_String;
   end record;

   procedure Initialize (This : in out StoreWorkFlowTag'Class);
   function Create return StoreWorkFlowTag_Access;
   procedure setName (This : in out StoreWorkFlowTag; value : Unbounded_String);
   function process (This : in out StoreWorkFlowTag) return Integer;
   function doStartTag (This : in out StoreWorkFlowTag) return Integer;

end tags.StoreWorkFlowTag_Package;


