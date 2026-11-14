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
limited with admin.tags.ShippingTag_Package;
package admin.tags.ShippingTag_Package_References is
   type ShippingTag_Access is access all admin.tags.ShippingTag_Package.ShippingTag'Class;
   type ShippingTag_Access_Array is array (Natural range <>) of ShippingTag_Access;
   type ShippingTag_Access_Array_Access is access all ShippingTag_Access_Array;
   type ShippingTag_Access_Array_Access_Array is array (Natural range <>) of ShippingTag_Access_Array_Access;
   type ShippingTag_Access_Array_Access_Array_Access is access all ShippingTag_Access_Array_Access_Array;
   type ShippingTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingTag_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingTag_Access_Array_Access is (if Value /= null and then Value.all in ShippingTag_Access_Array_Object'Class then ShippingTag_Access_Array_Object'Class (Value.all).Value else null);
   type ShippingTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShippingTag_Access_Array_Access_Array_Object'Class then ShippingTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.ShippingTag_Package_References;

with admin.tags.ShippingTag_Package_References;
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

package admin.tags.ShippingTag_Package is

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


   subtype ShippingTag_Access is admin.tags.ShippingTag_Package_References.ShippingTag_Access;
   function "=" (Left, Right : ShippingTag_Access) return Boolean renames admin.tags.ShippingTag_Package_References."=";
   subtype ShippingTag_Access_Array is admin.tags.ShippingTag_Package_References.ShippingTag_Access_Array;
   function "=" (Left, Right : ShippingTag_Access_Array) return Boolean renames admin.tags.ShippingTag_Package_References."=";
   subtype ShippingTag_Access_Array_Access is admin.tags.ShippingTag_Package_References.ShippingTag_Access_Array_Access;
   function "=" (Left, Right : ShippingTag_Access_Array_Access) return Boolean renames admin.tags.ShippingTag_Package_References."=";
   function Java_Box (Value : ShippingTag_Access_Array_Access) return Java_Object_Access renames admin.tags.ShippingTag_Package_References.Java_Box;
   function Java_Unbox_ShippingTag_Access_Array (Value : access Java_Object'Class) return ShippingTag_Access_Array_Access renames admin.tags.ShippingTag_Package_References.Java_Unbox_ShippingTag_Access_Array;
   subtype ShippingTag_Access_Array_Access_Array is admin.tags.ShippingTag_Package_References.ShippingTag_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingTag_Access_Array_Access_Array) return Boolean renames admin.tags.ShippingTag_Package_References."=";
   subtype ShippingTag_Access_Array_Access_Array_Access is admin.tags.ShippingTag_Package_References.ShippingTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.ShippingTag_Package_References."=";
   function Java_Box (Value : ShippingTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.ShippingTag_Package_References.Java_Box;
   function Java_Unbox_ShippingTag_Access_Array_Access_Array (Value : access Java_Object'Class) return ShippingTag_Access_Array_Access_Array_Access renames admin.tags.ShippingTag_Package_References.Java_Unbox_ShippingTag_Access_Array_Access_Array;

   type ShippingTag is new CustomTagSupport with record
      logUtil : LogUtil_Access;
      command : Unbounded_String;
      storeName : Unbounded_String;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out ShippingTag'Class);
   function Create return ShippingTag_Access;
   procedure setCommand (This : in out ShippingTag; command : Unbounded_String);
   procedure setStoreName (This : in out ShippingTag; value : Unbounded_String);
   function setShippingType (This : in out ShippingTag) return Unbounded_String;
   function doStartTag (This : in out ShippingTag) return Integer;

end admin.tags.ShippingTag_Package;


