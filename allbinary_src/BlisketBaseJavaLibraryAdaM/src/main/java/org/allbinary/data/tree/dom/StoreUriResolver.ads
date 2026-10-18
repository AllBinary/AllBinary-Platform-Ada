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
--  with javax.xml.transform.Source_Package; use javax.xml.transform.Source_Package;
--  with javax.xml.transform.TransformerException_Package; use javax.xml.transform.TransformerException_Package;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.data.tree.dom.URIResolverStrings_Package; use org.allbinary.data.tree.dom.URIResolverStrings_Package;
with org.allbinary.data.tree.dom.BasicUriResolver_Package; use org.allbinary.data.tree.dom.BasicUriResolver_Package;

package org.allbinary.data.tree.dom.StoreUriResolver_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type StoreUriResolver is tagged;
   type StoreUriResolver_Access is access all StoreUriResolver'Class;
   type StoreUriResolver_Access_Array is array (Natural range <>) of StoreUriResolver_Access;
   type StoreUriResolver_Access_Array_Access is access all StoreUriResolver_Access_Array;
   type StoreUriResolver_Access_Array_Access_Array is array (Natural range <>) of StoreUriResolver_Access_Array_Access;
   type StoreUriResolver_Access_Array_Access_Array_Access is access all StoreUriResolver_Access_Array_Access_Array;

   type StoreUriResolver is new Java_Object with record
      logUtil : LogUtil_Access;
      uriResolverStrings : URIResolverStrings_Access;
      basicURIResolver : BasicUriResolver_Access;
      parentTransformInfoInterface : TransformInfoInterface_Access;
   end record;

   procedure Initialize (This : in out StoreUriResolver'Class; parentTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; basicURIResolver_Param : access BasicUriResolver_Package.BasicUriResolver'Class);
   function Create (parentTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; basicURIResolver_Param : access BasicUriResolver_Package.BasicUriResolver'Class) return StoreUriResolver_Access;
   function resolve (This : in out StoreUriResolver; href : Unbounded_String; base : Unbounded_String) return Source_Access;
   procedure resolve (This : in out StoreUriResolver; href : Unbounded_String; base : Unbounded_String);
   function toString (This : in out StoreUriResolver) return Unbounded_String;

end org.allbinary.data.tree.dom.StoreUriResolver_Package;


