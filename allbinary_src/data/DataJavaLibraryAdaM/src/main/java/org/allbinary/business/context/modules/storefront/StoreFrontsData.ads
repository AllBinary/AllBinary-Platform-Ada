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
limited with org.allbinary.business.context.modules.storefront.StoreFrontsData_Package;
package org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References is
   type StoreFrontsData_Access is access all org.allbinary.business.context.modules.storefront.StoreFrontsData_Package.StoreFrontsData'Class;
   type StoreFrontsData_Access_Array is array (Natural range <>) of StoreFrontsData_Access;
   type StoreFrontsData_Access_Array_Access is access all StoreFrontsData_Access_Array;
   type StoreFrontsData_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsData_Access_Array_Access;
   type StoreFrontsData_Access_Array_Access_Array_Access is access all StoreFrontsData_Access_Array_Access_Array;
   type StoreFrontsData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontsData_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontsData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontsData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontsData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontsData_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontsData_Access_Array_Object'Class then StoreFrontsData_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontsData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontsData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontsData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontsData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontsData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontsData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontsData_Access_Array_Access_Array_Object'Class then StoreFrontsData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References;

with org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.context.modules.storefront.StoreFrontsData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontsData_Access is org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References.StoreFrontsData_Access;
   function "=" (Left, Right : StoreFrontsData_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References."=";
   subtype StoreFrontsData_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References.StoreFrontsData_Access_Array;
   function "=" (Left, Right : StoreFrontsData_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References."=";
   subtype StoreFrontsData_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References.StoreFrontsData_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsData_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References."=";
   function Java_Box (Value : StoreFrontsData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References.Java_Box;
   function Java_Unbox_StoreFrontsData_Access_Array (Value : access Java_Object'Class) return StoreFrontsData_Access_Array_Access renames org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References.Java_Unbox_StoreFrontsData_Access_Array;
   subtype StoreFrontsData_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References.StoreFrontsData_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontsData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References."=";
   subtype StoreFrontsData_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References.StoreFrontsData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References."=";
   function Java_Box (Value : StoreFrontsData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References.Java_Box;
   function Java_Unbox_StoreFrontsData_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontsData_Access_Array_Access_Array_Access renames org.allbinary.business.context.modules.storefront.StoreFrontsData_Package_References.Java_Unbox_StoreFrontsData_Access_Array_Access_Array;

   type StoreFrontsData is new Java_Object with record
      TYPE_Id : Unbounded_String;
      RETAIL : Unbounded_String;
      SUBSCRIPTION : Unbounded_String;
      AUCTION : Unbounded_String;
      NEWS : Unbounded_String;
      BLOG : Unbounded_String;
      FORUM : Unbounded_String;
   end record;
   instance : StoreFrontsData_Access;

   procedure Initialize (This : in out StoreFrontsData'Class);
   function Create return StoreFrontsData_Access;
   function getInstance return StoreFrontsData_Access;

end org.allbinary.business.context.modules.storefront.StoreFrontsData_Package;


