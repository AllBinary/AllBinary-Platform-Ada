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

package org.allbinary.business.user.address.StreetAddressData_Package is


   type StreetAddressData is tagged;
   type StreetAddressData_Access is access all StreetAddressData'Class;
   type StreetAddressData_Access_Array is array (Natural range <>) of StreetAddressData_Access;
   type StreetAddressData_Access_Array_Access is access all StreetAddressData_Access_Array;

   type StreetAddressData is new Java_Object with null record;
   MAX : Integer;
   MIN : Integer;
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


