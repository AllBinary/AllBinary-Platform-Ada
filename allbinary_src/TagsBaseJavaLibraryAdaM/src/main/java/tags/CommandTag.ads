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

limited with tags.CommandTag_Package;
package tags.CommandTag_Package_References is
   type CommandTag_Access is access all tags.CommandTag_Package.CommandTag'Class;
   type CommandTag_Access_Array is array (Natural range <>) of CommandTag_Access;
   type CommandTag_Access_Array_Access is access all CommandTag_Access_Array;
   type CommandTag_Access_Array_Access_Array is array (Natural range <>) of CommandTag_Access_Array_Access;
   type CommandTag_Access_Array_Access_Array_Access is access all CommandTag_Access_Array_Access_Array;
end tags.CommandTag_Package_References;

with tags.CommandTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;
limited with tags.TagStrings_Package;
with tags.TagStrings_Package_References;

package tags.CommandTag_Package is

   package Reference_Types is
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


   subtype CommandTag_Access is tags.CommandTag_Package_References.CommandTag_Access;
   function "=" (Left, Right : CommandTag_Access) return Boolean renames tags.CommandTag_Package_References."=";
   subtype CommandTag_Access_Array is tags.CommandTag_Package_References.CommandTag_Access_Array;
   function "=" (Left, Right : CommandTag_Access_Array) return Boolean renames tags.CommandTag_Package_References."=";
   subtype CommandTag_Access_Array_Access is tags.CommandTag_Package_References.CommandTag_Access_Array_Access;
   function "=" (Left, Right : CommandTag_Access_Array_Access) return Boolean renames tags.CommandTag_Package_References."=";
   subtype CommandTag_Access_Array_Access_Array is tags.CommandTag_Package_References.CommandTag_Access_Array_Access_Array;
   function "=" (Left, Right : CommandTag_Access_Array_Access_Array) return Boolean renames tags.CommandTag_Package_References."=";
   subtype CommandTag_Access_Array_Access_Array_Access is tags.CommandTag_Package_References.CommandTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandTag_Access_Array_Access_Array_Access) return Boolean renames tags.CommandTag_Package_References."=";

   type CommandTag is new CustomTagSupport with record
      CommandTag_Field_tagStrings : TagStrings_Access;
      command : Unbounded_String;
   end record;

   procedure Initialize (This : in out CommandTag'Class);
   function Create return CommandTag_Access;
   procedure setCommand (This : in out CommandTag; command : Unbounded_String);
   function getCommand (This : in out CommandTag) return Unbounded_String;

end tags.CommandTag_Package;


