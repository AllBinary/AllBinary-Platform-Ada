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

limited with org.allbinary.logic.visual.transform.AbTransformer_Package;
package org.allbinary.logic.visual.transform.AbTransformer_Package_References is
   type AbTransformer_Access is access all org.allbinary.logic.visual.transform.AbTransformer_Package.AbTransformer'Class;
   type AbTransformer_Access_Array is array (Natural range <>) of AbTransformer_Access;
   type AbTransformer_Access_Array_Access is access all AbTransformer_Access_Array;
   type AbTransformer_Access_Array_Access_Array is array (Natural range <>) of AbTransformer_Access_Array_Access;
   type AbTransformer_Access_Array_Access_Array_Access is access all AbTransformer_Access_Array_Access_Array;
end org.allbinary.logic.visual.transform.AbTransformer_Package_References;

with org.allbinary.logic.visual.transform.AbTransformer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.io.StringBufferInputStream_Package; use java.io.StringBufferInputStream_Package;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.visual.transform.BasicTransformerInterface_Package; use org.allbinary.logic.visual.transform.BasicTransformerInterface_Package;

package org.allbinary.logic.visual.transform.AbTransformer_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbTransformer_Access is org.allbinary.logic.visual.transform.AbTransformer_Package_References.AbTransformer_Access;
   function "=" (Left, Right : AbTransformer_Access) return Boolean renames org.allbinary.logic.visual.transform.AbTransformer_Package_References."=";
   subtype AbTransformer_Access_Array is org.allbinary.logic.visual.transform.AbTransformer_Package_References.AbTransformer_Access_Array;
   function "=" (Left, Right : AbTransformer_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.AbTransformer_Package_References."=";
   subtype AbTransformer_Access_Array_Access is org.allbinary.logic.visual.transform.AbTransformer_Package_References.AbTransformer_Access_Array_Access;
   function "=" (Left, Right : AbTransformer_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.AbTransformer_Package_References."=";
   subtype AbTransformer_Access_Array_Access_Array is org.allbinary.logic.visual.transform.AbTransformer_Package_References.AbTransformer_Access_Array_Access_Array;
   function "=" (Left, Right : AbTransformer_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.AbTransformer_Package_References."=";
   subtype AbTransformer_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.AbTransformer_Package_References.AbTransformer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbTransformer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.AbTransformer_Package_References."=";

   type AbTransformer is new Java_Object and BasicTransformerInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      inputStream : InputStream_Access;
      uriResolver : URIResolver_Access;
   end record;

   procedure Initialize (This : in out AbTransformer'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return AbTransformer_Access;
   function getTransformInfoInterface (This : in out AbTransformer) return TransformInfoInterface_Access;
   procedure setInputStream (This : in out AbTransformer; inputStream_Param : access InputStream_Package.InputStream'Class);
   procedure setURIResolver (This : in out AbTransformer; uriResolver_Param : access URIResolver_Package.URIResolver'Class);
   function getInputStream (This : in out AbTransformer) return InputStream_Access;
   function getURIResolver (This : in out AbTransformer) return URIResolver_Access;
   function getStreamSource (This : in out AbTransformer) return StreamSource_Access;
   function translate (This : in out AbTransformer; xmlDocumentStr : Unbounded_String) return Unbounded_String;
   procedure translate (This : in out AbTransformer; xmlDocumentStr : Unbounded_String);

end org.allbinary.logic.visual.transform.AbTransformer_Package;


