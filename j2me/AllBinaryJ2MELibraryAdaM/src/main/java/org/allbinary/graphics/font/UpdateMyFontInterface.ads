-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package org.allbinary.graphics.font.UpdateMyFontInterface_Package is


   type UpdateMyFontInterface is interface;
   type UpdateMyFontInterface_Access is access all UpdateMyFontInterface'Class;
   type UpdateMyFontInterface_Access_Array is array (Natural range <>) of UpdateMyFontInterface_Access;
   type UpdateMyFontInterface_Access_Array_Access is access all UpdateMyFontInterface_Access_Array;
   procedure updateMeasurement (This : in out UpdateMyFontInterface; graphics_Param : access Graphics'Class) is abstract;

end org.allbinary.graphics.font.UpdateMyFontInterface_Package;


