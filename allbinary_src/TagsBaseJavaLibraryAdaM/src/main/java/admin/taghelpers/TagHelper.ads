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
with admin.taghelpers.TagHelperInterface_Package; use admin.taghelpers.TagHelperInterface_Package;

package admin.taghelpers.TagHelper_Package is

   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type TagHelper is tagged;
   type TagHelper_Access is access all TagHelper'Class;
   type TagHelper_Access_Array is array (Natural range <>) of TagHelper_Access;
   type TagHelper_Access_Array_Access is access all TagHelper_Access_Array;

   type TagHelper is new TagHelperInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out TagHelper'Class);
   function Create return TagHelper_Access;

end admin.taghelpers.TagHelper_Package;


