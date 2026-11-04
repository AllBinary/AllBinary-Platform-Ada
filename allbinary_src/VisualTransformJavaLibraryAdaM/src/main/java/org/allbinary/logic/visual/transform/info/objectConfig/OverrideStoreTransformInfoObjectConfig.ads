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

limited with org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package;
package org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References is
   type OverrideStoreTransformInfoObjectConfig_Access is access all org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package.OverrideStoreTransformInfoObjectConfig'Class;
   type OverrideStoreTransformInfoObjectConfig_Access_Array is array (Natural range <>) of OverrideStoreTransformInfoObjectConfig_Access;
   type OverrideStoreTransformInfoObjectConfig_Access_Array_Access is access all OverrideStoreTransformInfoObjectConfig_Access_Array;
   type OverrideStoreTransformInfoObjectConfig_Access_Array_Access_Array is array (Natural range <>) of OverrideStoreTransformInfoObjectConfig_Access_Array_Access;
   type OverrideStoreTransformInfoObjectConfig_Access_Array_Access_Array_Access is access all OverrideStoreTransformInfoObjectConfig_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References;

with org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package is

   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype OverrideStoreTransformInfoObjectConfig_Access is org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References.OverrideStoreTransformInfoObjectConfig_Access;
   function "=" (Left, Right : OverrideStoreTransformInfoObjectConfig_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References."=";
   subtype OverrideStoreTransformInfoObjectConfig_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References.OverrideStoreTransformInfoObjectConfig_Access_Array;
   function "=" (Left, Right : OverrideStoreTransformInfoObjectConfig_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References."=";
   subtype OverrideStoreTransformInfoObjectConfig_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References.OverrideStoreTransformInfoObjectConfig_Access_Array_Access;
   function "=" (Left, Right : OverrideStoreTransformInfoObjectConfig_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References."=";
   subtype OverrideStoreTransformInfoObjectConfig_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References.OverrideStoreTransformInfoObjectConfig_Access_Array_Access_Array;
   function "=" (Left, Right : OverrideStoreTransformInfoObjectConfig_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References."=";
   subtype OverrideStoreTransformInfoObjectConfig_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References.OverrideStoreTransformInfoObjectConfig_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OverrideStoreTransformInfoObjectConfig_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package_References."=";

   type OverrideStoreTransformInfoObjectConfig is new GenericStoreTransformInfoObjectConfig with null record;

   procedure Initialize (This : in out OverrideStoreTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return OverrideStoreTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out OverrideStoreTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return OverrideStoreTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out OverrideStoreTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return OverrideStoreTransformInfoObjectConfig_Access;
   function generate (This : in out OverrideStoreTransformInfoObjectConfig; objectConfigDocument_Param : access Document_Package.Document'Class) return Document_Access;
   procedure generate (This : in out OverrideStoreTransformInfoObjectConfig; objectConfigDocument_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.transform.info.objectConfig.OverrideStoreTransformInfoObjectConfig_Package;


