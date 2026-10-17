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
with org.allbinary.logic.system.security.licensing.TestClientInformation_Package; use org.allbinary.logic.system.security.licensing.TestClientInformation_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package is


   type ServiceClientInformationInterfaceFactory is tagged;
   type ServiceClientInformationInterfaceFactory_Access is access all ServiceClientInformationInterfaceFactory'Class;
   type ServiceClientInformationInterfaceFactory_Access_Array is array (Natural range <>) of ServiceClientInformationInterfaceFactory_Access;
   type ServiceClientInformationInterfaceFactory_Access_Array_Access is access all ServiceClientInformationInterfaceFactory_Access_Array;

   type ServiceClientInformationInterfaceFactory is new Java_Object with null record;
   instance : TestClientInformation_Access;

   procedure Initialize (This : in out ServiceClientInformationInterfaceFactory'Class);
   function Create return ServiceClientInformationInterfaceFactory_Access;
   function getInstance return AbeClientInformationInterface_Access;

end org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;


