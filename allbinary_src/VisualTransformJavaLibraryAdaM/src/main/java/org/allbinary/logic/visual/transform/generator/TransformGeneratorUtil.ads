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
with org.allbinary.logic.io.InputOutputTypeData_Package; use org.allbinary.logic.io.InputOutputTypeData_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.TransformFactory_Package; use org.allbinary.logic.visual.transform.TransformFactory_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package; use org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;

package org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package InputOutputTypeData_Package renames org.allbinary.logic.io.InputOutputTypeData_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformFactory_Package renames org.allbinary.logic.visual.transform.TransformFactory_Package;
   package TransformInterface_Package renames org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformInfoDomNode_Package renames org.allbinary.logic.visual.transform.info.TransformInfoDomNode_Package;
   package TransformInfoHttpInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package StoreFileGenerator_Package renames org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;

   type TransformGeneratorUtil is tagged;
   type TransformGeneratorUtil_Access is access all TransformGeneratorUtil'Class;
   type TransformGeneratorUtil_Access_Array is array (Natural range <>) of TransformGeneratorUtil_Access;
   type TransformGeneratorUtil_Access_Array_Access is access all TransformGeneratorUtil_Access_Array;

   type TransformGeneratorUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : TransformGeneratorUtil_Access;

   procedure Initialize (This : in out TransformGeneratorUtil'Class);
   function Create return TransformGeneratorUtil_Access;
   function getInstance return TransformGeneratorUtil_Access;
   procedure getInstance;
   procedure generate (This : in out TransformGeneratorUtil; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; ownerTransformInfoInterface : TransformInfoInterface_Access);
   procedure generate (This : in out TransformGeneratorUtil; abeClientInformation : AbeClientInformationInterface_Access; transformInfoDomNode : TransformInfoDomNode_Access; ownerTransformInfoInterface : TransformInfoInterface_Access);

end org.allbinary.logic.visual.transform.generator.TransformGeneratorUtil_Package;


