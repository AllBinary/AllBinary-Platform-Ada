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
limited with admin.tags.BasicOptionItemsTag_Package;
package admin.tags.BasicOptionItemsTag_Package_References is
   type BasicOptionItemsTag_Access is access all admin.tags.BasicOptionItemsTag_Package.BasicOptionItemsTag'Class;
   type BasicOptionItemsTag_Access_Array is array (Natural range <>) of BasicOptionItemsTag_Access;
   type BasicOptionItemsTag_Access_Array_Access is access all BasicOptionItemsTag_Access_Array;
   type BasicOptionItemsTag_Access_Array_Access_Array is array (Natural range <>) of BasicOptionItemsTag_Access_Array_Access;
   type BasicOptionItemsTag_Access_Array_Access_Array_Access is access all BasicOptionItemsTag_Access_Array_Access_Array;
   type BasicOptionItemsTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicOptionItemsTag_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicOptionItemsTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicOptionItemsTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicOptionItemsTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicOptionItemsTag_Access_Array_Access is (if Value /= null and then Value.all in BasicOptionItemsTag_Access_Array_Object'Class then BasicOptionItemsTag_Access_Array_Object'Class (Value.all).Value else null);
   type BasicOptionItemsTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicOptionItemsTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicOptionItemsTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicOptionItemsTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicOptionItemsTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicOptionItemsTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicOptionItemsTag_Access_Array_Access_Array_Object'Class then BasicOptionItemsTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.BasicOptionItemsTag_Package_References;

with admin.tags.BasicOptionItemsTag_Package_References;
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

package admin.tags.BasicOptionItemsTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicOptionItemsTag_Access is admin.tags.BasicOptionItemsTag_Package_References.BasicOptionItemsTag_Access;
   function "=" (Left, Right : BasicOptionItemsTag_Access) return Boolean renames admin.tags.BasicOptionItemsTag_Package_References."=";
   subtype BasicOptionItemsTag_Access_Array is admin.tags.BasicOptionItemsTag_Package_References.BasicOptionItemsTag_Access_Array;
   function "=" (Left, Right : BasicOptionItemsTag_Access_Array) return Boolean renames admin.tags.BasicOptionItemsTag_Package_References."=";
   subtype BasicOptionItemsTag_Access_Array_Access is admin.tags.BasicOptionItemsTag_Package_References.BasicOptionItemsTag_Access_Array_Access;
   function "=" (Left, Right : BasicOptionItemsTag_Access_Array_Access) return Boolean renames admin.tags.BasicOptionItemsTag_Package_References."=";
   function Java_Box (Value : BasicOptionItemsTag_Access_Array_Access) return Java_Object_Access renames admin.tags.BasicOptionItemsTag_Package_References.Java_Box;
   function Java_Unbox_BasicOptionItemsTag_Access_Array (Value : access Java_Object'Class) return BasicOptionItemsTag_Access_Array_Access renames admin.tags.BasicOptionItemsTag_Package_References.Java_Unbox_BasicOptionItemsTag_Access_Array;
   subtype BasicOptionItemsTag_Access_Array_Access_Array is admin.tags.BasicOptionItemsTag_Package_References.BasicOptionItemsTag_Access_Array_Access_Array;
   function "=" (Left, Right : BasicOptionItemsTag_Access_Array_Access_Array) return Boolean renames admin.tags.BasicOptionItemsTag_Package_References."=";
   subtype BasicOptionItemsTag_Access_Array_Access_Array_Access is admin.tags.BasicOptionItemsTag_Package_References.BasicOptionItemsTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicOptionItemsTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.BasicOptionItemsTag_Package_References."=";
   function Java_Box (Value : BasicOptionItemsTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.BasicOptionItemsTag_Package_References.Java_Box;
   function Java_Unbox_BasicOptionItemsTag_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicOptionItemsTag_Access_Array_Access_Array_Access renames admin.tags.BasicOptionItemsTag_Package_References.Java_Unbox_BasicOptionItemsTag_Access_Array_Access_Array;

   type BasicOptionItemsTag is new TableTag with record
      propertiesHashMap : HashMap_Access;
   end record;

   procedure Initialize (This : in out BasicOptionItemsTag'Class);
   function Create return BasicOptionItemsTag_Access;

end admin.tags.BasicOptionItemsTag_Package;


