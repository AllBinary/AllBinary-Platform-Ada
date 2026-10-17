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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package; use org.allbinary.logic.visual.transform.info.objectConfig.generator.TransformInfoObjectConfigGenerator_Package;

package org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;

   type BasicGenerator is tagged;
   type BasicGenerator_Access is access all BasicGenerator'Class;
   type BasicGenerator_Access_Array is array (Natural range <>) of BasicGenerator_Access;
   type BasicGenerator_Access_Array_Access is access all BasicGenerator_Access_Array;

   type BasicGenerator is new TransformInfoObjectConfigGenerator with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out BasicGenerator'Class);
   function Create return BasicGenerator_Access;
   function process (This : in out BasicGenerator; input : Unbounded_String) return Unbounded_String;
   procedure process (This : in out BasicGenerator; input : Unbounded_String);

end org.allbinary.logic.visual.transform.info.objectConfig.generator.BasicGenerator_Package;


