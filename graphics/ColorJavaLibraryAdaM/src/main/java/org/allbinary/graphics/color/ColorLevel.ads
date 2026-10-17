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

package org.allbinary.graphics.color.ColorLevel_Package is


   type ColorLevel is tagged;
   type ColorLevel_Access is access all ColorLevel'Class;
   type ColorLevel_Access_Array is array (Natural range <>) of ColorLevel_Access;
   type ColorLevel_Access_Array_Access is access all ColorLevel_Access_Array;

   type ColorLevel is new Java_Object with null record;
   COLOR_MASK : Integer;
   MIN : Integer;
   AVG : Integer;
   LIGHT : Integer;
   HIGH : Integer;

   procedure Initialize (This : in out ColorLevel'Class);
   function Create return ColorLevel_Access;

end org.allbinary.graphics.color.ColorLevel_Package;


