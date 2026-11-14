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

with AllBinary_Java;
limited with tags.admin.storefront.StoreFrontTag_Package;
package tags.admin.storefront.StoreFrontTag_Package_References is
   type StoreFrontTag_Access is access all tags.admin.storefront.StoreFrontTag_Package.StoreFrontTag'Class;
   type StoreFrontTag_Access_Array is array (Natural range <>) of StoreFrontTag_Access;
   type StoreFrontTag_Access_Array_Access is access all StoreFrontTag_Access_Array;
   type StoreFrontTag_Access_Array_Access_Array is array (Natural range <>) of StoreFrontTag_Access_Array_Access;
   type StoreFrontTag_Access_Array_Access_Array_Access is access all StoreFrontTag_Access_Array_Access_Array;
   type StoreFrontTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontTag_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontTag_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontTag_Access_Array_Object'Class then StoreFrontTag_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontTag_Access_Array_Access_Array_Object'Class then StoreFrontTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end tags.admin.storefront.StoreFrontTag_Package_References;

with tags.admin.storefront.StoreFrontTag_Package_References;
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

package tags.admin.storefront.StoreFrontTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontTag_Access is tags.admin.storefront.StoreFrontTag_Package_References.StoreFrontTag_Access;
   function "=" (Left, Right : StoreFrontTag_Access) return Boolean renames tags.admin.storefront.StoreFrontTag_Package_References."=";
   subtype StoreFrontTag_Access_Array is tags.admin.storefront.StoreFrontTag_Package_References.StoreFrontTag_Access_Array;
   function "=" (Left, Right : StoreFrontTag_Access_Array) return Boolean renames tags.admin.storefront.StoreFrontTag_Package_References."=";
   subtype StoreFrontTag_Access_Array_Access is tags.admin.storefront.StoreFrontTag_Package_References.StoreFrontTag_Access_Array_Access;
   function "=" (Left, Right : StoreFrontTag_Access_Array_Access) return Boolean renames tags.admin.storefront.StoreFrontTag_Package_References."=";
   function Java_Box (Value : StoreFrontTag_Access_Array_Access) return Java_Object_Access renames tags.admin.storefront.StoreFrontTag_Package_References.Java_Box;
   function Java_Unbox_StoreFrontTag_Access_Array (Value : access Java_Object'Class) return StoreFrontTag_Access_Array_Access renames tags.admin.storefront.StoreFrontTag_Package_References.Java_Unbox_StoreFrontTag_Access_Array;
   subtype StoreFrontTag_Access_Array_Access_Array is tags.admin.storefront.StoreFrontTag_Package_References.StoreFrontTag_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontTag_Access_Array_Access_Array) return Boolean renames tags.admin.storefront.StoreFrontTag_Package_References."=";
   subtype StoreFrontTag_Access_Array_Access_Array_Access is tags.admin.storefront.StoreFrontTag_Package_References.StoreFrontTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontTag_Access_Array_Access_Array_Access) return Boolean renames tags.admin.storefront.StoreFrontTag_Package_References."=";
   function Java_Box (Value : StoreFrontTag_Access_Array_Access_Array_Access) return Java_Object_Access renames tags.admin.storefront.StoreFrontTag_Package_References.Java_Box;
   function Java_Unbox_StoreFrontTag_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontTag_Access_Array_Access_Array_Access renames tags.admin.storefront.StoreFrontTag_Package_References.Java_Unbox_StoreFrontTag_Access_Array_Access_Array;

   type StoreFrontTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out StoreFrontTag'Class);
   function Create return StoreFrontTag_Access;
   function doStartTag (This : in out StoreFrontTag) return Integer;

end tags.admin.storefront.StoreFrontTag_Package;


