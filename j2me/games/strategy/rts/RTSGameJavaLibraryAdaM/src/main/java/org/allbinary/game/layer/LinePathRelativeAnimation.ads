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
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.game.layer.LinePathAnimation_Package; use org.allbinary.game.layer.LinePathAnimation_Package;

package org.allbinary.game.layer.LinePathRelativeAnimation_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;

   type LinePathRelativeAnimation is tagged;
   type LinePathRelativeAnimation_Access is access all LinePathRelativeAnimation'Class;
   type LinePathRelativeAnimation_Access_Array is array (Natural range <>) of LinePathRelativeAnimation_Access;
   type LinePathRelativeAnimation_Access_Array_Access is access all LinePathRelativeAnimation_Access_Array;

   type LinePathRelativeAnimation is new LinePathAnimation with null record;
   instanceC : LinePathRelativeAnimation_Access;

   procedure Initialize (This : in out LinePathRelativeAnimation'Class);
   function Create return LinePathRelativeAnimation_Access;
   function getInstance return LinePathAnimation_Access;
   procedure paint (This : in out LinePathRelativeAnimation; graphics_Param : access Graphics'Class; point_Param : access GPoint'Class; nextPoint_Param : access GPoint'Class; tiledLayer_Param : access Layer'Class);

end org.allbinary.game.layer.LinePathRelativeAnimation_Package;


