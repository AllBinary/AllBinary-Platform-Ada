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
with org.allbinary.business.user.commerce.money.payment.types.AuthorizationType_Package; use org.allbinary.business.user.commerce.money.payment.types.AuthorizationType_Package;

package org.allbinary.business.user.commerce.money.payment.types.AuthorizationTypeFactory_Package is


   type AuthorizationTypeFactory is tagged;
   type AuthorizationTypeFactory_Access is access all AuthorizationTypeFactory'Class;
   type AuthorizationTypeFactory_Access_Array is array (Natural range <>) of AuthorizationTypeFactory_Access;
   type AuthorizationTypeFactory_Access_Array_Access is access all AuthorizationTypeFactory_Access_Array;

   type AuthorizationTypeFactory is new Java_Object with record
      NONE : AuthorizationType_Access;
      VOICE : AuthorizationType_Access;
      RETINAL : AuthorizationType_Access;
      IMAGE : AuthorizationType_Access;
      DNA : AuthorizationType_Access;
      PRINT : AuthorizationType_Access;
      CHIP : AuthorizationType_Access;
   end record;
   instance : AuthorizationTypeFactory_Access;

   procedure Initialize (This : in out AuthorizationTypeFactory'Class);
   function Create return AuthorizationTypeFactory_Access;
   function getInstance return AuthorizationTypeFactory_Access;

end org.allbinary.business.user.commerce.money.payment.types.AuthorizationTypeFactory_Package;


