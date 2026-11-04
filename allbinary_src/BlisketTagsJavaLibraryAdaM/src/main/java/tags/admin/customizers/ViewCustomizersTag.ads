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

limited with tags.admin.customizers.ViewCustomizersTag_Package;
package tags.admin.customizers.ViewCustomizersTag_Package_References is
   type ViewCustomizersTag_Access is access all tags.admin.customizers.ViewCustomizersTag_Package.ViewCustomizersTag'Class;
   type ViewCustomizersTag_Access_Array is array (Natural range <>) of ViewCustomizersTag_Access;
   type ViewCustomizersTag_Access_Array_Access is access all ViewCustomizersTag_Access_Array;
   type ViewCustomizersTag_Access_Array_Access_Array is array (Natural range <>) of ViewCustomizersTag_Access_Array_Access;
   type ViewCustomizersTag_Access_Array_Access_Array_Access is access all ViewCustomizersTag_Access_Array_Access_Array;
end tags.admin.customizers.ViewCustomizersTag_Package_References;

with tags.admin.customizers.ViewCustomizersTag_Package_References;
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
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ViewCustomizersTag_Access is tags.admin.customizers.ViewCustomizersTag_Package_References.ViewCustomizersTag_Access;
   function "=" (Left, Right : ViewCustomizersTag_Access) return Boolean renames tags.admin.customizers.ViewCustomizersTag_Package_References."=";
   subtype ViewCustomizersTag_Access_Array is tags.admin.customizers.ViewCustomizersTag_Package_References.ViewCustomizersTag_Access_Array;
   function "=" (Left, Right : ViewCustomizersTag_Access_Array) return Boolean renames tags.admin.customizers.ViewCustomizersTag_Package_References."=";
   subtype ViewCustomizersTag_Access_Array_Access is tags.admin.customizers.ViewCustomizersTag_Package_References.ViewCustomizersTag_Access_Array_Access;
   function "=" (Left, Right : ViewCustomizersTag_Access_Array_Access) return Boolean renames tags.admin.customizers.ViewCustomizersTag_Package_References."=";
   subtype ViewCustomizersTag_Access_Array_Access_Array is tags.admin.customizers.ViewCustomizersTag_Package_References.ViewCustomizersTag_Access_Array_Access_Array;
   function "=" (Left, Right : ViewCustomizersTag_Access_Array_Access_Array) return Boolean renames tags.admin.customizers.ViewCustomizersTag_Package_References."=";
   subtype ViewCustomizersTag_Access_Array_Access_Array_Access is tags.admin.customizers.ViewCustomizersTag_Package_References.ViewCustomizersTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewCustomizersTag_Access_Array_Access_Array_Access) return Boolean renames tags.admin.customizers.ViewCustomizersTag_Package_References."=";

   type ViewCustomizersTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out ViewCustomizersTag'Class);
   function Create return ViewCustomizersTag_Access;
   function doStartTag (This : in out ViewCustomizersTag) return Integer;

end tags.admin.customizers.ViewCustomizersTag_Package;


