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

limited with admin.taghelpers.ModifyTableInterface_Package;
package admin.taghelpers.ModifyTableInterface_Package_References is
   type ModifyTableInterface_Access is access all admin.taghelpers.ModifyTableInterface_Package.ModifyTableInterface'Class;
   type ModifyTableInterface_Access_Array is array (Natural range <>) of ModifyTableInterface_Access;
   type ModifyTableInterface_Access_Array_Access is access all ModifyTableInterface_Access_Array;
   type ModifyTableInterface_Access_Array_Access_Array is array (Natural range <>) of ModifyTableInterface_Access_Array_Access;
   type ModifyTableInterface_Access_Array_Access_Array_Access is access all ModifyTableInterface_Access_Array_Access_Array;
end admin.taghelpers.ModifyTableInterface_Package_References;

with admin.taghelpers.ModifyTableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package admin.taghelpers.ModifyTableInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type ModifyTableInterface is interface;
   subtype ModifyTableInterface_Access is admin.taghelpers.ModifyTableInterface_Package_References.ModifyTableInterface_Access;
   function "=" (Left, Right : ModifyTableInterface_Access) return Boolean renames admin.taghelpers.ModifyTableInterface_Package_References."=";
   subtype ModifyTableInterface_Access_Array is admin.taghelpers.ModifyTableInterface_Package_References.ModifyTableInterface_Access_Array;
   function "=" (Left, Right : ModifyTableInterface_Access_Array) return Boolean renames admin.taghelpers.ModifyTableInterface_Package_References."=";
   subtype ModifyTableInterface_Access_Array_Access is admin.taghelpers.ModifyTableInterface_Package_References.ModifyTableInterface_Access_Array_Access;
   function "=" (Left, Right : ModifyTableInterface_Access_Array_Access) return Boolean renames admin.taghelpers.ModifyTableInterface_Package_References."=";
   subtype ModifyTableInterface_Access_Array_Access_Array is admin.taghelpers.ModifyTableInterface_Package_References.ModifyTableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ModifyTableInterface_Access_Array_Access_Array) return Boolean renames admin.taghelpers.ModifyTableInterface_Package_References."=";
   subtype ModifyTableInterface_Access_Array_Access_Array_Access is admin.taghelpers.ModifyTableInterface_Package_References.ModifyTableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ModifyTableInterface_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.ModifyTableInterface_Package_References."=";
   function Java_Object_Access_From_ModifyTableInterface (Value : ModifyTableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function insert (This : in out ModifyTableInterface) return Unbounded_String is abstract;
   function delete (This : in out ModifyTableInterface) return Unbounded_String is abstract;
   function update (This : in out ModifyTableInterface) return Unbounded_String is abstract;

end admin.taghelpers.ModifyTableInterface_Package;


