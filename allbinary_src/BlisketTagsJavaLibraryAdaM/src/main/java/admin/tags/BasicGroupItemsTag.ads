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
limited with admin.tags.BasicGroupItemsTag_Package;
package admin.tags.BasicGroupItemsTag_Package_References is
   type BasicGroupItemsTag_Access is access all admin.tags.BasicGroupItemsTag_Package.BasicGroupItemsTag'Class;
   type BasicGroupItemsTag_Access_Array is array (Natural range <>) of BasicGroupItemsTag_Access;
   type BasicGroupItemsTag_Access_Array_Access is access all BasicGroupItemsTag_Access_Array;
   type BasicGroupItemsTag_Access_Array_Access_Array is array (Natural range <>) of BasicGroupItemsTag_Access_Array_Access;
   type BasicGroupItemsTag_Access_Array_Access_Array_Access is access all BasicGroupItemsTag_Access_Array_Access_Array;
   type BasicGroupItemsTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGroupItemsTag_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGroupItemsTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGroupItemsTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGroupItemsTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGroupItemsTag_Access_Array_Access is (if Value /= null and then Value.all in BasicGroupItemsTag_Access_Array_Object'Class then BasicGroupItemsTag_Access_Array_Object'Class (Value.all).Value else null);
   type BasicGroupItemsTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGroupItemsTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGroupItemsTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGroupItemsTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGroupItemsTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGroupItemsTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicGroupItemsTag_Access_Array_Access_Array_Object'Class then BasicGroupItemsTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.BasicGroupItemsTag_Package_References;

with admin.tags.BasicGroupItemsTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.BasicGroupItemsTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicGroupItemsTag_Access is admin.tags.BasicGroupItemsTag_Package_References.BasicGroupItemsTag_Access;
   function "=" (Left, Right : BasicGroupItemsTag_Access) return Boolean renames admin.tags.BasicGroupItemsTag_Package_References."=";
   subtype BasicGroupItemsTag_Access_Array is admin.tags.BasicGroupItemsTag_Package_References.BasicGroupItemsTag_Access_Array;
   function "=" (Left, Right : BasicGroupItemsTag_Access_Array) return Boolean renames admin.tags.BasicGroupItemsTag_Package_References."=";
   subtype BasicGroupItemsTag_Access_Array_Access is admin.tags.BasicGroupItemsTag_Package_References.BasicGroupItemsTag_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsTag_Access_Array_Access) return Boolean renames admin.tags.BasicGroupItemsTag_Package_References."=";
   function Java_Box (Value : BasicGroupItemsTag_Access_Array_Access) return Java_Object_Access renames admin.tags.BasicGroupItemsTag_Package_References.Java_Box;
   function Java_Unbox_BasicGroupItemsTag_Access_Array (Value : access Java_Object'Class) return BasicGroupItemsTag_Access_Array_Access renames admin.tags.BasicGroupItemsTag_Package_References.Java_Unbox_BasicGroupItemsTag_Access_Array;
   subtype BasicGroupItemsTag_Access_Array_Access_Array is admin.tags.BasicGroupItemsTag_Package_References.BasicGroupItemsTag_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGroupItemsTag_Access_Array_Access_Array) return Boolean renames admin.tags.BasicGroupItemsTag_Package_References."=";
   subtype BasicGroupItemsTag_Access_Array_Access_Array_Access is admin.tags.BasicGroupItemsTag_Package_References.BasicGroupItemsTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGroupItemsTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.BasicGroupItemsTag_Package_References."=";
   function Java_Box (Value : BasicGroupItemsTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.BasicGroupItemsTag_Package_References.Java_Box;
   function Java_Unbox_BasicGroupItemsTag_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicGroupItemsTag_Access_Array_Access_Array_Access renames admin.tags.BasicGroupItemsTag_Package_References.Java_Unbox_BasicGroupItemsTag_Access_Array_Access_Array;

   type BasicGroupItemsTag is new TableTag with record
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out BasicGroupItemsTag'Class);
   function Create return BasicGroupItemsTag_Access;

end admin.tags.BasicGroupItemsTag_Package;


