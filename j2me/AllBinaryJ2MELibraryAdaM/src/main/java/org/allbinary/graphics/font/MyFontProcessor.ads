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
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;

package org.allbinary.graphics.font.MyFontProcessor_Package is


   type MyFontProcessor is tagged;
   type MyFontProcessor_Access is access all MyFontProcessor'Class;
   type MyFontProcessor_Access_Array is array (Natural range <>) of MyFontProcessor_Access;
   type MyFontProcessor_Access_Array_Access is access all MyFontProcessor_Access_Array;

   type MyFontProcessor is new Java_Object with null record;
   instance : MyFontProcessor_Access;

   procedure Initialize (This : in out MyFontProcessor'Class);
   function Create return MyFontProcessor_Access;
   function defaultCharWidth (font : Font_Access) return Integer;
   procedure defaultCharWidth (font : Font_Access);
   function defaultStringWidth (font : Font_Access; size : Integer) return Integer;
   procedure defaultStringWidth (font : Font_Access; size : Integer);
   function getInstance return MyFontProcessor_Access;
   procedure getInstance;
   procedure process (This : in out MyFontProcessor; graphics : Graphics_Access);

end org.allbinary.graphics.font.MyFontProcessor_Package;


