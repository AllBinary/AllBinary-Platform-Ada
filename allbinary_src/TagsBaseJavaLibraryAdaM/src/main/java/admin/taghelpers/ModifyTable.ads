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

limited with admin.taghelpers.ModifyTable_Package;
package admin.taghelpers.ModifyTable_Package_References is
   type ModifyTable_Access is access all admin.taghelpers.ModifyTable_Package.ModifyTable'Class;
   type ModifyTable_Access_Array is array (Natural range <>) of ModifyTable_Access;
   type ModifyTable_Access_Array_Access is access all ModifyTable_Access_Array;
   type ModifyTable_Access_Array_Access_Array is array (Natural range <>) of ModifyTable_Access_Array_Access;
   type ModifyTable_Access_Array_Access_Array_Access is access all ModifyTable_Access_Array_Access_Array;
end admin.taghelpers.ModifyTable_Package_References;

with admin.taghelpers.ModifyTable_Package_References;
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
limited with tags.TagStrings_Package;
with tags.TagStrings_Package_References;
with admin.taghelpers.ModifyTableInterface_Package; use admin.taghelpers.ModifyTableInterface_Package;

package admin.taghelpers.ModifyTable_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package TagStrings_Package renames Standard.tags.TagStrings_Package;
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
   subtype TagStrings_Access is tags.TagStrings_Package_References.TagStrings_Access;
   use type TagStrings_Access;
   subtype TagStrings_Access_Array is tags.TagStrings_Package_References.TagStrings_Access_Array;
   use type TagStrings_Access_Array;
   subtype TagStrings_Access_Array_Access is tags.TagStrings_Package_References.TagStrings_Access_Array_Access;
   use type TagStrings_Access_Array_Access;
   subtype TagStrings_Access_Array_Access_Array is tags.TagStrings_Package_References.TagStrings_Access_Array_Access_Array;
   use type TagStrings_Access_Array_Access_Array;
   subtype TagStrings_Access_Array_Access_Array_Access is tags.TagStrings_Package_References.TagStrings_Access_Array_Access_Array_Access;
   use type TagStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ModifyTable_Access is admin.taghelpers.ModifyTable_Package_References.ModifyTable_Access;
   function "=" (Left, Right : ModifyTable_Access) return Boolean renames admin.taghelpers.ModifyTable_Package_References."=";
   subtype ModifyTable_Access_Array is admin.taghelpers.ModifyTable_Package_References.ModifyTable_Access_Array;
   function "=" (Left, Right : ModifyTable_Access_Array) return Boolean renames admin.taghelpers.ModifyTable_Package_References."=";
   subtype ModifyTable_Access_Array_Access is admin.taghelpers.ModifyTable_Package_References.ModifyTable_Access_Array_Access;
   function "=" (Left, Right : ModifyTable_Access_Array_Access) return Boolean renames admin.taghelpers.ModifyTable_Package_References."=";
   subtype ModifyTable_Access_Array_Access_Array is admin.taghelpers.ModifyTable_Package_References.ModifyTable_Access_Array_Access_Array;
   function "=" (Left, Right : ModifyTable_Access_Array_Access_Array) return Boolean renames admin.taghelpers.ModifyTable_Package_References."=";
   subtype ModifyTable_Access_Array_Access_Array_Access is admin.taghelpers.ModifyTable_Package_References.ModifyTable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ModifyTable_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.ModifyTable_Package_References."=";

   type ModifyTable is new Java_Object and ModifyTableInterface with record
      commonStrings : CommonStrings_Access;
      tagStrings : TagStrings_Access;
   end record;

   procedure Initialize (This : in out ModifyTable'Class);
   function Create return ModifyTable_Access;
   function insert (This : in out ModifyTable) return Unbounded_String;
   function delete (This : in out ModifyTable) return Unbounded_String;
   function update (This : in out ModifyTable) return Unbounded_String;

end admin.taghelpers.ModifyTable_Package;


