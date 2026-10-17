-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.graphics.color.Color_Package; use org.allbinary.graphics.color.Color_Package;

package org.allbinary.graphics.color.ColorUtil_Package is


   type ColorUtil is tagged;
   type ColorUtil_Access is access all ColorUtil'Class;
   type ColorUtil_Access_Array is array (Natural range <>) of ColorUtil_Access;
   type ColorUtil_Access_Array_Access is access all ColorUtil_Access_Array;

   type ColorUtil is new Java_Object with null record;
   instance : ColorUtil_Access;

   procedure Initialize (This : in out ColorUtil'Class);
   function Create return ColorUtil_Access;
   function getInstance return ColorUtil_Access;
   function isGreyishOrWhiteLike (This : in out ColorUtil; color_Param : access Color'Class) return Boolean;
   procedure isGreyishOrWhiteLike (This : in out ColorUtil; color_Param : access Color'Class);
   function isDark (This : in out ColorUtil; color_Param : access Color'Class) return Boolean;
   procedure isDark (This : in out ColorUtil; color_Param : access Color'Class);

end org.allbinary.graphics.color.ColorUtil_Package;


