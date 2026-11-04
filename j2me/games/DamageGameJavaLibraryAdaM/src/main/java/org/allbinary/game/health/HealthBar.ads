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

limited with org.allbinary.game.health.HealthBar_Package;
package org.allbinary.game.health.HealthBar_Package_References is
   type HealthBar_Access is access all org.allbinary.game.health.HealthBar_Package.HealthBar'Class;
   type HealthBar_Access_Array is array (Natural range <>) of HealthBar_Access;
   type HealthBar_Access_Array_Access is access all HealthBar_Access_Array;
   type HealthBar_Access_Array_Access_Array is array (Natural range <>) of HealthBar_Access_Array_Access;
   type HealthBar_Access_Array_Access_Array_Access is access all HealthBar_Access_Array_Access_Array;
end org.allbinary.game.health.HealthBar_Package_References;

with org.allbinary.game.health.HealthBar_Package_References;
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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;
limited with org.allbinary.game.health.HealthBarAnimation_Package;
with org.allbinary.game.health.HealthBarAnimation_Package_References;
limited with org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthInterface_Package_References;
limited with org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.Health_Package_References;

package org.allbinary.game.health.HealthBar_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
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
   subtype HealthBarAnimation_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access;
   use type HealthBarAnimation_Access;
   subtype HealthBarAnimation_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array;
   use type HealthBarAnimation_Access_Array;
   subtype HealthBarAnimation_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access;
   use type HealthBarAnimation_Access_Array_Access;
   subtype HealthBarAnimation_Access_Array_Access_Array is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array;
   use type HealthBarAnimation_Access_Array_Access_Array;
   subtype HealthBarAnimation_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBarAnimation_Package_References.HealthBarAnimation_Access_Array_Access_Array_Access;
   use type HealthBarAnimation_Access_Array_Access_Array_Access;
   subtype HealthInterface_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access;
   use type HealthInterface_Access;
   subtype HealthInterface_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array;
   use type HealthInterface_Access_Array;
   subtype HealthInterface_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access;
   use type HealthInterface_Access_Array_Access;
   subtype HealthInterface_Access_Array_Access_Array is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array;
   use type HealthInterface_Access_Array_Access_Array;
   subtype HealthInterface_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthInterface_Package_References.HealthInterface_Access_Array_Access_Array_Access;
   use type HealthInterface_Access_Array_Access_Array_Access;
   subtype Health_Access is org.allbinary.game.health.Health_Package_References.Health_Access;
   use type Health_Access;
   subtype Health_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array;
   use type Health_Access_Array;
   subtype Health_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access;
   use type Health_Access_Array_Access;
   subtype Health_Access_Array_Access_Array is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array;
   use type Health_Access_Array_Access_Array;
   subtype Health_Access_Array_Access_Array_Access is org.allbinary.game.health.Health_Package_References.Health_Access_Array_Access_Array_Access;
   use type Health_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HealthBar_Access is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access;
   function "=" (Left, Right : HealthBar_Access) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";
   subtype HealthBar_Access_Array is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array;
   function "=" (Left, Right : HealthBar_Access_Array) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";
   subtype HealthBar_Access_Array_Access is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array_Access;
   function "=" (Left, Right : HealthBar_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";
   subtype HealthBar_Access_Array_Access_Array is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array_Access_Array;
   function "=" (Left, Right : HealthBar_Access_Array_Access_Array) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";
   subtype HealthBar_Access_Array_Access_Array_Access is org.allbinary.game.health.HealthBar_Package_References.HealthBar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthBar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.health.HealthBar_Package_References."=";

   type HealthBar is new Paintable and HealthListenerInterface with record
      animationInterface : HealthBarAnimation_Access;
      healthInterface : HealthInterface_Access;
      allbinaryLayer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out HealthBar'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; healthInterface_Param : access Health_Package.Health'Class; animationInterface_Param : access HealthBarAnimation_Package.HealthBarAnimation'Class; direction : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; healthInterface_Param : access Health_Package.Health'Class; animationInterface_Param : access HealthBarAnimation_Package.HealthBarAnimation'Class; direction : Integer) return HealthBar_Access;
   procedure onHealthChange (This : in out HealthBar);
   procedure paint (This : in out HealthBar; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out HealthBar; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.health.HealthBar_Package;


