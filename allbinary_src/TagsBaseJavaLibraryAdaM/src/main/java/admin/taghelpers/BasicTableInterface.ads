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

limited with admin.taghelpers.BasicTableInterface_Package;
package admin.taghelpers.BasicTableInterface_Package_References is
   type BasicTableInterface_Access is access all admin.taghelpers.BasicTableInterface_Package.BasicTableInterface'Class;
   type BasicTableInterface_Access_Array is array (Natural range <>) of BasicTableInterface_Access;
   type BasicTableInterface_Access_Array_Access is access all BasicTableInterface_Access_Array;
   type BasicTableInterface_Access_Array_Access_Array is array (Natural range <>) of BasicTableInterface_Access_Array_Access;
   type BasicTableInterface_Access_Array_Access_Array_Access is access all BasicTableInterface_Access_Array_Access_Array;
end admin.taghelpers.BasicTableInterface_Package_References;

with admin.taghelpers.BasicTableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package admin.taghelpers.BasicTableInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type BasicTableInterface is interface;
   subtype BasicTableInterface_Access is admin.taghelpers.BasicTableInterface_Package_References.BasicTableInterface_Access;
   function "=" (Left, Right : BasicTableInterface_Access) return Boolean renames admin.taghelpers.BasicTableInterface_Package_References."=";
   subtype BasicTableInterface_Access_Array is admin.taghelpers.BasicTableInterface_Package_References.BasicTableInterface_Access_Array;
   function "=" (Left, Right : BasicTableInterface_Access_Array) return Boolean renames admin.taghelpers.BasicTableInterface_Package_References."=";
   subtype BasicTableInterface_Access_Array_Access is admin.taghelpers.BasicTableInterface_Package_References.BasicTableInterface_Access_Array_Access;
   function "=" (Left, Right : BasicTableInterface_Access_Array_Access) return Boolean renames admin.taghelpers.BasicTableInterface_Package_References."=";
   subtype BasicTableInterface_Access_Array_Access_Array is admin.taghelpers.BasicTableInterface_Package_References.BasicTableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTableInterface_Access_Array_Access_Array) return Boolean renames admin.taghelpers.BasicTableInterface_Package_References."=";
   subtype BasicTableInterface_Access_Array_Access_Array_Access is admin.taghelpers.BasicTableInterface_Package_References.BasicTableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTableInterface_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.BasicTableInterface_Package_References."=";
   function Java_Object_Access_From_BasicTableInterface (Value : BasicTableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function drop (This : in out BasicTableInterface) return Unbounded_String is abstract;
   function create (This : in out BasicTableInterface) return Unbounded_String is abstract;
   function restore (This : in out BasicTableInterface) return Unbounded_String is abstract;
   function backup (This : in out BasicTableInterface) return Unbounded_String is abstract;

end admin.taghelpers.BasicTableInterface_Package;


