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
limited with admin.tags.CustomItemsTag_Package;
package admin.tags.CustomItemsTag_Package_References is
   type CustomItemsTag_Access is access all admin.tags.CustomItemsTag_Package.CustomItemsTag'Class;
   type CustomItemsTag_Access_Array is array (Natural range <>) of CustomItemsTag_Access;
   type CustomItemsTag_Access_Array_Access is access all CustomItemsTag_Access_Array;
   type CustomItemsTag_Access_Array_Access_Array is array (Natural range <>) of CustomItemsTag_Access_Array_Access;
   type CustomItemsTag_Access_Array_Access_Array_Access is access all CustomItemsTag_Access_Array_Access_Array;
   type CustomItemsTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomItemsTag_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomItemsTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomItemsTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomItemsTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomItemsTag_Access_Array_Access is (if Value /= null and then Value.all in CustomItemsTag_Access_Array_Object'Class then CustomItemsTag_Access_Array_Object'Class (Value.all).Value else null);
   type CustomItemsTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomItemsTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomItemsTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomItemsTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomItemsTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomItemsTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomItemsTag_Access_Array_Access_Array_Object'Class then CustomItemsTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.CustomItemsTag_Package_References;

with admin.tags.CustomItemsTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.CustomItemsTag_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CustomItemsTag_Access is admin.tags.CustomItemsTag_Package_References.CustomItemsTag_Access;
   function "=" (Left, Right : CustomItemsTag_Access) return Boolean renames admin.tags.CustomItemsTag_Package_References."=";
   subtype CustomItemsTag_Access_Array is admin.tags.CustomItemsTag_Package_References.CustomItemsTag_Access_Array;
   function "=" (Left, Right : CustomItemsTag_Access_Array) return Boolean renames admin.tags.CustomItemsTag_Package_References."=";
   subtype CustomItemsTag_Access_Array_Access is admin.tags.CustomItemsTag_Package_References.CustomItemsTag_Access_Array_Access;
   function "=" (Left, Right : CustomItemsTag_Access_Array_Access) return Boolean renames admin.tags.CustomItemsTag_Package_References."=";
   function Java_Box (Value : CustomItemsTag_Access_Array_Access) return Java_Object_Access renames admin.tags.CustomItemsTag_Package_References.Java_Box;
   function Java_Unbox_CustomItemsTag_Access_Array (Value : access Java_Object'Class) return CustomItemsTag_Access_Array_Access renames admin.tags.CustomItemsTag_Package_References.Java_Unbox_CustomItemsTag_Access_Array;
   subtype CustomItemsTag_Access_Array_Access_Array is admin.tags.CustomItemsTag_Package_References.CustomItemsTag_Access_Array_Access_Array;
   function "=" (Left, Right : CustomItemsTag_Access_Array_Access_Array) return Boolean renames admin.tags.CustomItemsTag_Package_References."=";
   subtype CustomItemsTag_Access_Array_Access_Array_Access is admin.tags.CustomItemsTag_Package_References.CustomItemsTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomItemsTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.CustomItemsTag_Package_References."=";
   function Java_Box (Value : CustomItemsTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.CustomItemsTag_Package_References.Java_Box;
   function Java_Unbox_CustomItemsTag_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomItemsTag_Access_Array_Access_Array_Access renames admin.tags.CustomItemsTag_Package_References.Java_Unbox_CustomItemsTag_Access_Array_Access_Array;

   type CustomItemsTag is new TableTag with null record;

   procedure Initialize (This : in out CustomItemsTag'Class);
   function Create return CustomItemsTag_Access;

end admin.tags.CustomItemsTag_Package;


