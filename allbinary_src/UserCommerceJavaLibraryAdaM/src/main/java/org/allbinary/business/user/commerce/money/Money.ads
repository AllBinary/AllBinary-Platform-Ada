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
limited with org.allbinary.business.user.commerce.money.Money_Package;
package org.allbinary.business.user.commerce.money.Money_Package_References is
   type Money_Access is access all org.allbinary.business.user.commerce.money.Money_Package.Money'Class;
   type Money_Access_Array is array (Natural range <>) of Money_Access;
   type Money_Access_Array_Access is access all Money_Access_Array;
   type Money_Access_Array_Access_Array is array (Natural range <>) of Money_Access_Array_Access;
   type Money_Access_Array_Access_Array_Access is access all Money_Access_Array_Access_Array;
   type Money_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Money_Access_Array_Access;
   end record;
   function Java_Box (Value : Money_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Money_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Money_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Money_Access_Array_Access is (if Value /= null and then Value.all in Money_Access_Array_Object'Class then Money_Access_Array_Object'Class (Value.all).Value else null);
   type Money_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Money_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Money_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Money_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Money_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Money_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Money_Access_Array_Access_Array_Object'Class then Money_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.Money_Package_References;

with org.allbinary.business.user.commerce.money.Money_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.Money_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Money_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access;
   function "=" (Left, Right : Money_Access) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   subtype Money_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array;
   function "=" (Left, Right : Money_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   subtype Money_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access;
   function "=" (Left, Right : Money_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   function Java_Box (Value : Money_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.Money_Package_References.Java_Box;
   function Java_Unbox_Money_Access_Array (Value : access Java_Object'Class) return Money_Access_Array_Access renames org.allbinary.business.user.commerce.money.Money_Package_References.Java_Unbox_Money_Access_Array;
   subtype Money_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array;
   function "=" (Left, Right : Money_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   subtype Money_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Money_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.Money_Package_References."=";
   function Java_Box (Value : Money_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.Money_Package_References.Java_Box;
   function Java_Unbox_Money_Access_Array_Access_Array (Value : access Java_Object'Class) return Money_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.Money_Package_References.Java_Unbox_Money_Access_Array_Access_Array;

   type Money is new Java_Object with record
      units : Long_Long_Integer;
      DEFAULT_CURRENCY : Unbounded_String;
   end record;

   procedure Initialize (This : in out Money'Class; money_Var_Param : access Money_Package.Money'Class);
   function Create (money_Var_Param : access Money_Package.Money'Class) return Money_Access;
   procedure Initialize (This : in out Money'Class);
   function Create return Money_Access;
   procedure Initialize (This : in out Money'Class; usDollarStr : Unbounded_String);
   function Create (usDollarStr : Unbounded_String) return Money_Access;
   procedure Initialize (This : in out Money'Class; units : Long_Long_Integer);
   function Create (units : Long_Long_Integer) return Money_Access;
   function isValid (This : in out Money) return Boolean;
   procedure add (This : in out Money; moreMoney_Param : access Money_Package.Money'Class);
   procedure add (This : in out Money; usDollarStr : Unbounded_String);
   procedure subtract (This : in out Money; usDollarStr : Unbounded_String);
   procedure multiply (This : in out Money; multiplier : Float);
   procedure multiply (This : in out Money; multiplier : Integer);
   function convertUnitsTo (This : in out Money; currency : Unbounded_String) return Unbounded_String;
   procedure convertUnitsTo (This : in out Money; currency : Unbounded_String);
   function convertUsdToUnits (This : in out Money; usDollarStr : Unbounded_String) return Long_Long_Integer;
   procedure convertUsdToUnits (This : in out Money; usDollarStr : Unbounded_String);
   function getUnits (This : in out Money) return Long_Long_Integer;
   function getUnitsLong (This : in out Money) return Long_Long_Integer;
   function toString (This : in out Money) return Unbounded_String;

end org.allbinary.business.user.commerce.money.Money_Package;


