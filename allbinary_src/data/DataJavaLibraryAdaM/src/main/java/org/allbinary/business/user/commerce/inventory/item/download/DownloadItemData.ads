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
limited with org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;
package org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References is
   type DownloadItemData_Access is access all org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package.DownloadItemData'Class;
   type DownloadItemData_Access_Array is array (Natural range <>) of DownloadItemData_Access;
   type DownloadItemData_Access_Array_Access is access all DownloadItemData_Access_Array;
   type DownloadItemData_Access_Array_Access_Array is array (Natural range <>) of DownloadItemData_Access_Array_Access;
   type DownloadItemData_Access_Array_Access_Array_Access is access all DownloadItemData_Access_Array_Access_Array;
   type DownloadItemData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownloadItemData_Access_Array_Access;
   end record;
   function Java_Box (Value : DownloadItemData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownloadItemData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownloadItemData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownloadItemData_Access_Array_Access is (if Value /= null and then Value.all in DownloadItemData_Access_Array_Object'Class then DownloadItemData_Access_Array_Object'Class (Value.all).Value else null);
   type DownloadItemData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownloadItemData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DownloadItemData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownloadItemData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownloadItemData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownloadItemData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DownloadItemData_Access_Array_Access_Array_Object'Class then DownloadItemData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References;

with org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DownloadItemData_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References.DownloadItemData_Access;
   function "=" (Left, Right : DownloadItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References."=";
   subtype DownloadItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References.DownloadItemData_Access_Array;
   function "=" (Left, Right : DownloadItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References."=";
   subtype DownloadItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References.DownloadItemData_Access_Array_Access;
   function "=" (Left, Right : DownloadItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References."=";
   function Java_Box (Value : DownloadItemData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References.Java_Box;
   function Java_Unbox_DownloadItemData_Access_Array (Value : access Java_Object'Class) return DownloadItemData_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References.Java_Unbox_DownloadItemData_Access_Array;
   subtype DownloadItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References.DownloadItemData_Access_Array_Access_Array;
   function "=" (Left, Right : DownloadItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References."=";
   subtype DownloadItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References.DownloadItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownloadItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References."=";
   function Java_Box (Value : DownloadItemData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References.Java_Box;
   function Java_Unbox_DownloadItemData_Access_Array_Access_Array (Value : access Java_Object'Class) return DownloadItemData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package_References.Java_Unbox_DownloadItemData_Access_Array_Access_Array;

   type DownloadItemData is new Java_Object with null record;
   NAME : Unbounded_String;
   ID : Unbounded_String;
   SYSTEM : Unbounded_String;
   PLATFORM : Unbounded_String;
   SPECIAL_NAME : Unbounded_String;
   VERSION : Unbounded_String;
   CHANGES : Unbounded_String;
   LICENSE_FILE : Unbounded_String;
   FILE : Unbounded_String;
   EXTRA_FILES : Unbounded_String;
   SIZE : Unbounded_String;
   VALID_TIME : Unbounded_String;
   VALID_TIME_YEARS : Unbounded_String;
   VALID_TIME_MONTHS : Unbounded_String;
   VALID_TIME_DAYS : Unbounded_String;
   VALID_TIME_HOURS : Unbounded_String;
   VALID_TIME_MINUTES : Unbounded_String;
   VALID_TIME_SECONDS : Unbounded_String;
   RETRIES : Unbounded_String;

   procedure Initialize (This : in out DownloadItemData'Class);
   function Create return DownloadItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData_Package;


