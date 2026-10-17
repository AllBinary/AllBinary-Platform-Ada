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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.font.FontDebugBase_Package; use org.allbinary.graphics.font.FontDebugBase_Package;

package org.allbinary.device.GraphicsInterface_Package is

   package FontDebugBase_Package renames Standard.org.allbinary.graphics.font.FontDebugBase_Package;

   type GraphicsInterface is interface;
   type GraphicsInterface_Access is access all GraphicsInterface'Class;
   type GraphicsInterface_Access_Array is array (Natural range <>) of GraphicsInterface_Access;
   type GraphicsInterface_Access_Array_Access is access all GraphicsInterface_Access_Array;
   procedure setFontDebug (This : in out GraphicsInterface; font_Param : access Font'Class; fontDebug_Param : access FontDebugBase'Class) is abstract;

end org.allbinary.device.GraphicsInterface_Package;


