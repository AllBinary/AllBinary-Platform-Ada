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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.AbContext_Package; use org.allbinary.business.context.AbContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoBasic_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package AbContext_Package renames Standard.org.allbinary.business.context.AbContext_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type TransformInfoBasic is tagged;
   type TransformInfoBasic_Access is access all TransformInfoBasic'Class;
   type TransformInfoBasic_Access_Array is array (Natural range <>) of TransformInfoBasic_Access;
   type TransformInfoBasic_Access_Array_Access is access all TransformInfoBasic_Access_Array;
   type TransformInfoBasic_Access_Array_Access_Array is array (Natural range <>) of TransformInfoBasic_Access_Array_Access;
   type TransformInfoBasic_Access_Array_Access_Array_Access is access all TransformInfoBasic_Access_Array_Access_Array;

   type TransformInfoBasic is new AbContext and TransformInfoHttpInterface with record
      storeFrontInterface : StoreFrontInterface_Access;
   end record;

   procedure Initialize (This : in out TransformInfoBasic'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoBasic_Access;
   function getStoreName (This : in out TransformInfoBasic) return Unbounded_String;
   function log (This : in out TransformInfoBasic) return Unbounded_String;
   procedure override (This : in out TransformInfoBasic; hashMap_Param : access HashMap_Package.HashMap'Class);
   function getName (This : in out TransformInfoBasic) return Unbounded_String;
   function getObjectFile (This : in out TransformInfoBasic) return Unbounded_String;
   function getObject (This : in out TransformInfoBasic) return Java_Object_Access;
   function getObjectConfigInterface (This : in out TransformInfoBasic) return TransformInfoObjectConfigInterface_Access;
   procedure setObjectConfigInterface (This : in out TransformInfoBasic; transformInfoObjectConfigInterface_Param : access TransformInfoObjectConfigInterface_Package.TransformInfoObjectConfigInterface'Class);
   function getTemplateFilePath (This : in out TransformInfoBasic) return AbPath_Access;
   function getTemplateFile (This : in out TransformInfoBasic) return Unbounded_String;
   function getTemplate (This : in out TransformInfoBasic) return Unbounded_String;
   function getDataFilePath (This : in out TransformInfoBasic) return AbPath_Access;
   function getDataFile (This : in out TransformInfoBasic) return Unbounded_String;
   function getDataDocument (This : in out TransformInfoBasic) return Document_Access;
   procedure setName (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setStoreName (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setObjectFile (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setObject (This : in out TransformInfoBasic; anyType_Param : access Java_Object'Class);
   procedure setObjectConfigFile (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setTemplateFile (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setTemplate (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setDataFile (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setData (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setChild (This : in out TransformInfoBasic);
   function isChild (This : in out TransformInfoBasic) return Boolean;
   function getImportUriPath (This : in out TransformInfoBasic) return Unbounded_String;
   procedure setImportUriPath (This : in out TransformInfoBasic; importUriPath : Unbounded_String);
   function getKey (This : in out TransformInfoBasic) return Java_Object_Access;
   function toVector (This : in out TransformInfoBasic) return BasicArrayList_Access;
   function toHashMap (This : in out TransformInfoBasic) return HashMap_Access;
   procedure setObject (This : in out TransformInfoBasic; Value : Unbounded_String);

end org.allbinary.logic.visual.transform.info.TransformInfoBasic_Package;


