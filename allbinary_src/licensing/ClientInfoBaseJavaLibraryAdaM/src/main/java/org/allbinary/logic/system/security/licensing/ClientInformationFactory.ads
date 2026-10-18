-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.logic.system.security.licensing.ClientInformation_Package; use org.allbinary.logic.system.security.licensing.ClientInformation_Package;

package org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package is


   type ClientInformationFactory is tagged;
   type ClientInformationFactory_Access is access all ClientInformationFactory'Class;
   type ClientInformationFactory_Access_Array is array (Natural range <>) of ClientInformationFactory_Access;
   type ClientInformationFactory_Access_Array_Access is access all ClientInformationFactory_Access_Array;
   type ClientInformationFactory_Access_Array_Access_Array is array (Natural range <>) of ClientInformationFactory_Access_Array_Access;
   type ClientInformationFactory_Access_Array_Access_Array_Access is access all ClientInformationFactory_Access_Array_Access_Array;

   type ClientInformationFactory is new Java_Object with null record;

   procedure Initialize (This : in out ClientInformationFactory'Class);
   function Create return ClientInformationFactory_Access;
   function getInstance (This : in out ClientInformationFactory) return ClientInformation_Access;

end org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;


