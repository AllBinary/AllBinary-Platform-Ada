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
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package org.allbinary.business.init.db.InitDbHelperFactory_Package is

   package AbeFactory_Package renames Standard.org.allbinary.logic.system.loader.AbeFactory_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type InitDbHelperFactory is tagged;
   type InitDbHelperFactory_Access is access all InitDbHelperFactory'Class;
   type InitDbHelperFactory_Access_Array is array (Natural range <>) of InitDbHelperFactory_Access;
   type InitDbHelperFactory_Access_Array_Access is access all InitDbHelperFactory_Access_Array;

   type InitDbHelperFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out InitDbHelperFactory'Class);
   function Create return InitDbHelperFactory_Access;
   function getInstance (abeClientInformation : AbeClientInformationInterface_Access; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) return Java_Object_Access;
   procedure getInstance (abeClientInformation : AbeClientInformationInterface_Access; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access);
   function getInstance (abeClientInformation : AbeClientInformationInterface_Access) return Java_Object_Access;
   procedure getInstance (abeClientInformation : AbeClientInformationInterface_Access);

end org.allbinary.business.init.db.InitDbHelperFactory_Package;


