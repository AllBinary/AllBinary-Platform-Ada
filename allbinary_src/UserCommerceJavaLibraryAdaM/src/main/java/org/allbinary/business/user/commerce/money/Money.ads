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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.Money_Package is


   type Money is tagged;
   type Money_Access is access all Money'Class;
   type Money_Access_Array is array (Natural range <>) of Money_Access;
   type Money_Access_Array_Access is access all Money_Access_Array;
   type Money_Access_Array_Access_Array is array (Natural range <>) of Money_Access_Array_Access;
   type Money_Access_Array_Access_Array_Access is access all Money_Access_Array_Access_Array;

   type Money is new Java_Object with record
      units : Long_Long_Integer;
      DEFAULT_CURRENCY : Unbounded_String;
   end record;

   procedure Initialize (This : in out Money'Class; money_Param : access Money_Package.Money'Class);
   function Create (money_Param : access Money_Package.Money'Class) return Money_Access;
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


