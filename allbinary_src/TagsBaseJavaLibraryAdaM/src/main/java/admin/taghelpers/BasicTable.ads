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
with admin.taghelpers.BasicTableInterface_Package; use admin.taghelpers.BasicTableInterface_Package;

package admin.taghelpers.BasicTable_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type BasicTable is tagged;
   type BasicTable_Access is access all BasicTable'Class;
   type BasicTable_Access_Array is array (Natural range <>) of BasicTable_Access;
   type BasicTable_Access_Array_Access is access all BasicTable_Access_Array;

   type BasicTable is new BasicTableInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out BasicTable'Class);
   function Create return BasicTable_Access;
   function drop (This : in out BasicTable) return Unbounded_String;
   procedure drop (This : in out BasicTable);
   function create (This : in out BasicTable) return Unbounded_String;
   procedure create (This : in out BasicTable);
   function restore (This : in out BasicTable) return Unbounded_String;
   procedure restore (This : in out BasicTable);
   function backup (This : in out BasicTable) return Unbounded_String;
   procedure backup (This : in out BasicTable);

end admin.taghelpers.BasicTable_Package;


