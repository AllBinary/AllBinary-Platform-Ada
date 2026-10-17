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

package org.allbinary.logic.visual.theme.ThemeData_Package is


   type ThemeData is tagged;
   type ThemeData_Access is access all ThemeData'Class;
   type ThemeData_Access_Array is array (Natural range <>) of ThemeData_Access;
   type ThemeData_Access_Array_Access is access all ThemeData_Access_Array;

   type ThemeData is new Java_Object with record
      NAME : Unbounded_String;
      PATH : Unbounded_String;
      PREVIEW_IMAGE_NAME : Unbounded_String;
      PREVIEW_IMAGE_PATH : Unbounded_String;
   end record;
   instance : ThemeData_Access;

   procedure Initialize (This : in out ThemeData'Class);
   function Create return ThemeData_Access;
   function getInstance return ThemeData_Access;

end org.allbinary.logic.visual.theme.ThemeData_Package;


