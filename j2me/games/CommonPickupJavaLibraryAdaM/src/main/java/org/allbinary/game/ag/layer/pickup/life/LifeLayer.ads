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
limited with org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package;
package org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References is
   type LifeLayer_Access is access all org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package.LifeLayer'Class;
   type LifeLayer_Access_Array is array (Natural range <>) of LifeLayer_Access;
   type LifeLayer_Access_Array_Access is access all LifeLayer_Access_Array;
   type LifeLayer_Access_Array_Access_Array is array (Natural range <>) of LifeLayer_Access_Array_Access;
   type LifeLayer_Access_Array_Access_Array_Access is access all LifeLayer_Access_Array_Access_Array;
   type LifeLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LifeLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : LifeLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LifeLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LifeLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LifeLayer_Access_Array_Access is (if Value /= null and then Value.all in LifeLayer_Access_Array_Object'Class then LifeLayer_Access_Array_Object'Class (Value.all).Value else null);
   type LifeLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LifeLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LifeLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LifeLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LifeLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LifeLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LifeLayer_Access_Array_Access_Array_Object'Class then LifeLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References;

with org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References;
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
limited with org.allbinary.game.ag.life.Life_Package;
with org.allbinary.game.ag.life.Life_Package_References;
with org.allbinary.game.ag.life.LifeVisitorInterface_Package; use org.allbinary.game.ag.life.LifeVisitorInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Life_Package renames Standard.org.allbinary.game.ag.life.Life_Package;
   package LifeVisitorInterface_Package renames Standard.org.allbinary.game.ag.life.LifeVisitorInterface_Package;
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


   subtype LifeLayer_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References.LifeLayer_Access;
   function "=" (Left, Right : LifeLayer_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References."=";
   subtype LifeLayer_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References.LifeLayer_Access_Array;
   function "=" (Left, Right : LifeLayer_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References."=";
   subtype LifeLayer_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References.LifeLayer_Access_Array_Access;
   function "=" (Left, Right : LifeLayer_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References."=";
   function Java_Box (Value : LifeLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References.Java_Box;
   function Java_Unbox_LifeLayer_Access_Array (Value : access Java_Object'Class) return LifeLayer_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References.Java_Unbox_LifeLayer_Access_Array;
   subtype LifeLayer_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References.LifeLayer_Access_Array_Access_Array;
   function "=" (Left, Right : LifeLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References."=";
   subtype LifeLayer_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References.LifeLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LifeLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References."=";
   function Java_Box (Value : LifeLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References.Java_Box;
   function Java_Unbox_LifeLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return LifeLayer_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package_References.Java_Unbox_LifeLayer_Access_Array_Access_Array;

   type LifeLayer is new AllBinaryLayer and LifeVisitorInterface with null record;

   procedure Initialize (This : in out LifeLayer'Class);
   function Create return LifeLayer_Access;
   procedure paint (This : in out LifeLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure visit (This : in out LifeLayer; lifeInterface_Param : access Life_Package.Life'Class);

end org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package;


