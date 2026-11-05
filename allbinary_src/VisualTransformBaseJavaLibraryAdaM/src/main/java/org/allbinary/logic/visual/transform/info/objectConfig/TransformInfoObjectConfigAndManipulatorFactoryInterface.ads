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

limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References is
   type TransformInfoObjectConfigAndManipulatorFactoryInterface_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package.TransformInfoObjectConfigAndManipulatorFactoryInterface'Class;
   type TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array is array (Natural range <>) of TransformInfoObjectConfigAndManipulatorFactoryInterface_Access;
   type TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access is access all TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array;
   type TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access;
   type TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References;

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype TransformInfoObjectConfigInterface_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access;
   use type TransformInfoObjectConfigInterface_Access;
   subtype TransformInfoObjectConfigInterface_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array;
   use type TransformInfoObjectConfigInterface_Access_Array;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access;
   use type TransformInfoObjectConfigInterface_Access_Array_Access;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   use type TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access;
   use type TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TransformInfoObjectConfigAndManipulatorFactoryInterface is interface;
   subtype TransformInfoObjectConfigAndManipulatorFactoryInterface_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References.TransformInfoObjectConfigAndManipulatorFactoryInterface_Access;
   function "=" (Left, Right : TransformInfoObjectConfigAndManipulatorFactoryInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References."=";
   subtype TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References.TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References."=";
   subtype TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References.TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References."=";
   subtype TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References.TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References."=";
   subtype TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References.TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigAndManipulatorFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package_References."=";
   function Java_Object_Access_From_TransformInfoObjectConfigAndManipulatorFactoryInterface (Value : TransformInfoObjectConfigAndManipulatorFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryInterface; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class) return TransformInfoObjectConfigInterface_Access is abstract;
   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryInterface; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath_Package.AbPath'Class) is abstract;
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryInterface; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return TransformInfoObjectConfigInterface_Access is abstract;
   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryInterface; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is abstract;
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryInterface; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return TransformInfoObjectConfigInterface_Access is abstract;
   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryInterface; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) is abstract;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface_Package;


