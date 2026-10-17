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
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package is

   package TransformInfoObjectConfigNoManipulationFactory_Package renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigNoManipulationFactory_Package;

   type TransformInfoHttpStoreNoManipulation is tagged;
   type TransformInfoHttpStoreNoManipulation_Access is access all TransformInfoHttpStoreNoManipulation'Class;
   type TransformInfoHttpStoreNoManipulation_Access_Array is array (Natural range <>) of TransformInfoHttpStoreNoManipulation_Access;
   type TransformInfoHttpStoreNoManipulation_Access_Array_Access is access all TransformInfoHttpStoreNoManipulation_Access_Array;

   type TransformInfoHttpStoreNoManipulation is new TransformInfoHttpStore with null record;

   procedure Initialize (This : in out TransformInfoHttpStoreNoManipulation'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoHttpStoreNoManipulation_Access;
   procedure setObjectConfigFile (This : in out TransformInfoHttpStoreNoManipulation; value : Unbounded_String);
   procedure setObjectConfig (This : in out TransformInfoHttpStoreNoManipulation; value : Unbounded_String);

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package;


