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
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.system.Memory_Package; use org.allbinary.system.Memory_Package;
with org.allbinary.canvas.GameStatisticsFactory_Package; use org.allbinary.canvas.GameStatisticsFactory_Package;

package org.allbinary.canvas.SpecialMessageUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package Memory_Package renames Standard.org.allbinary.system.Memory_Package;

   type SpecialMessageUtil is tagged;
   type SpecialMessageUtil_Access is access all SpecialMessageUtil'Class;
   type SpecialMessageUtil_Access_Array is array (Natural range <>) of SpecialMessageUtil_Access;
   type SpecialMessageUtil_Access_Array_Access is access all SpecialMessageUtil_Access_Array;

   type SpecialMessageUtil is new Java_Object with null record;
   SINGLETON : SpecialMessageUtil_Access;

   procedure Initialize (This : in out SpecialMessageUtil'Class);
   function Create return SpecialMessageUtil_Access;
   function getInstance return SpecialMessageUtil_Access;
   function get (This : in out SpecialMessageUtil) return Unbounded_String;

end org.allbinary.canvas.SpecialMessageUtil_Package;


