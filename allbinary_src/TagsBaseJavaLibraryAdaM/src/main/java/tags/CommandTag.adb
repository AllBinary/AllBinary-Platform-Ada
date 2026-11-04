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


with tags.TagStrings_Package; use tags.TagStrings_Package;
with tags.CustomTagSupport_Package;
with tags.TagStrings_Package;

package body tags.CommandTag_Package is

   subtype TagStrings_Access is tags.TagStrings_Package_References.TagStrings_Access;
   function "=" (Left, Right : TagStrings_Access) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array is tags.TagStrings_Package_References.TagStrings_Access_Array;
   function "=" (Left, Right : TagStrings_Access_Array) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array_Access is tags.TagStrings_Package_References.TagStrings_Access_Array_Access;
   function "=" (Left, Right : TagStrings_Access_Array_Access) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array_Access_Array is tags.TagStrings_Package_References.TagStrings_Access_Array_Access_Array;
   function "=" (Left, Right : TagStrings_Access_Array_Access_Array) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array_Access_Array_Access is tags.TagStrings_Package_References.TagStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TagStrings_Access_Array_Access_Array_Access) return Boolean renames tags.TagStrings_Package_References."=";
   procedure Initialize_Fields (This : in out CommandTag'Class) is
   begin
      null;
      This.tagStrings := TagStrings_Package.getInstance;
      This.command := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out CommandTag'Class) is
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CommandTag_Access is
      This : constant CommandTag_Access := new CommandTag;
   begin
      CommandTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setCommand (This : in out CommandTag; command : Unbounded_String) is
   begin
        This.command := command;
   end setCommand;

   function getCommand (This : in out CommandTag) return Unbounded_String is
   begin
        return This.command;
   end getCommand;

end tags.CommandTag_Package;


