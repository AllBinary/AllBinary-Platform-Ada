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
with tags.TagStrings_Package; use tags.TagStrings_Package;
with admin.taghelpers.ModifyTableInterface_Package; use admin.taghelpers.ModifyTableInterface_Package;

package admin.taghelpers.ModifyTable_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TagStrings_Package renames Standard.tags.TagStrings_Package;

   type ModifyTable is tagged;
   type ModifyTable_Access is access all ModifyTable'Class;
   type ModifyTable_Access_Array is array (Natural range <>) of ModifyTable_Access;
   type ModifyTable_Access_Array_Access is access all ModifyTable_Access_Array;

   type ModifyTable is new ModifyTableInterface with record
      commonStrings : CommonStrings_Access;
      tagStrings : TagStrings_Access;
   end record;

   procedure Initialize (This : in out ModifyTable'Class);
   function Create return ModifyTable_Access;
   function insert (This : in out ModifyTable) return Unbounded_String;
   function delete (This : in out ModifyTable) return Unbounded_String;
   function update (This : in out ModifyTable) return Unbounded_String;

end admin.taghelpers.ModifyTable_Package;


