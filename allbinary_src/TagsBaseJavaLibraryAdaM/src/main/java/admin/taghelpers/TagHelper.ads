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

with AllBinary_Java;
limited with admin.taghelpers.TagHelper_Package;
package admin.taghelpers.TagHelper_Package_References is
   type TagHelper_Access is access all admin.taghelpers.TagHelper_Package.TagHelper'Class;
   type TagHelper_Access_Array is array (Natural range <>) of TagHelper_Access;
   type TagHelper_Access_Array_Access is access all TagHelper_Access_Array;
   type TagHelper_Access_Array_Access_Array is array (Natural range <>) of TagHelper_Access_Array_Access;
   type TagHelper_Access_Array_Access_Array_Access is access all TagHelper_Access_Array_Access_Array;
   type TagHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TagHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : TagHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TagHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TagHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TagHelper_Access_Array_Access is (if Value /= null and then Value.all in TagHelper_Access_Array_Object'Class then TagHelper_Access_Array_Object'Class (Value.all).Value else null);
   type TagHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TagHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TagHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TagHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TagHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TagHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TagHelper_Access_Array_Access_Array_Object'Class then TagHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.TagHelper_Package_References;

with admin.taghelpers.TagHelper_Package_References;
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
with admin.taghelpers.TagHelperInterface_Package; use admin.taghelpers.TagHelperInterface_Package;

package admin.taghelpers.TagHelper_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype TagHelper_Access is admin.taghelpers.TagHelper_Package_References.TagHelper_Access;
   function "=" (Left, Right : TagHelper_Access) return Boolean renames admin.taghelpers.TagHelper_Package_References."=";
   subtype TagHelper_Access_Array is admin.taghelpers.TagHelper_Package_References.TagHelper_Access_Array;
   function "=" (Left, Right : TagHelper_Access_Array) return Boolean renames admin.taghelpers.TagHelper_Package_References."=";
   subtype TagHelper_Access_Array_Access is admin.taghelpers.TagHelper_Package_References.TagHelper_Access_Array_Access;
   function "=" (Left, Right : TagHelper_Access_Array_Access) return Boolean renames admin.taghelpers.TagHelper_Package_References."=";
   function Java_Box (Value : TagHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.TagHelper_Package_References.Java_Box;
   function Java_Unbox_TagHelper_Access_Array (Value : access Java_Object'Class) return TagHelper_Access_Array_Access renames admin.taghelpers.TagHelper_Package_References.Java_Unbox_TagHelper_Access_Array;
   subtype TagHelper_Access_Array_Access_Array is admin.taghelpers.TagHelper_Package_References.TagHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TagHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.TagHelper_Package_References."=";
   subtype TagHelper_Access_Array_Access_Array_Access is admin.taghelpers.TagHelper_Package_References.TagHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TagHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.TagHelper_Package_References."=";
   function Java_Box (Value : TagHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.TagHelper_Package_References.Java_Box;
   function Java_Unbox_TagHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return TagHelper_Access_Array_Access_Array_Access renames admin.taghelpers.TagHelper_Package_References.Java_Unbox_TagHelper_Access_Array_Access_Array;

   type TagHelper is new Java_Object and TagHelperInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out TagHelper'Class);
   function Create return TagHelper_Access;

end admin.taghelpers.TagHelper_Package;


