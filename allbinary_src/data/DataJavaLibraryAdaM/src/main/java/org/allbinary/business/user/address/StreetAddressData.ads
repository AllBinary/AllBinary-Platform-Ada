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
limited with org.allbinary.business.user.address.StreetAddressData_Package;
package org.allbinary.business.user.address.StreetAddressData_Package_References is
   type StreetAddressData_Access is access all org.allbinary.business.user.address.StreetAddressData_Package.StreetAddressData'Class;
   type StreetAddressData_Access_Array is array (Natural range <>) of StreetAddressData_Access;
   type StreetAddressData_Access_Array_Access is access all StreetAddressData_Access_Array;
   type StreetAddressData_Access_Array_Access_Array is array (Natural range <>) of StreetAddressData_Access_Array_Access;
   type StreetAddressData_Access_Array_Access_Array_Access is access all StreetAddressData_Access_Array_Access_Array;
   type StreetAddressData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StreetAddressData_Access_Array_Access;
   end record;
   function Java_Box (Value : StreetAddressData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StreetAddressData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StreetAddressData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StreetAddressData_Access_Array_Access is (if Value /= null and then Value.all in StreetAddressData_Access_Array_Object'Class then StreetAddressData_Access_Array_Object'Class (Value.all).Value else null);
   type StreetAddressData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StreetAddressData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StreetAddressData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StreetAddressData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StreetAddressData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StreetAddressData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StreetAddressData_Access_Array_Access_Array_Object'Class then StreetAddressData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.address.StreetAddressData_Package_References;

with org.allbinary.business.user.address.StreetAddressData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.address.StreetAddressData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StreetAddressData_Access is org.allbinary.business.user.address.StreetAddressData_Package_References.StreetAddressData_Access;
   function "=" (Left, Right : StreetAddressData_Access) return Boolean renames org.allbinary.business.user.address.StreetAddressData_Package_References."=";
   subtype StreetAddressData_Access_Array is org.allbinary.business.user.address.StreetAddressData_Package_References.StreetAddressData_Access_Array;
   function "=" (Left, Right : StreetAddressData_Access_Array) return Boolean renames org.allbinary.business.user.address.StreetAddressData_Package_References."=";
   subtype StreetAddressData_Access_Array_Access is org.allbinary.business.user.address.StreetAddressData_Package_References.StreetAddressData_Access_Array_Access;
   function "=" (Left, Right : StreetAddressData_Access_Array_Access) return Boolean renames org.allbinary.business.user.address.StreetAddressData_Package_References."=";
   function Java_Box (Value : StreetAddressData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.address.StreetAddressData_Package_References.Java_Box;
   function Java_Unbox_StreetAddressData_Access_Array (Value : access Java_Object'Class) return StreetAddressData_Access_Array_Access renames org.allbinary.business.user.address.StreetAddressData_Package_References.Java_Unbox_StreetAddressData_Access_Array;
   subtype StreetAddressData_Access_Array_Access_Array is org.allbinary.business.user.address.StreetAddressData_Package_References.StreetAddressData_Access_Array_Access_Array;
   function "=" (Left, Right : StreetAddressData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.address.StreetAddressData_Package_References."=";
   subtype StreetAddressData_Access_Array_Access_Array_Access is org.allbinary.business.user.address.StreetAddressData_Package_References.StreetAddressData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StreetAddressData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.address.StreetAddressData_Package_References."=";
   function Java_Box (Value : StreetAddressData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.address.StreetAddressData_Package_References.Java_Box;
   function Java_Unbox_StreetAddressData_Access_Array_Access_Array (Value : access Java_Object'Class) return StreetAddressData_Access_Array_Access_Array_Access renames org.allbinary.business.user.address.StreetAddressData_Package_References.Java_Unbox_StreetAddressData_Access_Array_Access_Array;

   type StreetAddressData is new Java_Object with null record;
   MAX : constant Integer := 255;
   MIN : constant Integer := 0;
   FORM : Unbounded_String;
   STATES : Unbounded_String;
   NUMBEROFADDRESSES : Unbounded_String;
   ID : Unbounded_String;
   DEFAULT : Unbounded_String;
   ADDRESS : Unbounded_String;
   NAME : Unbounded_String;
   STREET : Unbounded_String;
   CITY : Unbounded_String;
   STATE : Unbounded_String;
   CODE : Unbounded_String;
   COUNTRY : Unbounded_String;

   procedure Initialize (This : in out StreetAddressData'Class);
   function Create return StreetAddressData_Access;

end org.allbinary.business.user.address.StreetAddressData_Package;


