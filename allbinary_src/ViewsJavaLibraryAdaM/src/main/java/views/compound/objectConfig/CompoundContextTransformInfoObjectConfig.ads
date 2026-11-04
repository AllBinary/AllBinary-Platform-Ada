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

limited with views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package;
package views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References is
   type CompoundContextTransformInfoObjectConfig_Access is access all views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package.CompoundContextTransformInfoObjectConfig'Class;
   type CompoundContextTransformInfoObjectConfig_Access_Array is array (Natural range <>) of CompoundContextTransformInfoObjectConfig_Access;
   type CompoundContextTransformInfoObjectConfig_Access_Array_Access is access all CompoundContextTransformInfoObjectConfig_Access_Array;
   type CompoundContextTransformInfoObjectConfig_Access_Array_Access_Array is array (Natural range <>) of CompoundContextTransformInfoObjectConfig_Access_Array_Access;
   type CompoundContextTransformInfoObjectConfig_Access_Array_Access_Array_Access is access all CompoundContextTransformInfoObjectConfig_Access_Array_Access_Array;
end views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References;

with views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package; use org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package GenericStoreTransformInfoObjectConfig_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.GenericStoreTransformInfoObjectConfig_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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


   subtype CompoundContextTransformInfoObjectConfig_Access is views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References.CompoundContextTransformInfoObjectConfig_Access;
   function "=" (Left, Right : CompoundContextTransformInfoObjectConfig_Access) return Boolean renames views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References."=";
   subtype CompoundContextTransformInfoObjectConfig_Access_Array is views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References.CompoundContextTransformInfoObjectConfig_Access_Array;
   function "=" (Left, Right : CompoundContextTransformInfoObjectConfig_Access_Array) return Boolean renames views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References."=";
   subtype CompoundContextTransformInfoObjectConfig_Access_Array_Access is views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References.CompoundContextTransformInfoObjectConfig_Access_Array_Access;
   function "=" (Left, Right : CompoundContextTransformInfoObjectConfig_Access_Array_Access) return Boolean renames views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References."=";
   subtype CompoundContextTransformInfoObjectConfig_Access_Array_Access_Array is views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References.CompoundContextTransformInfoObjectConfig_Access_Array_Access_Array;
   function "=" (Left, Right : CompoundContextTransformInfoObjectConfig_Access_Array_Access_Array) return Boolean renames views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References."=";
   subtype CompoundContextTransformInfoObjectConfig_Access_Array_Access_Array_Access is views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References.CompoundContextTransformInfoObjectConfig_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompoundContextTransformInfoObjectConfig_Access_Array_Access_Array_Access) return Boolean renames views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package_References."=";

   type CompoundContextTransformInfoObjectConfig is new GenericStoreTransformInfoObjectConfig with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CompoundContextTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return CompoundContextTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out CompoundContextTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; document_Param : access Document_Package.Document'Class) return CompoundContextTransformInfoObjectConfig_Access;
   procedure Initialize (This : in out CompoundContextTransformInfoObjectConfig'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; name : Unbounded_String; type_Id : Unbounded_String) return CompoundContextTransformInfoObjectConfig_Access;
   function get (This : in out CompoundContextTransformInfoObjectConfig) return Unbounded_String;
   function createInputStream (This : in out CompoundContextTransformInfoObjectConfig) return InputStream_Access;

end views.compound.objectConfig.CompoundContextTransformInfoObjectConfig_Package;


