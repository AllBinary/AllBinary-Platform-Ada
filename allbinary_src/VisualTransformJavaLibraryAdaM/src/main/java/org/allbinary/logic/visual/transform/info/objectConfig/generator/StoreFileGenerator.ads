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
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.InputOutputTypeData_Package; use org.allbinary.logic.io.InputOutputTypeData_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfosData_Package; use org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package is

   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package InputOutputTypeData_Package renames Standard.org.allbinary.logic.io.InputOutputTypeData_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package FileUtil_Package renames Standard.org.allbinary.logic.io.file.FileUtil_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package TransformInfoHttpInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoHttpStoreInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfosData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type StoreFileGenerator is tagged;
   type StoreFileGenerator_Access is access all StoreFileGenerator'Class;
   type StoreFileGenerator_Access_Array is array (Natural range <>) of StoreFileGenerator_Access;
   type StoreFileGenerator_Access_Array_Access is access all StoreFileGenerator_Access_Array;

   type StoreFileGenerator is new TransformInfoObjectConfigGenerator with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      output : Unbounded_String;
      fileAbPath : AbPath_Access;
      file : AbFile_Access;
   end record;

   procedure Initialize (This : in out StoreFileGenerator'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return StoreFileGenerator_Access;
   function process (This : in out StoreFileGenerator; input : Unbounded_String) return Unbounded_String;
   procedure process (This : in out StoreFileGenerator; input : Unbounded_String);

end org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;


