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
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;

package org.allbinary.business.user.commerce.money.Money_Package is

   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonPhoneStrings_Package renames org.allbinary.string_Id.CommonPhoneStrings_Package;

   type Money is tagged;
   type Money_Access is access all Money'Class;
   type Money_Access_Array is array (Natural range <>) of Money_Access;
   type Money_Access_Array_Access is access all Money_Access_Array;

   type Money is new Java_Object with record
      units : Long_Long_Integer;
      DEFAULT_CURRENCY : Unbounded_String;
   end record;

   procedure Initialize (This : in out Money'Class; money : Money_Access);
   function Create (money : Money_Access) return Money_Access;
   function isValid (This : in out Money) return Boolean;
   procedure isValid (This : in out Money);
   procedure add (This : in out Money; moreMoney : Money_Access);
   procedure add (This : in out Money; usDollarStr : Unbounded_String);
   procedure subtract (This : in out Money; usDollarStr : Unbounded_String);
   procedure multiply (This : in out Money; multiplier : Float);
   procedure multiply (This : in out Money; multiplier : Integer);
   function convertUnitsTo (This : in out Money; currency : Unbounded_String) return Unbounded_String;
   procedure convertUnitsTo (This : in out Money; currency : Unbounded_String);
   function convertUsdToUnits (This : in out Money; usDollarStr : Unbounded_String) return Long_Long_Integer;
   procedure convertUsdToUnits (This : in out Money; usDollarStr : Unbounded_String);
   function getUnits (This : in out Money) return Long_Long_Integer;
   procedure getUnits (This : in out Money);
   function getUnitsLong (This : in out Money) return Long_Long_Integer;
   procedure getUnitsLong (This : in out Money);
   function toString (This : in out Money) return Unbounded_String;
   procedure toString (This : in out Money);

end org.allbinary.business.user.commerce.money.Money_Package;


