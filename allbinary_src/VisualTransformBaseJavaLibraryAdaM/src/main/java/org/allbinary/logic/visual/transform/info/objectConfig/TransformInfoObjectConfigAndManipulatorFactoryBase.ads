-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type TransformInfoObjectConfigAndManipulatorFactoryBase is tagged;
   type TransformInfoObjectConfigAndManipulatorFactoryBase_Access is access all TransformInfoObjectConfigAndManipulatorFactoryBase'Class;
   type TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array is array (Natural range <>) of TransformInfoObjectConfigAndManipulatorFactoryBase_Access;
   type TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access is access all TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array;
   type TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access;
   type TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigAndManipulatorFactoryBase_Access_Array_Access_Array;

   type TransformInfoObjectConfigAndManipulatorFactoryBase is new Java_Object and TransformInfoObjectConfigAndManipulatorFactoryInterface with record
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase'Class);
   function Create return TransformInfoObjectConfigAndManipulatorFactoryBase_Access;
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class) return TransformInfoObjectConfigInterface_Access;
   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class);
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoObjectConfigInterface_Access;
   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return TransformInfoObjectConfigInterface_Access;
   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package;


