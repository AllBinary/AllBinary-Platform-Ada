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
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package is

   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type TransformInfoObjectConfigGeneratorFactoryInterface is interface;
   type TransformInfoObjectConfigGeneratorFactoryInterface_Access is access all TransformInfoObjectConfigGeneratorFactoryInterface'Class;
   type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGeneratorFactoryInterface_Access;
   type TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array_Access is access all TransformInfoObjectConfigGeneratorFactoryInterface_Access_Array;
   function getInstance (This : in out TransformInfoObjectConfigGeneratorFactoryInterface; transformInfoInterface : TransformInfoInterface_Access) return TransformInfoObjectConfigGenerator_Access is abstract;

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorFactoryInterface_Package;


