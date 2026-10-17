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
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;

package org.allbinary.graphics.font.UpdateMyFontProcessor_Package is


   type UpdateMyFontProcessor is tagged;
   type UpdateMyFontProcessor_Access is access all UpdateMyFontProcessor'Class;
   type UpdateMyFontProcessor_Access_Array is array (Natural range <>) of UpdateMyFontProcessor_Access;
   type UpdateMyFontProcessor_Access_Array_Access is access all UpdateMyFontProcessor_Access_Array;

   type UpdateMyFontProcessor is new MyFontProcessor with record
      updateMeasurementProcessor : UpdateMyFontInterface_Access;
   end record;

   procedure Initialize (This : in out UpdateMyFontProcessor'Class; keyValueDrawCharArray_Param : access UpdateMyFontInterface_Package.UpdateMyFontInterface'Class);
   function Create (keyValueDrawCharArray_Param : access UpdateMyFontInterface_Package.UpdateMyFontInterface'Class) return UpdateMyFontProcessor_Access;
   procedure process (This : in out UpdateMyFontProcessor; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.font.UpdateMyFontProcessor_Package;


