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
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;

package org.allbinary.business.init.db.InitDbHelperFactory_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type InitDbHelperFactory is tagged;
   type InitDbHelperFactory_Access is access all InitDbHelperFactory'Class;
   type InitDbHelperFactory_Access_Array is array (Natural range <>) of InitDbHelperFactory_Access;
   type InitDbHelperFactory_Access_Array_Access is access all InitDbHelperFactory_Access_Array;
   type InitDbHelperFactory_Access_Array_Access_Array is array (Natural range <>) of InitDbHelperFactory_Access_Array_Access;
   type InitDbHelperFactory_Access_Array_Access_Array_Access is access all InitDbHelperFactory_Access_Array_Access_Array;

   type InitDbHelperFactory is new Java_Object with null record;
   CLASSNAME : Unbounded_String;

   procedure Initialize (This : in out InitDbHelperFactory'Class);
   function Create return InitDbHelperFactory_Access;
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) return Java_Object_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class);
   function getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Java_Object_Access;
   procedure getInstance (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);

end org.allbinary.business.init.db.InitDbHelperFactory_Package;


