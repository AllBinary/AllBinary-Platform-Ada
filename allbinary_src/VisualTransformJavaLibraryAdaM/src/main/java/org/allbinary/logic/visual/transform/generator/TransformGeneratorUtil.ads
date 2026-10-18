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
with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package; use org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoDomNode_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type TransformGeneratorUtil is tagged;
   type TransformGeneratorUtil_Access is access all TransformGeneratorUtil'Class;
   type TransformGeneratorUtil_Access_Array is array (Natural range <>) of TransformGeneratorUtil_Access;
   type TransformGeneratorUtil_Access_Array_Access is access all TransformGeneratorUtil_Access_Array;
   type TransformGeneratorUtil_Access_Array_Access_Array is array (Natural range <>) of TransformGeneratorUtil_Access_Array_Access;
   type TransformGeneratorUtil_Access_Array_Access_Array_Access is access all TransformGeneratorUtil_Access_Array_Access_Array;

   type TransformGeneratorUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformGeneratorUtil_Access;

   procedure Initialize (This : in out TransformGeneratorUtil'Class);
   function Create return TransformGeneratorUtil_Access;
   function getInstance return TransformGeneratorUtil_Access;
   procedure generate (This : in out TransformGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   procedure generate (This : in out TransformGeneratorUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoDomNode_Param : access TransformInfoDomNode_Package.TransformInfoDomNode'Class; ownerTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);

end org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package;


