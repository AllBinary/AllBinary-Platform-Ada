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

package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.response.EchoResponseTypeThreeData_Package is


   type EchoResponseTypeThreeData is tagged;
   type EchoResponseTypeThreeData_Access is access all EchoResponseTypeThreeData'Class;
   type EchoResponseTypeThreeData_Access_Array is array (Natural range <>) of EchoResponseTypeThreeData_Access;
   type EchoResponseTypeThreeData_Access_Array_Access is access all EchoResponseTypeThreeData_Access_Array;

   type EchoResponseTypeThreeData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out EchoResponseTypeThreeData'Class);
   function Create return EchoResponseTypeThreeData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.response.EchoResponseTypeThreeData_Package;


