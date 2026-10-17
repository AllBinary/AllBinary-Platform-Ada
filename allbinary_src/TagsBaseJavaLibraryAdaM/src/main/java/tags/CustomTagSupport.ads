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
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package tags.CustomTagSupport_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type CustomTagSupport is tagged;
   type CustomTagSupport_Access is access all CustomTagSupport'Class;
   type CustomTagSupport_Access_Array is array (Natural range <>) of CustomTagSupport_Access;
   type CustomTagSupport_Access_Array_Access is access all CustomTagSupport_Access_Array;

   type CustomTagSupport is new TagSupport with record
      commonStrings : CommonStrings_Access;
      tagStrings : TagStrings_Access;
   end record;

   procedure Initialize (This : in out CustomTagSupport'Class);
   function Create return CustomTagSupport_Access;

end tags.CustomTagSupport_Package;


