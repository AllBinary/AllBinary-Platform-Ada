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
limited with admin.tags.StoreFrontTag_Package;
package admin.tags.StoreFrontTag_Package_References is
   type StoreFrontTag_Access is access all admin.tags.StoreFrontTag_Package.StoreFrontTag'Class;
   type StoreFrontTag_Access_Array is array (Natural range <>) of StoreFrontTag_Access;
   type StoreFrontTag_Access_Array_Access is access all StoreFrontTag_Access_Array;
   type StoreFrontTag_Access_Array_Access_Array is array (Natural range <>) of StoreFrontTag_Access_Array_Access;
   type StoreFrontTag_Access_Array_Access_Array_Access is access all StoreFrontTag_Access_Array_Access_Array;
   type StoreFrontTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontTag_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontTag_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontTag_Access_Array_Object'Class then StoreFrontTag_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontTag_Access_Array_Access_Array_Object'Class then StoreFrontTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.StoreFrontTag_Package_References;

with admin.tags.StoreFrontTag_Package_References;
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

package admin.tags.StoreFrontTag_Package is

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


   subtype StoreFrontTag_Access is admin.tags.StoreFrontTag_Package_References.StoreFrontTag_Access;
   function "=" (Left, Right : StoreFrontTag_Access) return Boolean renames admin.tags.StoreFrontTag_Package_References."=";
   subtype StoreFrontTag_Access_Array is admin.tags.StoreFrontTag_Package_References.StoreFrontTag_Access_Array;
   function "=" (Left, Right : StoreFrontTag_Access_Array) return Boolean renames admin.tags.StoreFrontTag_Package_References."=";
   subtype StoreFrontTag_Access_Array_Access is admin.tags.StoreFrontTag_Package_References.StoreFrontTag_Access_Array_Access;
   function "=" (Left, Right : StoreFrontTag_Access_Array_Access) return Boolean renames admin.tags.StoreFrontTag_Package_References."=";
   function Java_Box (Value : StoreFrontTag_Access_Array_Access) return Java_Object_Access renames admin.tags.StoreFrontTag_Package_References.Java_Box;
   function Java_Unbox_StoreFrontTag_Access_Array (Value : access Java_Object'Class) return StoreFrontTag_Access_Array_Access renames admin.tags.StoreFrontTag_Package_References.Java_Unbox_StoreFrontTag_Access_Array;
   subtype StoreFrontTag_Access_Array_Access_Array is admin.tags.StoreFrontTag_Package_References.StoreFrontTag_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontTag_Access_Array_Access_Array) return Boolean renames admin.tags.StoreFrontTag_Package_References."=";
   subtype StoreFrontTag_Access_Array_Access_Array_Access is admin.tags.StoreFrontTag_Package_References.StoreFrontTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.StoreFrontTag_Package_References."=";
   function Java_Box (Value : StoreFrontTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.StoreFrontTag_Package_References.Java_Box;
   function Java_Unbox_StoreFrontTag_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontTag_Access_Array_Access_Array_Access renames admin.tags.StoreFrontTag_Package_References.Java_Unbox_StoreFrontTag_Access_Array_Access_Array;

   type StoreFrontTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      storeName : Unbounded_String;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out StoreFrontTag'Class);
   function Create return StoreFrontTag_Access;
   procedure setCommand (This : in out StoreFrontTag; command : Unbounded_String);
   procedure setStoreName (This : in out StoreFrontTag; value : Unbounded_String);
   function getCurrentLocation (This : in out StoreFrontTag) return Unbounded_String;
   function getCurrentHomeLocation (This : in out StoreFrontTag) return Unbounded_String;
   function doStartTag (This : in out StoreFrontTag) return Integer;

end admin.tags.StoreFrontTag_Package;


