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

limited with tags.CustomTagSupport_Package;
package tags.CustomTagSupport_Package_References is
   type CustomTagSupport_Access is access all tags.CustomTagSupport_Package.CustomTagSupport'Class;
   type CustomTagSupport_Access_Array is array (Natural range <>) of CustomTagSupport_Access;
   type CustomTagSupport_Access_Array_Access is access all CustomTagSupport_Access_Array;
   type CustomTagSupport_Access_Array_Access_Array is array (Natural range <>) of CustomTagSupport_Access_Array_Access;
   type CustomTagSupport_Access_Array_Access_Array_Access is access all CustomTagSupport_Access_Array_Access_Array;
end tags.CustomTagSupport_Package_References;

with tags.CustomTagSupport_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with tags.TagStrings_Package;
with tags.TagStrings_Package_References;

package tags.CustomTagSupport_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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


   subtype CustomTagSupport_Access is tags.CustomTagSupport_Package_References.CustomTagSupport_Access;
   function "=" (Left, Right : CustomTagSupport_Access) return Boolean renames tags.CustomTagSupport_Package_References."=";
   subtype CustomTagSupport_Access_Array is tags.CustomTagSupport_Package_References.CustomTagSupport_Access_Array;
   function "=" (Left, Right : CustomTagSupport_Access_Array) return Boolean renames tags.CustomTagSupport_Package_References."=";
   subtype CustomTagSupport_Access_Array_Access is tags.CustomTagSupport_Package_References.CustomTagSupport_Access_Array_Access;
   function "=" (Left, Right : CustomTagSupport_Access_Array_Access) return Boolean renames tags.CustomTagSupport_Package_References."=";
   subtype CustomTagSupport_Access_Array_Access_Array is tags.CustomTagSupport_Package_References.CustomTagSupport_Access_Array_Access_Array;
   function "=" (Left, Right : CustomTagSupport_Access_Array_Access_Array) return Boolean renames tags.CustomTagSupport_Package_References."=";
   subtype CustomTagSupport_Access_Array_Access_Array_Access is tags.CustomTagSupport_Package_References.CustomTagSupport_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomTagSupport_Access_Array_Access_Array_Access) return Boolean renames tags.CustomTagSupport_Package_References."=";

   type CustomTagSupport is new Java_Object with record
      commonStrings : CommonStrings_Access;
      tagStrings : TagStrings_Access;
   end record;

   procedure Initialize (This : in out CustomTagSupport'Class);
   function Create return CustomTagSupport_Access;

end tags.CustomTagSupport_Package;


