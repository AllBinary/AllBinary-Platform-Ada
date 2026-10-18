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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.admin.customizers.ViewCustomizersTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;

   type ViewCustomizersTag is tagged;
   type ViewCustomizersTag_Access is access all ViewCustomizersTag'Class;
   type ViewCustomizersTag_Access_Array is array (Natural range <>) of ViewCustomizersTag_Access;
   type ViewCustomizersTag_Access_Array_Access is access all ViewCustomizersTag_Access_Array;
   type ViewCustomizersTag_Access_Array_Access_Array is array (Natural range <>) of ViewCustomizersTag_Access_Array_Access;
   type ViewCustomizersTag_Access_Array_Access_Array_Access is access all ViewCustomizersTag_Access_Array_Access_Array;

   type ViewCustomizersTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out ViewCustomizersTag'Class);
   function Create return ViewCustomizersTag_Access;
   function doStartTag (This : in out ViewCustomizersTag) return Integer;

end tags.admin.customizers.ViewCustomizersTag_Package;


