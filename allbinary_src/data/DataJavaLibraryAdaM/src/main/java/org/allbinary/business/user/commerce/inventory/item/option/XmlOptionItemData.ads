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
limited with org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package;
package org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References is
   type XmlOptionItemData_Access is access all org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package.XmlOptionItemData'Class;
   type XmlOptionItemData_Access_Array is array (Natural range <>) of XmlOptionItemData_Access;
   type XmlOptionItemData_Access_Array_Access is access all XmlOptionItemData_Access_Array;
   type XmlOptionItemData_Access_Array_Access_Array is array (Natural range <>) of XmlOptionItemData_Access_Array_Access;
   type XmlOptionItemData_Access_Array_Access_Array_Access is access all XmlOptionItemData_Access_Array_Access_Array;
   type XmlOptionItemData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XmlOptionItemData_Access_Array_Access;
   end record;
   function Java_Box (Value : XmlOptionItemData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XmlOptionItemData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XmlOptionItemData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XmlOptionItemData_Access_Array_Access is (if Value /= null and then Value.all in XmlOptionItemData_Access_Array_Object'Class then XmlOptionItemData_Access_Array_Object'Class (Value.all).Value else null);
   type XmlOptionItemData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : XmlOptionItemData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : XmlOptionItemData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new XmlOptionItemData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_XmlOptionItemData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return XmlOptionItemData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in XmlOptionItemData_Access_Array_Access_Array_Object'Class then XmlOptionItemData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References;

with org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype XmlOptionItemData_Access is org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References.XmlOptionItemData_Access;
   function "=" (Left, Right : XmlOptionItemData_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References."=";
   subtype XmlOptionItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References.XmlOptionItemData_Access_Array;
   function "=" (Left, Right : XmlOptionItemData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References."=";
   subtype XmlOptionItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References.XmlOptionItemData_Access_Array_Access;
   function "=" (Left, Right : XmlOptionItemData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References."=";
   function Java_Box (Value : XmlOptionItemData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References.Java_Box;
   function Java_Unbox_XmlOptionItemData_Access_Array (Value : access Java_Object'Class) return XmlOptionItemData_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References.Java_Unbox_XmlOptionItemData_Access_Array;
   subtype XmlOptionItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References.XmlOptionItemData_Access_Array_Access_Array;
   function "=" (Left, Right : XmlOptionItemData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References."=";
   subtype XmlOptionItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References.XmlOptionItemData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : XmlOptionItemData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References."=";
   function Java_Box (Value : XmlOptionItemData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References.Java_Box;
   function Java_Unbox_XmlOptionItemData_Access_Array_Access_Array (Value : access Java_Object'Class) return XmlOptionItemData_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package_References.Java_Unbox_XmlOptionItemData_Access_Array_Access_Array;

   type XmlOptionItemData is new Java_Object with null record;
   XML_FILE_STATUS : Unbounded_String;
   OPTION_XML_FILE : Unbounded_String;

   procedure Initialize (This : in out XmlOptionItemData'Class);
   function Create return XmlOptionItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package;


