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

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package is


   type ImageActionScriptOutputData is tagged;
   type ImageActionScriptOutputData_Access is access all ImageActionScriptOutputData'Class;
   type ImageActionScriptOutputData_Access_Array is array (Natural range <>) of ImageActionScriptOutputData_Access;
   type ImageActionScriptOutputData_Access_Array_Access is access all ImageActionScriptOutputData_Access_Array;
   type ImageActionScriptOutputData_Access_Array_Access_Array is array (Natural range <>) of ImageActionScriptOutputData_Access_Array_Access;
   type ImageActionScriptOutputData_Access_Array_Access_Array_Access is access all ImageActionScriptOutputData_Access_Array_Access_Array;

   type ImageActionScriptOutputData is new Java_Object with null record;
   NAME : Unbounded_String;
   SAVE : Unbounded_String;
   DISPLAY : Unbounded_String;
   TYPE_Id : Unbounded_String;
   TYPES : Unbounded_String;

   procedure Initialize (This : in out ImageActionScriptOutputData'Class);
   function Create return ImageActionScriptOutputData_Access;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package;


