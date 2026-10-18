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
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package org.allbinary.graphics.font.FontDebugFactory_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type FontDebugFactory is tagged;
   type FontDebugFactory_Access is access all FontDebugFactory'Class;
   type FontDebugFactory_Access_Array is array (Natural range <>) of FontDebugFactory_Access;
   type FontDebugFactory_Access_Array_Access is access all FontDebugFactory_Access_Array;

   type FontDebugFactory is new Java_Object with null record;
   instance : FontDebugFactory_Access;

   procedure Initialize (This : in out FontDebugFactory'Class);
   function Create return FontDebugFactory_Access;
   function getInstance return FontDebugFactory_Access;
   procedure setFont (This : in out FontDebugFactory; font_Param : access Font_Package.Font'Class; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.font.FontDebugFactory_Package;


