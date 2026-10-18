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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;

   type TransformInfoObjectFactory is tagged;
   type TransformInfoObjectFactory_Access is access all TransformInfoObjectFactory'Class;
   type TransformInfoObjectFactory_Access_Array is array (Natural range <>) of TransformInfoObjectFactory_Access;
   type TransformInfoObjectFactory_Access_Array_Access is access all TransformInfoObjectFactory_Access_Array;
   type TransformInfoObjectFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectFactory_Access_Array_Access;
   type TransformInfoObjectFactory_Access_Array_Access_Array_Access is access all TransformInfoObjectFactory_Access_Array_Access_Array;

   type TransformInfoObjectFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformInfoObjectFactory_Access;

   procedure Initialize (This : in out TransformInfoObjectFactory'Class);
   function Create return TransformInfoObjectFactory_Access;
   function getInstance return TransformInfoObjectFactory_Access;
   function getInstance (This : in out TransformInfoObjectFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInterface_Access;
   procedure getInstance (This : in out TransformInfoObjectFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);

end org.allbinary.logic.visual.transform.info.TransformInfoObjectFactory_Package;


