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
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;

   type TransformInfoHttpStoreFactory is tagged;
   type TransformInfoHttpStoreFactory_Access is access all TransformInfoHttpStoreFactory'Class;
   type TransformInfoHttpStoreFactory_Access_Array is array (Natural range <>) of TransformInfoHttpStoreFactory_Access;
   type TransformInfoHttpStoreFactory_Access_Array_Access is access all TransformInfoHttpStoreFactory_Access_Array;

   type TransformInfoHttpStoreFactory is new TransformInfoFactoryInterface with null record;
   instance : TransformInfoHttpStoreFactory_Access;

   procedure Initialize (This : in out TransformInfoHttpStoreFactory'Class);
   function Create return TransformInfoHttpStoreFactory_Access;
   function getInstance return TransformInfoHttpStoreFactory_Access;
   function getInstance (This : in out TransformInfoHttpStoreFactory; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access;
   procedure getInstance (This : in out TransformInfoHttpStoreFactory; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package;


