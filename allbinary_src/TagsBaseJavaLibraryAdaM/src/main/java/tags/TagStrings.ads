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
limited with tags.TagStrings_Package;
package tags.TagStrings_Package_References is
   type TagStrings_Access is access all tags.TagStrings_Package.TagStrings'Class;
   type TagStrings_Access_Array is array (Natural range <>) of TagStrings_Access;
   type TagStrings_Access_Array_Access is access all TagStrings_Access_Array;
   type TagStrings_Access_Array_Access_Array is array (Natural range <>) of TagStrings_Access_Array_Access;
   type TagStrings_Access_Array_Access_Array_Access is access all TagStrings_Access_Array_Access_Array;
   type TagStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TagStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : TagStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TagStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TagStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TagStrings_Access_Array_Access is (if Value /= null and then Value.all in TagStrings_Access_Array_Object'Class then TagStrings_Access_Array_Object'Class (Value.all).Value else null);
   type TagStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TagStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TagStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TagStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TagStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TagStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TagStrings_Access_Array_Access_Array_Object'Class then TagStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end tags.TagStrings_Package_References;

with tags.TagStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package tags.TagStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TagStrings_Access is tags.TagStrings_Package_References.TagStrings_Access;
   function "=" (Left, Right : TagStrings_Access) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array is tags.TagStrings_Package_References.TagStrings_Access_Array;
   function "=" (Left, Right : TagStrings_Access_Array) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array_Access is tags.TagStrings_Package_References.TagStrings_Access_Array_Access;
   function "=" (Left, Right : TagStrings_Access_Array_Access) return Boolean renames tags.TagStrings_Package_References."=";
   function Java_Box (Value : TagStrings_Access_Array_Access) return Java_Object_Access renames tags.TagStrings_Package_References.Java_Box;
   function Java_Unbox_TagStrings_Access_Array (Value : access Java_Object'Class) return TagStrings_Access_Array_Access renames tags.TagStrings_Package_References.Java_Unbox_TagStrings_Access_Array;
   subtype TagStrings_Access_Array_Access_Array is tags.TagStrings_Package_References.TagStrings_Access_Array_Access_Array;
   function "=" (Left, Right : TagStrings_Access_Array_Access_Array) return Boolean renames tags.TagStrings_Package_References."=";
   subtype TagStrings_Access_Array_Access_Array_Access is tags.TagStrings_Package_References.TagStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TagStrings_Access_Array_Access_Array_Access) return Boolean renames tags.TagStrings_Package_References."=";
   function Java_Box (Value : TagStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames tags.TagStrings_Package_References.Java_Box;
   function Java_Unbox_TagStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return TagStrings_Access_Array_Access_Array_Access renames tags.TagStrings_Package_References.Java_Unbox_TagStrings_Access_Array_Access_Array;

   type TagStrings is new Java_Object with record
      DO_START_TAG : Unbounded_String;
   end record;
   instance : TagStrings_Access;

   procedure Initialize (This : in out TagStrings'Class);
   function Create return TagStrings_Access;
   function getInstance return TagStrings_Access;

end tags.TagStrings_Package;


