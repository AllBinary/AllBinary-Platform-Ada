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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with admin.taghelpers.TableInterface_Package; use admin.taghelpers.TableInterface_Package;

package admin.taghelpers.Table_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type Table is tagged;
   type Table_Access is access all Table'Class;
   type Table_Access_Array is array (Natural range <>) of Table_Access;
   type Table_Access_Array_Access is access all Table_Access_Array;
   type Table_Access_Array_Access_Array is array (Natural range <>) of Table_Access_Array_Access;
   type Table_Access_Array_Access_Array_Access is access all Table_Access_Array_Access_Array;

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


