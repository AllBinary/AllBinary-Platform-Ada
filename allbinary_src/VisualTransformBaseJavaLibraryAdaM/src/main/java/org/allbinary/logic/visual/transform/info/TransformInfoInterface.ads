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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type TransformInfoInterface is interface and TableMappingInterface;
   type TransformInfoInterface_Access is access all TransformInfoInterface'Class;
   type TransformInfoInterface_Access_Array is array (Natural range <>) of TransformInfoInterface_Access;
   type TransformInfoInterface_Access_Array_Access is access all TransformInfoInterface_Access_Array;
   function log (This : in out TransformInfoInterface) return Unbounded_String is abstract;
   procedure override (This : in out TransformInfoInterface; hashMap_Param : access HashMap_Package.HashMap'Class) is abstract;
   function getName (This : in out TransformInfoInterface) return Unbounded_String is abstract;
   procedure setStoreName (This : in out TransformInfoInterface; value : Unbounded_String) is abstract;
   function getStoreName (This : in out TransformInfoInterface) return Unbounded_String is abstract;
   function getObjectFile (This : in out TransformInfoInterface) return Unbounded_String is abstract;
   function getObject (This : in out TransformInfoInterface) return Java_Object_Access is abstract;
   function getTemplateFilePath (This : in out TransformInfoInterface) return AbPath_Access is abstract;
   function getTemplateFile (This : in out TransformInfoInterface) return Unbounded_String is abstract;
   function getTemplate (This : in out TransformInfoInterface) return Unbounded_String is abstract;
   function getDataFilePath (This : in out TransformInfoInterface) return AbPath_Access is abstract;
   function getDataFile (This : in out TransformInfoInterface) return Unbounded_String is abstract;
   function getDataDocument (This : in out TransformInfoInterface) return Document_Access is abstract;
   procedure setName (This : in out TransformInfoInterface; value : Unbounded_String) is abstract;
   procedure setObjectFile (This : in out TransformInfoInterface; value : Unbounded_String) is abstract;
   procedure setObject (This : in out TransformInfoInterface; anyType_Param : access Java_Object'Class) is abstract;
   procedure setObjectConfigInterface (This : in out TransformInfoInterface; transformInfoObjectConfigInterface_Param : access TransformInfoObjectConfigInterface_Package.TransformInfoObjectConfigInterface'Class) is abstract;
   function getObjectConfigInterface (This : in out TransformInfoInterface) return TransformInfoObjectConfigInterface_Access is abstract;
   procedure setTemplateFile (This : in out TransformInfoInterface; value : Unbounded_String) is abstract;
   procedure setTemplate (This : in out TransformInfoInterface; value : Unbounded_String) is abstract;
   procedure setDataFile (This : in out TransformInfoInterface; value : Unbounded_String) is abstract;
   procedure setData (This : in out TransformInfoInterface; value : Unbounded_String) is abstract;
   procedure setChild (This : in out TransformInfoInterface) is abstract;
   function isChild (This : in out TransformInfoInterface) return Boolean is abstract;

end org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;


