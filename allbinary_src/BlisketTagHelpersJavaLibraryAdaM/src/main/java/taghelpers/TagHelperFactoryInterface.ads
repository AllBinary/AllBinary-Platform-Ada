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

limited with taghelpers.TagHelperFactoryInterface_Package;
package taghelpers.TagHelperFactoryInterface_Package_References is
   type TagHelperFactoryInterface_Access is access all taghelpers.TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class;
   type TagHelperFactoryInterface_Access_Array is array (Natural range <>) of TagHelperFactoryInterface_Access;
   type TagHelperFactoryInterface_Access_Array_Access is access all TagHelperFactoryInterface_Access_Array;
   type TagHelperFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of TagHelperFactoryInterface_Access_Array_Access;
   type TagHelperFactoryInterface_Access_Array_Access_Array_Access is access all TagHelperFactoryInterface_Access_Array_Access_Array;
end taghelpers.TagHelperFactoryInterface_Package_References;

with taghelpers.TagHelperFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;

package taghelpers.TagHelperFactoryInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type TagHelperFactoryInterface is interface;
   subtype TagHelperFactoryInterface_Access is taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access;
   function "=" (Left, Right : TagHelperFactoryInterface_Access) return Boolean renames taghelpers.TagHelperFactoryInterface_Package_References."=";
   subtype TagHelperFactoryInterface_Access_Array is taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array;
   function "=" (Left, Right : TagHelperFactoryInterface_Access_Array) return Boolean renames taghelpers.TagHelperFactoryInterface_Package_References."=";
   subtype TagHelperFactoryInterface_Access_Array_Access is taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : TagHelperFactoryInterface_Access_Array_Access) return Boolean renames taghelpers.TagHelperFactoryInterface_Package_References."=";
   subtype TagHelperFactoryInterface_Access_Array_Access_Array is taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TagHelperFactoryInterface_Access_Array_Access_Array) return Boolean renames taghelpers.TagHelperFactoryInterface_Package_References."=";
   subtype TagHelperFactoryInterface_Access_Array_Access_Array_Access is taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TagHelperFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames taghelpers.TagHelperFactoryInterface_Package_References."=";
   function Java_Object_Access_From_TagHelperFactoryInterface (Value : TagHelperFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out TagHelperFactoryInterface; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access is abstract;
   procedure getInstance (This : in out TagHelperFactoryInterface; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is abstract;

end taghelpers.TagHelperFactoryInterface_Package;


