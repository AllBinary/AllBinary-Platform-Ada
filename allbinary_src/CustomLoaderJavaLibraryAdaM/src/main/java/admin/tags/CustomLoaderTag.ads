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

limited with admin.tags.CustomLoaderTag_Package;
package admin.tags.CustomLoaderTag_Package_References is
   type CustomLoaderTag_Access is access all admin.tags.CustomLoaderTag_Package.CustomLoaderTag'Class;
   type CustomLoaderTag_Access_Array is array (Natural range <>) of CustomLoaderTag_Access;
   type CustomLoaderTag_Access_Array_Access is access all CustomLoaderTag_Access_Array;
   type CustomLoaderTag_Access_Array_Access_Array is array (Natural range <>) of CustomLoaderTag_Access_Array_Access;
   type CustomLoaderTag_Access_Array_Access_Array_Access is access all CustomLoaderTag_Access_Array_Access_Array;
end admin.tags.CustomLoaderTag_Package_References;

with admin.tags.CustomLoaderTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.CustomLoaderTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;
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


   subtype CustomLoaderTag_Access is admin.tags.CustomLoaderTag_Package_References.CustomLoaderTag_Access;
   function "=" (Left, Right : CustomLoaderTag_Access) return Boolean renames admin.tags.CustomLoaderTag_Package_References."=";
   subtype CustomLoaderTag_Access_Array is admin.tags.CustomLoaderTag_Package_References.CustomLoaderTag_Access_Array;
   function "=" (Left, Right : CustomLoaderTag_Access_Array) return Boolean renames admin.tags.CustomLoaderTag_Package_References."=";
   subtype CustomLoaderTag_Access_Array_Access is admin.tags.CustomLoaderTag_Package_References.CustomLoaderTag_Access_Array_Access;
   function "=" (Left, Right : CustomLoaderTag_Access_Array_Access) return Boolean renames admin.tags.CustomLoaderTag_Package_References."=";
   subtype CustomLoaderTag_Access_Array_Access_Array is admin.tags.CustomLoaderTag_Package_References.CustomLoaderTag_Access_Array_Access_Array;
   function "=" (Left, Right : CustomLoaderTag_Access_Array_Access_Array) return Boolean renames admin.tags.CustomLoaderTag_Package_References."=";
   subtype CustomLoaderTag_Access_Array_Access_Array_Access is admin.tags.CustomLoaderTag_Package_References.CustomLoaderTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomLoaderTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.CustomLoaderTag_Package_References."=";

   type CustomLoaderTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      webappPath : Unbounded_String;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out CustomLoaderTag'Class);
   function Create return CustomLoaderTag_Access;
   procedure setCommand (This : in out CustomLoaderTag; command : Unbounded_String);
   procedure setWebappPath (This : in out CustomLoaderTag; value : Unbounded_String);
   procedure setCustomLoaderWebappPath (This : in out CustomLoaderTag);
   function doStartTag (This : in out CustomLoaderTag) return Integer;

end admin.tags.CustomLoaderTag_Package;


