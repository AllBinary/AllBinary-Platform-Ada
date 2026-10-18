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

package org.allbinary.business.user.commerce.money.payment.types.TenderType_Package is


   type TenderType is tagged;
   type TenderType_Access is access all TenderType'Class;
   type TenderType_Access_Array is array (Natural range <>) of TenderType_Access;
   type TenderType_Access_Array_Access is access all TenderType_Access_Array;
   type TenderType_Access_Array_Access_Array is array (Natural range <>) of TenderType_Access_Array_Access;
   type TenderType_Access_Array_Access_Array_Access is access all TenderType_Access_Array_Access_Array;

   type TenderType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out TenderType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return TenderType_Access;
   function isEqual (This : in out TenderType; tenderType_Var_Param : access TenderType_Package.TenderType'Class) return Boolean;
   procedure isEqual (This : in out TenderType; tenderType_Var_Param : access TenderType_Package.TenderType'Class);
   function toString (This : in out TenderType) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;


