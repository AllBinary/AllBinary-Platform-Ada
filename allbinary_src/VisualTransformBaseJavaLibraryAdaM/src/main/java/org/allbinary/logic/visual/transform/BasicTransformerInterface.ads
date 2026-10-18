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
with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
with org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.BasicTransformerInterface_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package CompositeTransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;

   type BasicTransformerInterface is interface and CompositeTransformInfoInterface;
   type BasicTransformerInterface_Access is access all BasicTransformerInterface'Class;
   type BasicTransformerInterface_Access_Array is array (Natural range <>) of BasicTransformerInterface_Access;
   type BasicTransformerInterface_Access_Array_Access is access all BasicTransformerInterface_Access_Array;
   type BasicTransformerInterface_Access_Array_Access_Array is array (Natural range <>) of BasicTransformerInterface_Access_Array_Access;
   type BasicTransformerInterface_Access_Array_Access_Array_Access is access all BasicTransformerInterface_Access_Array_Access_Array;
   procedure setInputStream (This : in out BasicTransformerInterface; inputStream_Param : access InputStream_Package.InputStream'Class) is abstract;
   procedure setURIResolver (This : in out BasicTransformerInterface; uriResolver_Param : access URIResolver_Package.URIResolver'Class) is abstract;
   function getStreamSource (This : in out BasicTransformerInterface) return StreamSource_Access is abstract;
   function getInputStream (This : in out BasicTransformerInterface) return InputStream_Access is abstract;
   function getURIResolver (This : in out BasicTransformerInterface) return URIResolver_Access is abstract;
   function translate (This : in out BasicTransformerInterface; xmlDocumentStr : Unbounded_String) return Unbounded_String is abstract;

end org.allbinary.logic.visual.transform.BasicTransformerInterface_Package;


