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

with AllBinary_Java;
limited with org.allbinary.logic.visual.transform.BasicTransformer_Package;
package org.allbinary.logic.visual.transform.BasicTransformer_Package_References is
   type BasicTransformer_Access is access all org.allbinary.logic.visual.transform.BasicTransformer_Package.BasicTransformer'Class;
   type BasicTransformer_Access_Array is array (Natural range <>) of BasicTransformer_Access;
   type BasicTransformer_Access_Array_Access is access all BasicTransformer_Access_Array;
   type BasicTransformer_Access_Array_Access_Array is array (Natural range <>) of BasicTransformer_Access_Array_Access;
   type BasicTransformer_Access_Array_Access_Array_Access is access all BasicTransformer_Access_Array_Access_Array;
   type BasicTransformer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTransformer_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTransformer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTransformer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTransformer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTransformer_Access_Array_Access is (if Value /= null and then Value.all in BasicTransformer_Access_Array_Object'Class then BasicTransformer_Access_Array_Object'Class (Value.all).Value else null);
   type BasicTransformer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTransformer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTransformer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTransformer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTransformer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTransformer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicTransformer_Access_Array_Access_Array_Object'Class then BasicTransformer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.BasicTransformer_Package_References;

with org.allbinary.logic.visual.transform.BasicTransformer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package_References;
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
with org.allbinary.logic.visual.transform.AbTransformer_Package; use org.allbinary.logic.visual.transform.AbTransformer_Package;

package org.allbinary.logic.visual.transform.BasicTransformer_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
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
   subtype StreamUtil_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access;
   use type StreamUtil_Access;
   subtype StreamUtil_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array;
   use type StreamUtil_Access_Array;
   subtype StreamUtil_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access;
   use type StreamUtil_Access_Array_Access;
   subtype StreamUtil_Access_Array_Access_Array is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array;
   use type StreamUtil_Access_Array_Access_Array;
   subtype StreamUtil_Access_Array_Access_Array_Access is org.allbinary.logic.io.StreamUtil_Package_References.StreamUtil_Access_Array_Access_Array_Access;
   use type StreamUtil_Access_Array_Access_Array_Access;
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicTransformer_Access is org.allbinary.logic.visual.transform.BasicTransformer_Package_References.BasicTransformer_Access;
   function "=" (Left, Right : BasicTransformer_Access) return Boolean renames org.allbinary.logic.visual.transform.BasicTransformer_Package_References."=";
   subtype BasicTransformer_Access_Array is org.allbinary.logic.visual.transform.BasicTransformer_Package_References.BasicTransformer_Access_Array;
   function "=" (Left, Right : BasicTransformer_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.BasicTransformer_Package_References."=";
   subtype BasicTransformer_Access_Array_Access is org.allbinary.logic.visual.transform.BasicTransformer_Package_References.BasicTransformer_Access_Array_Access;
   function "=" (Left, Right : BasicTransformer_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.BasicTransformer_Package_References."=";
   function Java_Box (Value : BasicTransformer_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.BasicTransformer_Package_References.Java_Box;
   function Java_Unbox_BasicTransformer_Access_Array (Value : access Java_Object'Class) return BasicTransformer_Access_Array_Access renames org.allbinary.logic.visual.transform.BasicTransformer_Package_References.Java_Unbox_BasicTransformer_Access_Array;
   subtype BasicTransformer_Access_Array_Access_Array is org.allbinary.logic.visual.transform.BasicTransformer_Package_References.BasicTransformer_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTransformer_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.BasicTransformer_Package_References."=";
   subtype BasicTransformer_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.BasicTransformer_Package_References.BasicTransformer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTransformer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.BasicTransformer_Package_References."=";
   function Java_Box (Value : BasicTransformer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.BasicTransformer_Package_References.Java_Box;
   function Java_Unbox_BasicTransformer_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicTransformer_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.BasicTransformer_Package_References.Java_Unbox_BasicTransformer_Access_Array_Access_Array;

   type BasicTransformer is new AbTransformer with record
      BasicTransformer_Field_logUtil : LogUtil_Access;
      streamUtil : StreamUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
   end record;

   procedure Initialize (This : in out BasicTransformer'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicTransformer_Access;
   procedure setEncryptedTemplateFileAsInputStream (This : in out BasicTransformer; file_Param : access AbFile_Package.AbFile'Class);
   procedure setEncryptedTemplateAsInputStream (This : in out BasicTransformer);
   procedure setTemplateAsInputStream (This : in out BasicTransformer);

end org.allbinary.logic.visual.transform.BasicTransformer_Package;


