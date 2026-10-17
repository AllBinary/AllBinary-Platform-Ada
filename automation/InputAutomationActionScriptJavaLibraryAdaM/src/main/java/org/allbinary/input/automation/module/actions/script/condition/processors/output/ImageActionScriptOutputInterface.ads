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
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package is


   type ImageActionScriptOutputInterface is interface and ProfileActionScriptOutputInterface;
   type ImageActionScriptOutputInterface_Access is access all ImageActionScriptOutputInterface'Class;
   type ImageActionScriptOutputInterface_Access_Array is array (Natural range <>) of ImageActionScriptOutputInterface_Access;
   type ImageActionScriptOutputInterface_Access_Array_Access is access all ImageActionScriptOutputInterface_Access_Array;
   function getImageTypes (This : in out ImageActionScriptOutputInterface) return ImageTypes_Access is abstract;
   procedure setImageTypes (This : in out ImageActionScriptOutputInterface; imageTypes_Param : access ImageTypes_Package.ImageTypes'Class) is abstract;
   function isSaved (This : in out ImageActionScriptOutputInterface) return Boolean is abstract;
   procedure setSaved (This : in out ImageActionScriptOutputInterface; saved : Boolean) is abstract;
   function isDisplay (This : in out ImageActionScriptOutputInterface) return Boolean is abstract;
   procedure setDisplay (This : in out ImageActionScriptOutputInterface; display : Boolean) is abstract;
   procedure log (This : in out ImageActionScriptOutputInterface) is abstract;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;


