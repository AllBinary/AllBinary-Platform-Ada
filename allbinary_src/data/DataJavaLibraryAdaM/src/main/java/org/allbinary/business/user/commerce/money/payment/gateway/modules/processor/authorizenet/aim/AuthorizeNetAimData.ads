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

package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package is


   type AuthorizeNetAimData is tagged;
   type AuthorizeNetAimData_Access is access all AuthorizeNetAimData'Class;
   type AuthorizeNetAimData_Access_Array is array (Natural range <>) of AuthorizeNetAimData_Access;
   type AuthorizeNetAimData_Access_Array_Access is access all AuthorizeNetAimData_Access_Array;
   type AuthorizeNetAimData_Access_Array_Access_Array is array (Natural range <>) of AuthorizeNetAimData_Access_Array_Access;
   type AuthorizeNetAimData_Access_Array_Access_Array_Access is access all AuthorizeNetAimData_Access_Array_Access_Array;

   type AuthorizeNetAimData is new Java_Object with null record;
   X_DELIM_DATA : Unbounded_String;
   X_DELIM_CHAR : Unbounded_String;
   X_ENCAP_CHAR : Unbounded_String;
   X_AUTHENTICATION_INDICATOR : Unbounded_String;
   X_CARDHOLDER_AUTHENTICATION_VALUE : Unbounded_String;
   X_DRIVERS_LICENSE_NUM : Unbounded_String;
   X_DRIVERS_LICENSE_STATE : Unbounded_String;
   X_DRIVERS_LICENSE_DOB : Unbounded_String;

   procedure Initialize (This : in out AuthorizeNetAimData'Class);
   function Create return AuthorizeNetAimData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.authorizenet.aim.AuthorizeNetAimData_Package;


