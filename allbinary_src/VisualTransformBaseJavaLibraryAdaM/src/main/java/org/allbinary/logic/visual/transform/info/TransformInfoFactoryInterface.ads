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

package org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;

   type TransformInfoFactoryInterface is interface;
   type TransformInfoFactoryInterface_Access is access all TransformInfoFactoryInterface'Class;
   type TransformInfoFactoryInterface_Access_Array is array (Natural range <>) of TransformInfoFactoryInterface_Access;
   type TransformInfoFactoryInterface_Access_Array_Access is access all TransformInfoFactoryInterface_Access_Array;
   type TransformInfoFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInfoFactoryInterface_Access_Array_Access;
   type TransformInfoFactoryInterface_Access_Array_Access_Array_Access is access all TransformInfoFactoryInterface_Access_Array_Access_Array;
   function getInstance (This : in out TransformInfoFactoryInterface; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access is abstract;

end org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package;


