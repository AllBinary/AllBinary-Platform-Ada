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
--  with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.StreamUtil_Package; use org.allbinary.logic.io.StreamUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.AbTransformer_Package; use org.allbinary.logic.visual.transform.AbTransformer_Package;

package org.allbinary.logic.visual.transform.BasicTransformer_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StreamUtil_Package renames Standard.org.allbinary.logic.io.StreamUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type BasicTransformer is tagged;
   type BasicTransformer_Access is access all BasicTransformer'Class;
   type BasicTransformer_Access_Array is array (Natural range <>) of BasicTransformer_Access;
   type BasicTransformer_Access_Array_Access is access all BasicTransformer_Access_Array;
   type BasicTransformer_Access_Array_Access_Array is array (Natural range <>) of BasicTransformer_Access_Array_Access;
   type BasicTransformer_Access_Array_Access_Array_Access is access all BasicTransformer_Access_Array_Access_Array;

   type BasicTransformer is new AbTransformer with record
      logUtil : LogUtil_Access;
      streamUtil : StreamUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
   end record;

   procedure Initialize (This : in out BasicTransformer'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicTransformer_Access;
   procedure setEncryptedTemplateFileAsInputStream (This : in out BasicTransformer; file_Param : access AbFile_Package.AbFile'Class);
   procedure setEncryptedTemplateAsInputStream (This : in out BasicTransformer);
   procedure setTemplateAsInputStream (This : in out BasicTransformer);

end org.allbinary.logic.visual.transform.BasicTransformer_Package;


