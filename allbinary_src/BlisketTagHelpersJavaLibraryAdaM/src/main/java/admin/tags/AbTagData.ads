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

limited with admin.tags.AbTagData_Package;
package admin.tags.AbTagData_Package_References is
   type AbTagData_Access is access all admin.tags.AbTagData_Package.AbTagData'Class;
   type AbTagData_Access_Array is array (Natural range <>) of AbTagData_Access;
   type AbTagData_Access_Array_Access is access all AbTagData_Access_Array;
   type AbTagData_Access_Array_Access_Array is array (Natural range <>) of AbTagData_Access_Array_Access;
   type AbTagData_Access_Array_Access_Array_Access is access all AbTagData_Access_Array_Access_Array;
end admin.tags.AbTagData_Package_References;

with admin.tags.AbTagData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package admin.tags.AbTagData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AbTagData_Access is admin.tags.AbTagData_Package_References.AbTagData_Access;
   function "=" (Left, Right : AbTagData_Access) return Boolean renames admin.tags.AbTagData_Package_References."=";
   subtype AbTagData_Access_Array is admin.tags.AbTagData_Package_References.AbTagData_Access_Array;
   function "=" (Left, Right : AbTagData_Access_Array) return Boolean renames admin.tags.AbTagData_Package_References."=";
   subtype AbTagData_Access_Array_Access is admin.tags.AbTagData_Package_References.AbTagData_Access_Array_Access;
   function "=" (Left, Right : AbTagData_Access_Array_Access) return Boolean renames admin.tags.AbTagData_Package_References."=";
   subtype AbTagData_Access_Array_Access_Array is admin.tags.AbTagData_Package_References.AbTagData_Access_Array_Access_Array;
   function "=" (Left, Right : AbTagData_Access_Array_Access_Array) return Boolean renames admin.tags.AbTagData_Package_References."=";
   subtype AbTagData_Access_Array_Access_Array_Access is admin.tags.AbTagData_Package_References.AbTagData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbTagData_Access_Array_Access_Array_Access) return Boolean renames admin.tags.AbTagData_Package_References."=";

   type AbTagData is new Java_Object with null record;
   PARENT : Unbounded_String;

   procedure Initialize (This : in out AbTagData'Class);
   function Create return AbTagData_Access;

end admin.tags.AbTagData_Package;


