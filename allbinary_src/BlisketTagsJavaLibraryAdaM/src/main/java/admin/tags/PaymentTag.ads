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
limited with admin.tags.PaymentTag_Package;
package admin.tags.PaymentTag_Package_References is
   type PaymentTag_Access is access all admin.tags.PaymentTag_Package.PaymentTag'Class;
   type PaymentTag_Access_Array is array (Natural range <>) of PaymentTag_Access;
   type PaymentTag_Access_Array_Access is access all PaymentTag_Access_Array;
   type PaymentTag_Access_Array_Access_Array is array (Natural range <>) of PaymentTag_Access_Array_Access;
   type PaymentTag_Access_Array_Access_Array_Access is access all PaymentTag_Access_Array_Access_Array;
   type PaymentTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTag_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTag_Access_Array_Access is (if Value /= null and then Value.all in PaymentTag_Access_Array_Object'Class then PaymentTag_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentTag_Access_Array_Access_Array_Object'Class then PaymentTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.PaymentTag_Package_References;

with admin.tags.PaymentTag_Package_References;
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
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.PaymentTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
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


   subtype PaymentTag_Access is admin.tags.PaymentTag_Package_References.PaymentTag_Access;
   function "=" (Left, Right : PaymentTag_Access) return Boolean renames admin.tags.PaymentTag_Package_References."=";
   subtype PaymentTag_Access_Array is admin.tags.PaymentTag_Package_References.PaymentTag_Access_Array;
   function "=" (Left, Right : PaymentTag_Access_Array) return Boolean renames admin.tags.PaymentTag_Package_References."=";
   subtype PaymentTag_Access_Array_Access is admin.tags.PaymentTag_Package_References.PaymentTag_Access_Array_Access;
   function "=" (Left, Right : PaymentTag_Access_Array_Access) return Boolean renames admin.tags.PaymentTag_Package_References."=";
   function Java_Box (Value : PaymentTag_Access_Array_Access) return Java_Object_Access renames admin.tags.PaymentTag_Package_References.Java_Box;
   function Java_Unbox_PaymentTag_Access_Array (Value : access Java_Object'Class) return PaymentTag_Access_Array_Access renames admin.tags.PaymentTag_Package_References.Java_Unbox_PaymentTag_Access_Array;
   subtype PaymentTag_Access_Array_Access_Array is admin.tags.PaymentTag_Package_References.PaymentTag_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTag_Access_Array_Access_Array) return Boolean renames admin.tags.PaymentTag_Package_References."=";
   subtype PaymentTag_Access_Array_Access_Array_Access is admin.tags.PaymentTag_Package_References.PaymentTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.PaymentTag_Package_References."=";
   function Java_Box (Value : PaymentTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.PaymentTag_Package_References.Java_Box;
   function Java_Unbox_PaymentTag_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentTag_Access_Array_Access_Array_Access renames admin.tags.PaymentTag_Package_References.Java_Unbox_PaymentTag_Access_Array_Access_Array;

   type PaymentTag is new TableTag with record
      logUtil : LogUtil_Access;
      storeName : Unbounded_String;
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out PaymentTag'Class);
   function Create return PaymentTag_Access;
   procedure setStoreName (This : in out PaymentTag; value : Unbounded_String);
   function select_Id (This : in out PaymentTag) return Unbounded_String;
   function doStartTag (This : in out PaymentTag) return Integer;

end admin.tags.PaymentTag_Package;


