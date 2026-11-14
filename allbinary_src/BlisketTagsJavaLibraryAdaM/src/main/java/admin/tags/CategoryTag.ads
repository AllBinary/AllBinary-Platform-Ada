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
limited with admin.tags.CategoryTag_Package;
package admin.tags.CategoryTag_Package_References is
   type CategoryTag_Access is access all admin.tags.CategoryTag_Package.CategoryTag'Class;
   type CategoryTag_Access_Array is array (Natural range <>) of CategoryTag_Access;
   type CategoryTag_Access_Array_Access is access all CategoryTag_Access_Array;
   type CategoryTag_Access_Array_Access_Array is array (Natural range <>) of CategoryTag_Access_Array_Access;
   type CategoryTag_Access_Array_Access_Array_Access is access all CategoryTag_Access_Array_Access_Array;
   type CategoryTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryTag_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryTag_Access_Array_Access is (if Value /= null and then Value.all in CategoryTag_Access_Array_Object'Class then CategoryTag_Access_Array_Object'Class (Value.all).Value else null);
   type CategoryTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CategoryTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CategoryTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CategoryTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CategoryTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CategoryTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CategoryTag_Access_Array_Access_Array_Object'Class then CategoryTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.CategoryTag_Package_References;

with admin.tags.CategoryTag_Package_References;
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

package admin.tags.CategoryTag_Package is

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


   subtype CategoryTag_Access is admin.tags.CategoryTag_Package_References.CategoryTag_Access;
   function "=" (Left, Right : CategoryTag_Access) return Boolean renames admin.tags.CategoryTag_Package_References."=";
   subtype CategoryTag_Access_Array is admin.tags.CategoryTag_Package_References.CategoryTag_Access_Array;
   function "=" (Left, Right : CategoryTag_Access_Array) return Boolean renames admin.tags.CategoryTag_Package_References."=";
   subtype CategoryTag_Access_Array_Access is admin.tags.CategoryTag_Package_References.CategoryTag_Access_Array_Access;
   function "=" (Left, Right : CategoryTag_Access_Array_Access) return Boolean renames admin.tags.CategoryTag_Package_References."=";
   function Java_Box (Value : CategoryTag_Access_Array_Access) return Java_Object_Access renames admin.tags.CategoryTag_Package_References.Java_Box;
   function Java_Unbox_CategoryTag_Access_Array (Value : access Java_Object'Class) return CategoryTag_Access_Array_Access renames admin.tags.CategoryTag_Package_References.Java_Unbox_CategoryTag_Access_Array;
   subtype CategoryTag_Access_Array_Access_Array is admin.tags.CategoryTag_Package_References.CategoryTag_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryTag_Access_Array_Access_Array) return Boolean renames admin.tags.CategoryTag_Package_References."=";
   subtype CategoryTag_Access_Array_Access_Array_Access is admin.tags.CategoryTag_Package_References.CategoryTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.CategoryTag_Package_References."=";
   function Java_Box (Value : CategoryTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.CategoryTag_Package_References.Java_Box;
   function Java_Unbox_CategoryTag_Access_Array_Access_Array (Value : access Java_Object'Class) return CategoryTag_Access_Array_Access_Array_Access renames admin.tags.CategoryTag_Package_References.Java_Unbox_CategoryTag_Access_Array_Access_Array;

   type CategoryTag is new TableTag with record
      logUtil : LogUtil_Access;
      xsl : Unbounded_String;
   end record;

   procedure Initialize (This : in out CategoryTag'Class);
   function Create return CategoryTag_Access;
   procedure setXsl (This : in out CategoryTag; value : Unbounded_String);
   function viewCategory (This : in out CategoryTag) return Unbounded_String;
   function viewCategories (This : in out CategoryTag) return Unbounded_String;
   function doStartTag (This : in out CategoryTag) return Integer;

end admin.tags.CategoryTag_Package;


