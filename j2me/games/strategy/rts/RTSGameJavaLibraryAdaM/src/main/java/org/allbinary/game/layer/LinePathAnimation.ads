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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;

package org.allbinary.game.layer.LinePathAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;

   type LinePathAnimation is tagged;
   type LinePathAnimation_Access is access all LinePathAnimation'Class;
   type LinePathAnimation_Access_Array is array (Natural range <>) of LinePathAnimation_Access;
   type LinePathAnimation_Access_Array_Access is access all LinePathAnimation_Access_Array;

   type LinePathAnimation is new Java_Object with null record;
   instance : LinePathAnimation_Access;

   procedure Initialize (This : in out LinePathAnimation'Class);
   function Create return LinePathAnimation_Access;
   function getInstance return LinePathAnimation_Access;
   procedure paint (This : in out LinePathAnimation; graphics_Param : access Graphics_Package.Graphics'Class; point_Param : access GPoint_Package.GPoint'Class; nextPoint_Param : access GPoint_Package.GPoint'Class; tiledLayer_Param : access Layer_Package.Layer'Class);

end org.allbinary.game.layer.LinePathAnimation_Package;


