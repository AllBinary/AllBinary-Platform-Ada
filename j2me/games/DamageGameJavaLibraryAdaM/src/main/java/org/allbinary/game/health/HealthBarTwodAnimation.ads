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

limited with org.allbinary.game.health.HealthBarTwodAnimation_Package;
package org.allbinary.game.health.HealthBarTwodAnimation_Package_References is
   type HealthBarTwodAnimation_Access is access all org.allbinary.game.health.HealthBarTwodAnimation_Package.HealthBarTwodAnimation'Class;
   type HealthBarTwodAnimation_Access_Array is array (Natural range <>) of HealthBarTwodAnimation_Access;
   type HealthBarTwodAnimation_Access_Array_Access is access all HealthBarTwodAnimation_Access_Array;
   type HealthBarTwodAnimation_Access_Array_Access_Array is array (Natural range <>) of HealthBarTwodAnimation_Access_Array_Access;
   type HealthBarTwodAnimation_Access_Array_Access_Array_Access is access all HealthBarTwodAnimation_Access_Array_Access_Array;
end org.allbinary.game.health.HealthBarTwodAnimation_Package_References;

with org.allbinary.game.health.HealthBarTwodAnimation_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.game.health.HealthBarAnimation_Package; use org.allbinary.game.health.HealthBarAnimation_Package;

package org.allbinary.game.health.HealthBarTwodAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
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
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HealthBarTwodAnimation_Access is org.allbinary.game.health.HealthBarTwodAnimation_Package_References.HealthBarTwodAnimation_Access;
   function "=" (Left, Right : HealthBarTwodAnimation_Access) return Boolean renames org.allbinary.game.health.HealthBarTwodAnimation_Package_References."=";
   subtype HealthBarTwodAnimation_Access_Array is org.allbinary.game.health.HealthBarTwodAnimation_Package_References.HealthBarTwodAnimation_Access_Array;
   function "=" (Left, Right : HealthBarTwodAnimation_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarTwodAnimation_Package_References."=";
   subtype HealthBarTwodAnimation_Access_Array_Access is org.allbinary.game.health.HealthBarTwodAnimation_Package_References.HealthBarTwodAnimation_Access_Array_Access;
   function "=" (Left, Right : HealthBarTwodAnimation_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarTwodAnimation_Package_References."=";
   subtype HealthBarTwodAnimation_Access_Array_Access_Array is org.allbinary.game.health.HealthBarTwodAnimation_Package_References.HealthBarTwodAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : HealthBarTwodAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthBarTwodAnimation_Package_References."=";
   subtype HealthBarTwodAnimation_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBarTwodAnimation_Package_References.HealthBarTwodAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthBarTwodAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBarTwodAnimation_Package_References."=";

   type HealthBarTwodAnimation is new HealthBarAnimation with null record;

   procedure Initialize (This : in out HealthBarTwodAnimation'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarTwodAnimation_Access;
   procedure paintXY (This : in out HealthBarTwodAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.game.health.HealthBarTwodAnimation_Package;


