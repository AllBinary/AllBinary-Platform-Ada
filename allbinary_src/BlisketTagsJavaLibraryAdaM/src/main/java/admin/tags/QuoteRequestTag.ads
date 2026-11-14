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
limited with admin.tags.QuoteRequestTag_Package;
package admin.tags.QuoteRequestTag_Package_References is
   type QuoteRequestTag_Access is access all admin.tags.QuoteRequestTag_Package.QuoteRequestTag'Class;
   type QuoteRequestTag_Access_Array is array (Natural range <>) of QuoteRequestTag_Access;
   type QuoteRequestTag_Access_Array_Access is access all QuoteRequestTag_Access_Array;
   type QuoteRequestTag_Access_Array_Access_Array is array (Natural range <>) of QuoteRequestTag_Access_Array_Access;
   type QuoteRequestTag_Access_Array_Access_Array_Access is access all QuoteRequestTag_Access_Array_Access_Array;
   type QuoteRequestTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequestTag_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequestTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequestTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequestTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequestTag_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequestTag_Access_Array_Object'Class then QuoteRequestTag_Access_Array_Object'Class (Value.all).Value else null);
   type QuoteRequestTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequestTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequestTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequestTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequestTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequestTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequestTag_Access_Array_Access_Array_Object'Class then QuoteRequestTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.QuoteRequestTag_Package_References;

with admin.tags.QuoteRequestTag_Package_References;
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
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.QuoteRequestTag_Package is

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


   subtype QuoteRequestTag_Access is admin.tags.QuoteRequestTag_Package_References.QuoteRequestTag_Access;
   function "=" (Left, Right : QuoteRequestTag_Access) return Boolean renames admin.tags.QuoteRequestTag_Package_References."=";
   subtype QuoteRequestTag_Access_Array is admin.tags.QuoteRequestTag_Package_References.QuoteRequestTag_Access_Array;
   function "=" (Left, Right : QuoteRequestTag_Access_Array) return Boolean renames admin.tags.QuoteRequestTag_Package_References."=";
   subtype QuoteRequestTag_Access_Array_Access is admin.tags.QuoteRequestTag_Package_References.QuoteRequestTag_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestTag_Access_Array_Access) return Boolean renames admin.tags.QuoteRequestTag_Package_References."=";
   function Java_Box (Value : QuoteRequestTag_Access_Array_Access) return Java_Object_Access renames admin.tags.QuoteRequestTag_Package_References.Java_Box;
   function Java_Unbox_QuoteRequestTag_Access_Array (Value : access Java_Object'Class) return QuoteRequestTag_Access_Array_Access renames admin.tags.QuoteRequestTag_Package_References.Java_Unbox_QuoteRequestTag_Access_Array;
   subtype QuoteRequestTag_Access_Array_Access_Array is admin.tags.QuoteRequestTag_Package_References.QuoteRequestTag_Access_Array_Access_Array;
   function "=" (Left, Right : QuoteRequestTag_Access_Array_Access_Array) return Boolean renames admin.tags.QuoteRequestTag_Package_References."=";
   subtype QuoteRequestTag_Access_Array_Access_Array_Access is admin.tags.QuoteRequestTag_Package_References.QuoteRequestTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : QuoteRequestTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.QuoteRequestTag_Package_References."=";
   function Java_Box (Value : QuoteRequestTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.QuoteRequestTag_Package_References.Java_Box;
   function Java_Unbox_QuoteRequestTag_Access_Array_Access_Array (Value : access Java_Object'Class) return QuoteRequestTag_Access_Array_Access_Array_Access renames admin.tags.QuoteRequestTag_Package_References.Java_Unbox_QuoteRequestTag_Access_Array_Access_Array;

   type QuoteRequestTag is new TableTag with record
      logUtil : LogUtil_Access;
      storeName : Unbounded_String;
   end record;

   procedure Initialize (This : in out QuoteRequestTag'Class);
   function Create return QuoteRequestTag_Access;
   procedure setStoreName (This : in out QuoteRequestTag; storeName : Unbounded_String);
   function email (This : in out QuoteRequestTag) return Unbounded_String;
   function doStartTag (This : in out QuoteRequestTag) return Integer;

end admin.tags.QuoteRequestTag_Package;


