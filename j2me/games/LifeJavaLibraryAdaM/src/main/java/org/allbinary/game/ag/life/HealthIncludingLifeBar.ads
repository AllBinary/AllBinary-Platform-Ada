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

with AllBinary_Java;
limited with org.allbinary.game.ag.life.HealthIncludingLifeBar_Package;
package org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References is
   type HealthIncludingLifeBar_Access is access all org.allbinary.game.ag.life.HealthIncludingLifeBar_Package.HealthIncludingLifeBar'Class;
   type HealthIncludingLifeBar_Access_Array is array (Natural range <>) of HealthIncludingLifeBar_Access;
   type HealthIncludingLifeBar_Access_Array_Access is access all HealthIncludingLifeBar_Access_Array;
   type HealthIncludingLifeBar_Access_Array_Access_Array is array (Natural range <>) of HealthIncludingLifeBar_Access_Array_Access;
   type HealthIncludingLifeBar_Access_Array_Access_Array_Access is access all HealthIncludingLifeBar_Access_Array_Access_Array;
   type HealthIncludingLifeBar_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthIncludingLifeBar_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthIncludingLifeBar_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthIncludingLifeBar_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthIncludingLifeBar_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthIncludingLifeBar_Access_Array_Access is (if Value /= null and then Value.all in HealthIncludingLifeBar_Access_Array_Object'Class then HealthIncludingLifeBar_Access_Array_Object'Class (Value.all).Value else null);
   type HealthIncludingLifeBar_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HealthIncludingLifeBar_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HealthIncludingLifeBar_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HealthIncludingLifeBar_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HealthIncludingLifeBar_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HealthIncludingLifeBar_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HealthIncludingLifeBar_Access_Array_Access_Array_Object'Class then HealthIncludingLifeBar_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References;

with org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References;
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
limited with org.allbinary.game.health.Health_Package;
with org.allbinary.game.health.Health_Package_References;
limited with org.allbinary.game.health.HealthBarAnimation_Package;
with org.allbinary.game.health.HealthBarAnimation_Package_References;
limited with org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthInterface_Package_References;
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.game.ag.life.Life_Package;
with org.allbinary.game.ag.life.Life_Package_References;

package org.allbinary.game.ag.life.HealthIncludingLifeBar_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Health_Package renames Standard.org.allbinary.game.health.Health_Package;
   package HealthBarAnimation_Package renames Standard.org.allbinary.game.health.HealthBarAnimation_Package;
   package HealthInterface_Package renames Standard.org.allbinary.game.health.HealthInterface_Package;
   package HealthListenerInterface_Package renames Standard.org.allbinary.game.health.HealthListenerInterface_Package;
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
   subtype Life_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access;
   use type Life_Access;
   subtype Life_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array;
   use type Life_Access_Array;
   subtype Life_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access;
   use type Life_Access_Array_Access;
   subtype Life_Access_Array_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array;
   use type Life_Access_Array_Access_Array;
   subtype Life_Access_Array_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array_Access;
   use type Life_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HealthIncludingLifeBar_Access is org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References.HealthIncludingLifeBar_Access;
   function "=" (Left, Right : HealthIncludingLifeBar_Access) return Boolean renames org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References."=";
   subtype HealthIncludingLifeBar_Access_Array is org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References.HealthIncludingLifeBar_Access_Array;
   function "=" (Left, Right : HealthIncludingLifeBar_Access_Array) return Boolean renames org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References."=";
   subtype HealthIncludingLifeBar_Access_Array_Access is org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References.HealthIncludingLifeBar_Access_Array_Access;
   function "=" (Left, Right : HealthIncludingLifeBar_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References."=";
   function Java_Box (Value : HealthIncludingLifeBar_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References.Java_Box;
   function Java_Unbox_HealthIncludingLifeBar_Access_Array (Value : access Java_Object'Class) return HealthIncludingLifeBar_Access_Array_Access renames org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References.Java_Unbox_HealthIncludingLifeBar_Access_Array;
   subtype HealthIncludingLifeBar_Access_Array_Access_Array is org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References.HealthIncludingLifeBar_Access_Array_Access_Array;
   function "=" (Left, Right : HealthIncludingLifeBar_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References."=";
   subtype HealthIncludingLifeBar_Access_Array_Access_Array_Access is org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References.HealthIncludingLifeBar_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealthIncludingLifeBar_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References."=";
   function Java_Box (Value : HealthIncludingLifeBar_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References.Java_Box;
   function Java_Unbox_HealthIncludingLifeBar_Access_Array_Access_Array (Value : access Java_Object'Class) return HealthIncludingLifeBar_Access_Array_Access_Array_Access renames org.allbinary.game.ag.life.HealthIncludingLifeBar_Package_References.Java_Unbox_HealthIncludingLifeBar_Access_Array_Access_Array;

   type HealthIncludingLifeBar is new Paintable and HealthListenerInterface with record
      animationInterface : HealthBarAnimation_Access;
      life : Life_Access;
      healthInterface : HealthInterface_Access;
      allbinaryLayer : AllBinaryLayer_Access;
   end record;

   procedure Initialize (This : in out HealthIncludingLifeBar'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; life_Param : access Life_Package.Life'Class; healthInterface_Param : access Health_Package.Health'Class; animationInterface_Param : access HealthBarAnimation_Package.HealthBarAnimation'Class; direction : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; life_Param : access Life_Package.Life'Class; healthInterface_Param : access Health_Package.Health'Class; animationInterface_Param : access HealthBarAnimation_Package.HealthBarAnimation'Class; direction : Integer) return HealthIncludingLifeBar_Access;
   function createHealthIncludingLifeBar (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; life_Param : access Life_Package.Life'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer) return HealthIncludingLifeBar_Access;
   procedure createHealthIncludingLifeBar (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; life_Param : access Life_Package.Life'Class; healthInterface_Param : access Health_Package.Health'Class; location : Integer; direction : Integer);
   procedure onHealthChange (This : in out HealthIncludingLifeBar);
   procedure paint (This : in out HealthIncludingLifeBar; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out HealthIncludingLifeBar; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.ag.life.HealthIncludingLifeBar_Package;


