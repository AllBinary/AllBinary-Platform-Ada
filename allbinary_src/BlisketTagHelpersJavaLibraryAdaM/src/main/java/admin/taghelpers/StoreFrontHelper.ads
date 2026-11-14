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
limited with admin.taghelpers.StoreFrontHelper_Package;
package admin.taghelpers.StoreFrontHelper_Package_References is
   type StoreFrontHelper_Access is access all admin.taghelpers.StoreFrontHelper_Package.StoreFrontHelper'Class;
   type StoreFrontHelper_Access_Array is array (Natural range <>) of StoreFrontHelper_Access;
   type StoreFrontHelper_Access_Array_Access is access all StoreFrontHelper_Access_Array;
   type StoreFrontHelper_Access_Array_Access_Array is array (Natural range <>) of StoreFrontHelper_Access_Array_Access;
   type StoreFrontHelper_Access_Array_Access_Array_Access is access all StoreFrontHelper_Access_Array_Access_Array;
   type StoreFrontHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontHelper_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontHelper_Access_Array_Object'Class then StoreFrontHelper_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontHelper_Access_Array_Access_Array_Object'Class then StoreFrontHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.StoreFrontHelper_Package_References;

with admin.taghelpers.StoreFrontHelper_Package_References;
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
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.StoreFrontHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Reference_Types is
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontHelper_Access is admin.taghelpers.StoreFrontHelper_Package_References.StoreFrontHelper_Access;
   function "=" (Left, Right : StoreFrontHelper_Access) return Boolean renames admin.taghelpers.StoreFrontHelper_Package_References."=";
   subtype StoreFrontHelper_Access_Array is admin.taghelpers.StoreFrontHelper_Package_References.StoreFrontHelper_Access_Array;
   function "=" (Left, Right : StoreFrontHelper_Access_Array) return Boolean renames admin.taghelpers.StoreFrontHelper_Package_References."=";
   subtype StoreFrontHelper_Access_Array_Access is admin.taghelpers.StoreFrontHelper_Package_References.StoreFrontHelper_Access_Array_Access;
   function "=" (Left, Right : StoreFrontHelper_Access_Array_Access) return Boolean renames admin.taghelpers.StoreFrontHelper_Package_References."=";
   function Java_Box (Value : StoreFrontHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.StoreFrontHelper_Package_References.Java_Box;
   function Java_Unbox_StoreFrontHelper_Access_Array (Value : access Java_Object'Class) return StoreFrontHelper_Access_Array_Access renames admin.taghelpers.StoreFrontHelper_Package_References.Java_Unbox_StoreFrontHelper_Access_Array;
   subtype StoreFrontHelper_Access_Array_Access_Array is admin.taghelpers.StoreFrontHelper_Package_References.StoreFrontHelper_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.StoreFrontHelper_Package_References."=";
   subtype StoreFrontHelper_Access_Array_Access_Array_Access is admin.taghelpers.StoreFrontHelper_Package_References.StoreFrontHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.StoreFrontHelper_Package_References."=";
   function Java_Box (Value : StoreFrontHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.StoreFrontHelper_Package_References.Java_Box;
   function Java_Unbox_StoreFrontHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontHelper_Access_Array_Access_Array_Access renames admin.taghelpers.StoreFrontHelper_Package_References.Java_Unbox_StoreFrontHelper_Access_Array_Access_Array;

   type StoreFrontHelper is new TagHelper with record
      storeFrontInterface : StoreFrontInterface_Access;
      currentLocation : Unbounded_String;
      currentHomeLocation : Unbounded_String;
   end record;

   procedure Initialize (This : in out StoreFrontHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreFrontHelper_Access;
   function getCurrentLocation (This : in out StoreFrontHelper) return Unbounded_String;
   function getCurrentHomeLocation (This : in out StoreFrontHelper) return Unbounded_String;

end admin.taghelpers.StoreFrontHelper_Package;


