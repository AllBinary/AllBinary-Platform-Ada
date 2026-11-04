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

limited with org.allbinary.game.layer.LinePathRelativeAnimation_Package;
package org.allbinary.game.layer.LinePathRelativeAnimation_Package_References is
   type LinePathRelativeAnimation_Access is access all org.allbinary.game.layer.LinePathRelativeAnimation_Package.LinePathRelativeAnimation'Class;
   type LinePathRelativeAnimation_Access_Array is array (Natural range <>) of LinePathRelativeAnimation_Access;
   type LinePathRelativeAnimation_Access_Array_Access is access all LinePathRelativeAnimation_Access_Array;
   type LinePathRelativeAnimation_Access_Array_Access_Array is array (Natural range <>) of LinePathRelativeAnimation_Access_Array_Access;
   type LinePathRelativeAnimation_Access_Array_Access_Array_Access is access all LinePathRelativeAnimation_Access_Array_Access_Array;
end org.allbinary.game.layer.LinePathRelativeAnimation_Package_References;

with org.allbinary.game.layer.LinePathRelativeAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;
with org.allbinary.game.layer.LinePathAnimation_Package; use org.allbinary.game.layer.LinePathAnimation_Package;

package org.allbinary.game.layer.LinePathRelativeAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   use type Layer_Access;
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   use type Layer_Access_Array;
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   use type Layer_Access_Array_Access;
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   use type Layer_Access_Array_Access_Array;
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   use type Layer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LinePathRelativeAnimation_Access is org.allbinary.game.layer.LinePathRelativeAnimation_Package_References.LinePathRelativeAnimation_Access;
   function "=" (Left, Right : LinePathRelativeAnimation_Access) return Boolean renames org.allbinary.game.layer.LinePathRelativeAnimation_Package_References."=";
   subtype LinePathRelativeAnimation_Access_Array is org.allbinary.game.layer.LinePathRelativeAnimation_Package_References.LinePathRelativeAnimation_Access_Array;
   function "=" (Left, Right : LinePathRelativeAnimation_Access_Array) return Boolean renames org.allbinary.game.layer.LinePathRelativeAnimation_Package_References."=";
   subtype LinePathRelativeAnimation_Access_Array_Access is org.allbinary.game.layer.LinePathRelativeAnimation_Package_References.LinePathRelativeAnimation_Access_Array_Access;
   function "=" (Left, Right : LinePathRelativeAnimation_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LinePathRelativeAnimation_Package_References."=";
   subtype LinePathRelativeAnimation_Access_Array_Access_Array is org.allbinary.game.layer.LinePathRelativeAnimation_Package_References.LinePathRelativeAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : LinePathRelativeAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.LinePathRelativeAnimation_Package_References."=";
   subtype LinePathRelativeAnimation_Access_Array_Access_Array_Access is org.allbinary.game.layer.LinePathRelativeAnimation_Package_References.LinePathRelativeAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LinePathRelativeAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.LinePathRelativeAnimation_Package_References."=";

   type LinePathRelativeAnimation is new LinePathAnimation with null record;
   instanceC : LinePathRelativeAnimation_Access;

   procedure Initialize (This : in out LinePathRelativeAnimation'Class);
   function Create return LinePathRelativeAnimation_Access;
   function getInstance return LinePathAnimation_Access;
   procedure paint (This : in out LinePathRelativeAnimation; graphics_Param : access Graphics_Package.Graphics'Class; point_Param : access GPoint_Package.GPoint'Class; nextPoint_Param : access GPoint_Package.GPoint'Class; tiledLayer_Param : access Layer_Package.Layer'Class);

end org.allbinary.game.layer.LinePathRelativeAnimation_Package;


