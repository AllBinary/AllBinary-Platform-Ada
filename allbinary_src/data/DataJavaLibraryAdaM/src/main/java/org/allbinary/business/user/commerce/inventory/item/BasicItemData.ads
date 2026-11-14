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
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
package org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References is
   type BasicItemData_Access is access all org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package.BasicItemData'Class;
   type BasicItemData_Access_Array is array (Natural range <>) of BasicItemData_Access;
   type BasicItemData_Access_Array_Access is access all BasicItemData_Access_Array;
   type BasicItemData_Access_Array_Access_Array is array (Natural range <>) of BasicItemData_Access_Array_Access;
   type BasicItemData_Access_Array_Access_Array_Access is access all BasicItemData_Access_Array_Access_Array;
   type BasicItemData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicItemData_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicItemData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicItemData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicItemData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicItemData_Access_Array_Access is (if Value /= null and then Value.all in BasicItemData_Access_Array_Object'Class then BasicItemData_Access_Array_Object'Class (Value.all).Value else null);
   type BasicItemData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicItemData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicItemData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicItemData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicItemData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicItemData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicItemData_Access_Array_Access_Array_Object'Class then BasicItemData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;

with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   function "=" (Left, Right : BasicItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   function "=" (Left, Right : BasicItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   function "=" (Left, Right : BasicItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   function Java_Box (Value : BasicItemData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.Java_Box;
   function Java_Unbox_BasicItemData_Access_Array (Value : access Java_Object'Class) return BasicItemData_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.Java_Unbox_BasicItemData_Access_Array;
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   function "=" (Left, Right : BasicItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References."=";
   function Java_Box (Value : BasicItemData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.Java_Box;
   function Java_Unbox_BasicItemData_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicItemData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.Java_Unbox_BasicItemData_Access_Array_Access_Array;

   type BasicItemData is new Java_Object with record
      ITEM : Unbounded_String;
      TOTAL : Unbounded_String;
      ID : Unbounded_String;
      NUMBER : Unbounded_String;
      INBASKETS : Unbounded_String;
      WEIGHT : Unbounded_String;
      NEWORUSED : Unbounded_String;
      SUMMARY : Unbounded_String;
      DISTRIBUTOR : Unbounded_String;
      IDUSEDBYDISTRIBUTOR : Unbounded_String;
      PRODUCEDBY : Unbounded_String;
      PRODUCTIONDATE : Unbounded_String;
      STARTPRODUCTIONDATE : Unbounded_String;
      DESCRIPTION : Unbounded_String;
      KEYWORDS : Unbounded_String;
      CATEGORY : Unbounded_String;
      TYPE_Id : Unbounded_String;
      IMAGE : Unbounded_String;
      SMALLIMAGE : Unbounded_String;
      MEDIUMIMAGE : Unbounded_String;
      LARGEIMAGE : Unbounded_String;
      PRICE : Unbounded_String;
      COMMENT : Unbounded_String;
      CUSTOMS : Unbounded_String;
      DOWNLOADS : Unbounded_String;
      GROUPS : Unbounded_String;
      OPTIONS : Unbounded_String;
      PERMISSIONS : Unbounded_String;
      SPECIALS : Unbounded_String;
   end record;
   instance : BasicItemData_Access;

   procedure Initialize (This : in out BasicItemData'Class);
   function Create return BasicItemData_Access;
   function getInstance return BasicItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;


