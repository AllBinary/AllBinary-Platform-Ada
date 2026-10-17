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
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbFilePath_Package; use org.allbinary.logic.io.path.AbFilePath_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package; use org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;
with org.allbinary.data.tree.dom.URIResolverStrings_Package; use org.allbinary.data.tree.dom.URIResolverStrings_Package;
with org.allbinary.data.tree.dom.BasicUriResolver_Package; use org.allbinary.data.tree.dom.BasicUriResolver_Package;

package org.allbinary.data.tree.dom.CustomUriResolver_Package is

   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbFilePath_Package renames Standard.org.allbinary.logic.io.path.AbFilePath_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoTemplateData_Package renames Standard.org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;

   type CustomUriResolver is tagged;
   type CustomUriResolver_Access is access all CustomUriResolver'Class;
   type CustomUriResolver_Access_Array is array (Natural range <>) of CustomUriResolver_Access;
   type CustomUriResolver_Access_Array_Access is access all CustomUriResolver_Access_Array;

   type CustomUriResolver is new URIResolver with record
      logUtil : LogUtil_Access;
      uriResolverStrings : URIResolverStrings_Access;
      path : Unbounded_String;
      basicURIResolver : BasicUriResolver_Access;
   end record;

   procedure Initialize (This : in out CustomUriResolver'Class; path : Unbounded_String; basicURIResolver_Param : access BasicUriResolver'Class);
   function Create (path : Unbounded_String; basicURIResolver_Param : access BasicUriResolver'Class) return CustomUriResolver_Access;
   function resolve (This : in out CustomUriResolver; href : Unbounded_String; base : Unbounded_String) return Source_Access;
   procedure resolve (This : in out CustomUriResolver; href : Unbounded_String; base : Unbounded_String);
   function toString (This : in out CustomUriResolver) return Unbounded_String;

end org.allbinary.data.tree.dom.CustomUriResolver_Package;


