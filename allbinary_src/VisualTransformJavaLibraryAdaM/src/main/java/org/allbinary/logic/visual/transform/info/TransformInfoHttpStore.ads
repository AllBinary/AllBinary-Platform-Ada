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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package is

   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;

   type TransformInfoHttpStore is tagged;
   type TransformInfoHttpStore_Access is access all TransformInfoHttpStore'Class;
   type TransformInfoHttpStore_Access_Array is array (Natural range <>) of TransformInfoHttpStore_Access;
   type TransformInfoHttpStore_Access_Array_Access is access all TransformInfoHttpStore_Access_Array;

   type TransformInfoHttpStore is new TransformInfoHttp and TransformInfoHttpStoreInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TransformInfoHttpStore'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoHttpStore_Access;
   function getPath (This : in out TransformInfoHttpStore) return Unbounded_String;
   procedure getPath (This : in out TransformInfoHttpStore);
   function getTemplateFilePath (This : in out TransformInfoHttpStore) return AbPath_Access;
   procedure getTemplateFilePath (This : in out TransformInfoHttpStore);
   function getObjectConfigFilePath (This : in out TransformInfoHttpStore) return AbPath_Access;
   procedure getObjectConfigFilePath (This : in out TransformInfoHttpStore);
   function getDataFilePath (This : in out TransformInfoHttpStore) return AbPath_Access;
   procedure getDataFilePath (This : in out TransformInfoHttpStore);

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package;


