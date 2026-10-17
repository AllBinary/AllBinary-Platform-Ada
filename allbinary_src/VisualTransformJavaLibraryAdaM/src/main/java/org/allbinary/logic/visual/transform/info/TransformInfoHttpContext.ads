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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package is

   package FREEBLISKET_PATH_GLOBALS_Package renames org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;

   type TransformInfoHttpContext is tagged;
   type TransformInfoHttpContext_Access is access all TransformInfoHttpContext'Class;
   type TransformInfoHttpContext_Access_Array is array (Natural range <>) of TransformInfoHttpContext_Access;
   type TransformInfoHttpContext_Access_Array_Access is access all TransformInfoHttpContext_Access_Array;

   type TransformInfoHttpContext is new TransformInfoHttp with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TransformInfoHttpContext'Class; databaseHashMap : HashMap_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (databaseHashMap : HashMap_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoHttpContext_Access;
   function getPath (This : in out TransformInfoHttpContext) return Unbounded_String;
   procedure getPath (This : in out TransformInfoHttpContext);
   function getTemplateFilePath (This : in out TransformInfoHttpContext) return AbPath_Access;
   procedure getTemplateFilePath (This : in out TransformInfoHttpContext);
   function getObjectConfigFilePath (This : in out TransformInfoHttpContext) return AbPath_Access;
   procedure getObjectConfigFilePath (This : in out TransformInfoHttpContext);
   function getDataFilePath (This : in out TransformInfoHttpContext) return AbPath_Access;
   procedure getDataFilePath (This : in out TransformInfoHttpContext);

end org.allbinary.logic.visual.transform.info.TransformInfoHttpContext_Package;


