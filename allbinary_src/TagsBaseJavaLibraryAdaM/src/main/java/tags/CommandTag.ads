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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;
with tags.TagStrings_Package; use tags.TagStrings_Package;

package tags.CommandTag_Package is


   type CommandTag is tagged;
   type CommandTag_Access is access all CommandTag'Class;
   type CommandTag_Access_Array is array (Natural range <>) of CommandTag_Access;
   type CommandTag_Access_Array_Access is access all CommandTag_Access_Array;

   type CommandTag is new CustomTagSupport with record
      tagStrings : TagStrings_Access;
      command : Unbounded_String;
   end record;

   procedure Initialize (This : in out CommandTag'Class);
   function Create return CommandTag_Access;
   procedure setCommand (This : in out CommandTag; command : Unbounded_String);
   function getCommand (This : in out CommandTag) return Unbounded_String;

end tags.CommandTag_Package;


