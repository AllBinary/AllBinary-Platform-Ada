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
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;

   type TransformInfoHttpFactory is tagged;
   type TransformInfoHttpFactory_Access is access all TransformInfoHttpFactory'Class;
   type TransformInfoHttpFactory_Access_Array is array (Natural range <>) of TransformInfoHttpFactory_Access;
   type TransformInfoHttpFactory_Access_Array_Access is access all TransformInfoHttpFactory_Access_Array;
   type TransformInfoHttpFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttpFactory_Access_Array_Access;
   type TransformInfoHttpFactory_Access_Array_Access_Array_Access is access all TransformInfoHttpFactory_Access_Array_Access_Array;

   type TransformInfoHttpFactory is new Java_Object with null record;

   procedure Initialize (This : in out TransformInfoHttpFactory'Class);
   function Create return TransformInfoHttpFactory_Access;
   function getInstance (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access;
   procedure getInstance (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;


