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
limited with admin.tags.InitTag_Package;
package admin.tags.InitTag_Package_References is
   type InitTag_Access is access all admin.tags.InitTag_Package.InitTag'Class;
   type InitTag_Access_Array is array (Natural range <>) of InitTag_Access;
   type InitTag_Access_Array_Access is access all InitTag_Access_Array;
   type InitTag_Access_Array_Access_Array is array (Natural range <>) of InitTag_Access_Array_Access;
   type InitTag_Access_Array_Access_Array_Access is access all InitTag_Access_Array_Access_Array;
   type InitTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitTag_Access_Array_Access;
   end record;
   function Java_Box (Value : InitTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitTag_Access_Array_Access is (if Value /= null and then Value.all in InitTag_Access_Array_Object'Class then InitTag_Access_Array_Object'Class (Value.all).Value else null);
   type InitTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitTag_Access_Array_Access_Array_Object'Class then InitTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.InitTag_Package_References;

with admin.tags.InitTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.InitTag_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InitTag_Access is admin.tags.InitTag_Package_References.InitTag_Access;
   function "=" (Left, Right : InitTag_Access) return Boolean renames admin.tags.InitTag_Package_References."=";
   subtype InitTag_Access_Array is admin.tags.InitTag_Package_References.InitTag_Access_Array;
   function "=" (Left, Right : InitTag_Access_Array) return Boolean renames admin.tags.InitTag_Package_References."=";
   subtype InitTag_Access_Array_Access is admin.tags.InitTag_Package_References.InitTag_Access_Array_Access;
   function "=" (Left, Right : InitTag_Access_Array_Access) return Boolean renames admin.tags.InitTag_Package_References."=";
   function Java_Box (Value : InitTag_Access_Array_Access) return Java_Object_Access renames admin.tags.InitTag_Package_References.Java_Box;
   function Java_Unbox_InitTag_Access_Array (Value : access Java_Object'Class) return InitTag_Access_Array_Access renames admin.tags.InitTag_Package_References.Java_Unbox_InitTag_Access_Array;
   subtype InitTag_Access_Array_Access_Array is admin.tags.InitTag_Package_References.InitTag_Access_Array_Access_Array;
   function "=" (Left, Right : InitTag_Access_Array_Access_Array) return Boolean renames admin.tags.InitTag_Package_References."=";
   subtype InitTag_Access_Array_Access_Array_Access is admin.tags.InitTag_Package_References.InitTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.InitTag_Package_References."=";
   function Java_Box (Value : InitTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.InitTag_Package_References.Java_Box;
   function Java_Unbox_InitTag_Access_Array_Access_Array (Value : access Java_Object'Class) return InitTag_Access_Array_Access_Array_Access renames admin.tags.InitTag_Package_References.Java_Unbox_InitTag_Access_Array_Access_Array;

   type InitTag is new TableTag with null record;

   procedure Initialize (This : in out InitTag'Class);
   function Create return InitTag_Access;

end admin.tags.InitTag_Package;


