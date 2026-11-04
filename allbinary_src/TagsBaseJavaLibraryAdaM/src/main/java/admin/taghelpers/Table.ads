-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with admin.taghelpers.Table_Package;
package admin.taghelpers.Table_Package_References is
   type Table_Access is access all admin.taghelpers.Table_Package.Table'Class;
   type Table_Access_Array is array (Natural range <>) of Table_Access;
   type Table_Access_Array_Access is access all Table_Access_Array;
   type Table_Access_Array_Access_Array is array (Natural range <>) of Table_Access_Array_Access;
   type Table_Access_Array_Access_Array_Access is access all Table_Access_Array_Access_Array;
end admin.taghelpers.Table_Package_References;

with admin.taghelpers.Table_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with admin.taghelpers.TableInterface_Package; use admin.taghelpers.TableInterface_Package;

package admin.taghelpers.Table_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Table_Access is admin.taghelpers.Table_Package_References.Table_Access;
   function "=" (Left, Right : Table_Access) return Boolean renames admin.taghelpers.Table_Package_References."=";
   subtype Table_Access_Array is admin.taghelpers.Table_Package_References.Table_Access_Array;
   function "=" (Left, Right : Table_Access_Array) return Boolean renames admin.taghelpers.Table_Package_References."=";
   subtype Table_Access_Array_Access is admin.taghelpers.Table_Package_References.Table_Access_Array_Access;
   function "=" (Left, Right : Table_Access_Array_Access) return Boolean renames admin.taghelpers.Table_Package_References."=";
   subtype Table_Access_Array_Access_Array is admin.taghelpers.Table_Package_References.Table_Access_Array_Access_Array;
   function "=" (Left, Right : Table_Access_Array_Access_Array) return Boolean renames admin.taghelpers.Table_Package_References."=";
   subtype Table_Access_Array_Access_Array_Access is admin.taghelpers.Table_Package_References.Table_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Table_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.Table_Package_References."=";

   type Table is new Java_Object and TableInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out Table'Class);
   function Create return Table_Access;
   function drop (This : in out Table) return Unbounded_String;
   function create (This : in out Table) return Unbounded_String;
   function restore (This : in out Table) return Unbounded_String;
   function backup (This : in out Table) return Unbounded_String;
   function insert (This : in out Table) return Unbounded_String;
   function delete (This : in out Table) return Unbounded_String;
   function update (This : in out Table) return Unbounded_String;

end admin.taghelpers.Table_Package;


