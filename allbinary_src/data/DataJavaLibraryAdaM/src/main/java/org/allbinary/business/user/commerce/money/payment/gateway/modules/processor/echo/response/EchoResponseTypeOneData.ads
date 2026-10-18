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

package org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.response.EchoResponseTypeOneData_Package is


   type EchoResponseTypeOneData is tagged;
   type EchoResponseTypeOneData_Access is access all EchoResponseTypeOneData'Class;
   type EchoResponseTypeOneData_Access_Array is array (Natural range <>) of EchoResponseTypeOneData_Access;
   type EchoResponseTypeOneData_Access_Array_Access is access all EchoResponseTypeOneData_Access_Array;
   type EchoResponseTypeOneData_Access_Array_Access_Array is array (Natural range <>) of EchoResponseTypeOneData_Access_Array_Access;
   type EchoResponseTypeOneData_Access_Array_Access_Array_Access is access all EchoResponseTypeOneData_Access_Array_Access_Array;

   type EchoResponseTypeOneData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out EchoResponseTypeOneData'Class);
   function Create return EchoResponseTypeOneData_Access;

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.response.EchoResponseTypeOneData_Package;


