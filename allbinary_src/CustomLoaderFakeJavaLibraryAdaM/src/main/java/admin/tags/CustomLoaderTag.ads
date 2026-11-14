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

with AllBinary_Java;
limited with admin.tags.CustomLoaderTag_Package;
package admin.tags.CustomLoaderTag_Package_References is
   type CustomLoaderTag_Access is access all admin.tags.CustomLoaderTag_Package.CustomLoaderTag'Class;
   type CustomLoaderTag_Access_Array is array (Natural range <>) of CustomLoaderTag_Access;
   type CustomLoaderTag_Access_Array_Access is access all CustomLoaderTag_Access_Array;
   type CustomLoaderTag_Access_Array_Access_Array is array (Natural range <>) of CustomLoaderTag_Access_Array_Access;
   type CustomLoaderTag_Access_Array_Access_Array_Access is access all CustomLoaderTag_Access_Array_Access_Array;
   type CustomLoaderTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomLoaderTag_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomLoaderTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomLoaderTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomLoaderTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomLoaderTag_Access_Array_Access is (if Value /= null and then Value.all in CustomLoaderTag_Access_Array_Object'Class then CustomLoaderTag_Access_Array_Object'Class (Value.all).Value else null);
   type CustomLoaderTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomLoaderTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomLoaderTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomLoaderTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomLoaderTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomLoaderTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomLoaderTag_Access_Array_Access_Array_Object'Class then CustomLoaderTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.CustomLoaderTag_Package is

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
   function Java_Box (Value : CustomLoaderTag_Access_Array_Access) return Java_Object_Access renames admin.tags.CustomLoaderTag_Package_References.Java_Box;
   function Java_Unbox_CustomLoaderTag_Access_Array (Value : access Java_Object'Class) return CustomLoaderTag_Access_Array_Access renames admin.tags.CustomLoaderTag_Package_References.Java_Unbox_CustomLoaderTag_Access_Array;
   subtype CustomLoaderTag_Access_Array_Access_Array is admin.tags.CustomLoaderTag_Package_References.CustomLoaderTag_Access_Array_Access_Array;
   function "=" (Left, Right : CustomLoaderTag_Access_Array_Access_Array) return Boolean renames admin.tags.CustomLoaderTag_Package_References."=";
   subtype CustomLoaderTag_Access_Array_Access_Array_Access is admin.tags.CustomLoaderTag_Package_References.CustomLoaderTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomLoaderTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.CustomLoaderTag_Package_References."=";
   function Java_Box (Value : CustomLoaderTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.CustomLoaderTag_Package_References.Java_Box;
   function Java_Unbox_CustomLoaderTag_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomLoaderTag_Access_Array_Access_Array_Access renames admin.tags.CustomLoaderTag_Package_References.Java_Unbox_CustomLoaderTag_Access_Array_Access_Array;

   type CustomLoaderTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      webappPath : Unbounded_String;
   end record;

   procedure Initialize (This : in out CustomLoaderTag'Class);
   function Create return CustomLoaderTag_Access;
   procedure setCommand (This : in out CustomLoaderTag; command : Unbounded_String);
   procedure setWebappPath (This : in out CustomLoaderTag; value : Unbounded_String);
   procedure setCustomLoaderWebappPath (This : in out CustomLoaderTag);
   function doStartTag (This : in out CustomLoaderTag) return Integer;

end admin.tags.CustomLoaderTag_Package;


