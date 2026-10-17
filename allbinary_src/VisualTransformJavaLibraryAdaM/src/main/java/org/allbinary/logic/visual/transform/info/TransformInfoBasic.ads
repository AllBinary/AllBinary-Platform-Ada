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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.AbContext_Package; use org.allbinary.business.context.AbContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoBasic_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package AbContext_Package renames Standard.org.allbinary.business.context.AbContext_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package TransformInfoObjectConfigInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type TransformInfoBasic is tagged;
   type TransformInfoBasic_Access is access all TransformInfoBasic'Class;
   type TransformInfoBasic_Access_Array is array (Natural range <>) of TransformInfoBasic_Access;
   type TransformInfoBasic_Access_Array_Access is access all TransformInfoBasic_Access_Array;

   type TransformInfoBasic is new AbContext and TransformInfoHttpInterface with record
      storeFrontInterface : StoreFrontInterface_Access;
   end record;

   procedure Initialize (This : in out TransformInfoBasic'Class; storeFrontInterface : StoreFrontInterface_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (storeFrontInterface : StoreFrontInterface_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoBasic_Access;
   function getStoreName (This : in out TransformInfoBasic) return Unbounded_String;
   procedure getStoreName (This : in out TransformInfoBasic);
   function log (This : in out TransformInfoBasic) return Unbounded_String;
   procedure log (This : in out TransformInfoBasic);
   procedure override (This : in out TransformInfoBasic; hashMap : HashMap_Access);
   function getName (This : in out TransformInfoBasic) return Unbounded_String;
   procedure getName (This : in out TransformInfoBasic);
   function getObjectFile (This : in out TransformInfoBasic) return Unbounded_String;
   procedure getObjectFile (This : in out TransformInfoBasic);
   function getObject (This : in out TransformInfoBasic) return Java_Object_Access;
   procedure getObject (This : in out TransformInfoBasic);
   function getObjectConfigInterface (This : in out TransformInfoBasic) return TransformInfoObjectConfigInterface_Access;
   procedure getObjectConfigInterface (This : in out TransformInfoBasic);
   procedure setObjectConfigInterface (This : in out TransformInfoBasic; transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access);
   function getTemplateFilePath (This : in out TransformInfoBasic) return AbPath_Access;
   procedure getTemplateFilePath (This : in out TransformInfoBasic);
   function getTemplateFile (This : in out TransformInfoBasic) return Unbounded_String;
   procedure getTemplateFile (This : in out TransformInfoBasic);
   function getTemplate (This : in out TransformInfoBasic) return Unbounded_String;
   procedure getTemplate (This : in out TransformInfoBasic);
   function getDataFilePath (This : in out TransformInfoBasic) return AbPath_Access;
   procedure getDataFilePath (This : in out TransformInfoBasic);
   function getDataFile (This : in out TransformInfoBasic) return Unbounded_String;
   procedure getDataFile (This : in out TransformInfoBasic);
   function getDataDocument (This : in out TransformInfoBasic) return Document_Access;
   procedure getDataDocument (This : in out TransformInfoBasic);
   procedure setName (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setStoreName (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setObjectFile (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setObject (This : in out TransformInfoBasic; anyType : Java_Object_Access);
   procedure setObjectConfigFile (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setTemplateFile (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setTemplate (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setDataFile (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setData (This : in out TransformInfoBasic; value : Unbounded_String);
   procedure setChild (This : in out TransformInfoBasic);
   function isChild (This : in out TransformInfoBasic) return Boolean;
   procedure isChild (This : in out TransformInfoBasic);
   function getImportUriPath (This : in out TransformInfoBasic) return Unbounded_String;
   procedure getImportUriPath (This : in out TransformInfoBasic);
   procedure setImportUriPath (This : in out TransformInfoBasic; importUriPath : Unbounded_String);
   function getKey (This : in out TransformInfoBasic) return Java_Object_Access;
   procedure getKey (This : in out TransformInfoBasic);
   function toVector (This : in out TransformInfoBasic) return BasicArrayList_Access;
   procedure toVector (This : in out TransformInfoBasic);
   function toHashMap (This : in out TransformInfoBasic) return HashMap_Access;
   procedure toHashMap (This : in out TransformInfoBasic);

end org.allbinary.logic.visual.transform.info.TransformInfoBasic_Package;


