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
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.StringBufferInputStream_Package; use java.io.StringBufferInputStream_Package;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
with org.allbinary.data.tree.dom.XslHelper_Package; use org.allbinary.data.tree.dom.XslHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.visual.transform.BasicTransformerInterface_Package; use org.allbinary.logic.visual.transform.BasicTransformerInterface_Package;

package org.allbinary.logic.visual.transform.AbTransformer_Package is

   package XslHelper_Package renames Standard.org.allbinary.data.tree.dom.XslHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfigGenerator_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;
   package TransformInfoObjectConfigGeneratorFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AbTransformer is tagged;
   type AbTransformer_Access is access all AbTransformer'Class;
   type AbTransformer_Access_Array is array (Natural range <>) of AbTransformer_Access;
   type AbTransformer_Access_Array_Access is access all AbTransformer_Access_Array;

   type AbTransformer is new BasicTransformerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      inputStream : InputStream_Access;
      uriResolver : URIResolver_Access;
   end record;

   procedure Initialize (This : in out AbTransformer'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return AbTransformer_Access;
   function getTransformInfoInterface (This : in out AbTransformer) return TransformInfoInterface_Access;
   procedure setInputStream (This : in out AbTransformer; inputStream_Param : access InputStream'Class);
   procedure setURIResolver (This : in out AbTransformer; uriResolver_Param : access URIResolver'Class);
   function getInputStream (This : in out AbTransformer) return InputStream_Access;
   function getURIResolver (This : in out AbTransformer) return URIResolver_Access;
   function getStreamSource (This : in out AbTransformer) return StreamSource_Access;
   function translate (This : in out AbTransformer; xmlDocumentStr : Unbounded_String) return Unbounded_String;
   procedure translate (This : in out AbTransformer; xmlDocumentStr : Unbounded_String);

end org.allbinary.logic.visual.transform.AbTransformer_Package;


