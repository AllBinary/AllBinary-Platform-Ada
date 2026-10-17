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
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type TransformInfoObjectConfigAndManipulatorFactoryInterface is interface;
   type TransformInfoObjectConfigAndManipulatorFactoryInterface_Access is access all TransformInfoObjectConfigAndManipulatorFactoryInterface'Class;
   type TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array is array (Natural range <>) of TransformInfoObjectConfigAndManipulatorFactoryInterface_Access;
   type TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access is access all TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array;
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryInterface; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath'Class) return TransformInfoObjectConfigInterface_Access is abstract;
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryInterface; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) return TransformInfoObjectConfigInterface_Access is abstract;
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryInterface; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; document_Param : access Document'Class) return TransformInfoObjectConfigInterface_Access is abstract;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package;


