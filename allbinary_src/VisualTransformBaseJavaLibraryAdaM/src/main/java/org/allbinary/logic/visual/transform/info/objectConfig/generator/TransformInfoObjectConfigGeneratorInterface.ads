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

package org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package is


   type TransformInfoObjectConfigGeneratorInterface is interface;
   type TransformInfoObjectConfigGeneratorInterface_Access is access all TransformInfoObjectConfigGeneratorInterface'Class;
   type TransformInfoObjectConfigGeneratorInterface_Access_Array is array (Natural range <>) of TransformInfoObjectConfigGeneratorInterface_Access;
   type TransformInfoObjectConfigGeneratorInterface_Access_Array_Access is access all TransformInfoObjectConfigGeneratorInterface_Access_Array;
   function process (This : in out TransformInfoObjectConfigGeneratorInterface; input : Unbounded_String) return Unbounded_String is abstract;

end org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGeneratorInterface_Package;


