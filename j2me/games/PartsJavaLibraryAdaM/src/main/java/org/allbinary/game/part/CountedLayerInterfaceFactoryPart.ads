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
limited with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
package org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References is
   type CountedLayerInterfaceFactoryPart_Access is access all org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package.CountedLayerInterfaceFactoryPart'Class;
   type CountedLayerInterfaceFactoryPart_Access_Array is array (Natural range <>) of CountedLayerInterfaceFactoryPart_Access;
   type CountedLayerInterfaceFactoryPart_Access_Array_Access is access all CountedLayerInterfaceFactoryPart_Access_Array;
   type CountedLayerInterfaceFactoryPart_Access_Array_Access_Array is array (Natural range <>) of CountedLayerInterfaceFactoryPart_Access_Array_Access;
   type CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access is access all CountedLayerInterfaceFactoryPart_Access_Array_Access_Array;
   type CountedLayerInterfaceFactoryPart_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CountedLayerInterfaceFactoryPart_Access_Array_Access;
   end record;
   function Java_Box (Value : CountedLayerInterfaceFactoryPart_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CountedLayerInterfaceFactoryPart_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CountedLayerInterfaceFactoryPart_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CountedLayerInterfaceFactoryPart_Access_Array_Access is (if Value /= null and then Value.all in CountedLayerInterfaceFactoryPart_Access_Array_Object'Class then CountedLayerInterfaceFactoryPart_Access_Array_Object'Class (Value.all).Value else null);
   type CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CountedLayerInterfaceFactoryPart_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Object'Class then CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References;

with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References;
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
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References;
limited with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;

package org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package CountedPickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package PrimitiveLongUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveLongUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype CountedPickedUpLayerInterfaceFactory_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access;
   use type CountedPickedUpLayerInterfaceFactory_Access;
   subtype CountedPickedUpLayerInterfaceFactory_Access_Array is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access_Array;
   use type CountedPickedUpLayerInterfaceFactory_Access_Array;
   subtype CountedPickedUpLayerInterfaceFactory_Access_Array_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access_Array_Access;
   use type CountedPickedUpLayerInterfaceFactory_Access_Array_Access;
   subtype CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   use type CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   subtype CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package_References.CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   use type CountedPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   use type MyFontProcessor_Access;
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   use type MyFontProcessor_Access_Array;
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access;
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   use type MyFontProcessor_Access_Array_Access_Array;
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   use type MyFontProcessor_Access_Array_Access_Array_Access;
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
   subtype PrimitiveLongUtil_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access;
   use type PrimitiveLongUtil_Access;
   subtype PrimitiveLongUtil_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array;
   use type PrimitiveLongUtil_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access;
   subtype PrimitiveLongUtil_Access_Array_Access_Array is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array;
   use type PrimitiveLongUtil_Access_Array_Access_Array;
   subtype PrimitiveLongUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.PrimitiveLongUtil_Package_References.PrimitiveLongUtil_Access_Array_Access_Array_Access;
   use type PrimitiveLongUtil_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CountedLayerInterfaceFactoryPart_Access is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access;
   function "=" (Left, Right : CountedLayerInterfaceFactoryPart_Access) return Boolean renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References."=";
   subtype CountedLayerInterfaceFactoryPart_Access_Array is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access_Array;
   function "=" (Left, Right : CountedLayerInterfaceFactoryPart_Access_Array) return Boolean renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References."=";
   subtype CountedLayerInterfaceFactoryPart_Access_Array_Access is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access_Array_Access;
   function "=" (Left, Right : CountedLayerInterfaceFactoryPart_Access_Array_Access) return Boolean renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References."=";
   function Java_Box (Value : CountedLayerInterfaceFactoryPart_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.Java_Box;
   function Java_Unbox_CountedLayerInterfaceFactoryPart_Access_Array (Value : access Java_Object'Class) return CountedLayerInterfaceFactoryPart_Access_Array_Access renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.Java_Unbox_CountedLayerInterfaceFactoryPart_Access_Array;
   subtype CountedLayerInterfaceFactoryPart_Access_Array_Access_Array is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access_Array_Access_Array;
   function "=" (Left, Right : CountedLayerInterfaceFactoryPart_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References."=";
   subtype CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References."=";
   function Java_Box (Value : CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.Java_Box;
   function Java_Unbox_CountedLayerInterfaceFactoryPart_Access_Array_Access_Array (Value : access Java_Object'Class) return CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.Java_Unbox_CountedLayerInterfaceFactoryPart_Access_Array_Access_Array;

   type CountedLayerInterfaceFactoryPart is new Java_Object and PartInterface and UpdateMyFontInterface with record
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      animationInterface : Animation_Access;
      total : Integer;
      totalString : Character_Array_Access;
      xOffset : Integer;
      countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory_Access;
      primitiveLongUtil : PrimitiveLongUtil_Access;
   end record;
   NULL_COUNTED_LAYER_INTERFACE_FACTORY : CountedLayerInterfaceFactoryPart_Access;

   procedure Initialize (This : in out CountedLayerInterfaceFactoryPart'Class; total : Integer; countedPickedUpLayerInterfaceFactory_Param : access CountedPickedUpLayerInterfaceFactory_Package.CountedPickedUpLayerInterfaceFactory'Class);
   function Create (total : Integer; countedPickedUpLayerInterfaceFactory_Param : access CountedPickedUpLayerInterfaceFactory_Package.CountedPickedUpLayerInterfaceFactory'Class) return CountedLayerInterfaceFactoryPart_Access;
   procedure updateMeasurement (This : in out CountedLayerInterfaceFactoryPart; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure init (This : in out CountedLayerInterfaceFactoryPart; total : Integer; countedPickedUpLayerInterfaceFactory_Param : access CountedPickedUpLayerInterfaceFactory_Package.CountedPickedUpLayerInterfaceFactory'Class);
   function getInstance (This : in out CountedLayerInterfaceFactoryPart; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access;
   procedure getInstance (This : in out CountedLayerInterfaceFactoryPart; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer);
   function getTotal (This : in out CountedLayerInterfaceFactoryPart) return Integer;
   procedure setTotal (This : in out CountedLayerInterfaceFactoryPart; total : Integer);
   procedure paint (This : in out CountedLayerInterfaceFactoryPart; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out CountedLayerInterfaceFactoryPart; graphics_Param : access Graphics_Package.Graphics'Class);
   function getAnimationInterface (This : in out CountedLayerInterfaceFactoryPart) return Animation_Access;
   procedure setAnimationInterface (This : in out CountedLayerInterfaceFactoryPart; animationInterface_Param : access Animation_Package.Animation'Class);
   function getXOffset (This : in out CountedLayerInterfaceFactoryPart) return Integer;
   procedure setXOffset (This : in out CountedLayerInterfaceFactoryPart; totalStringWidth : Integer);
   function getTotalString (This : in out CountedLayerInterfaceFactoryPart) return Character_Array_Access;
   function getCountedPickedUpLayerInterfaceFactory (This : in out CountedLayerInterfaceFactoryPart) return CountedPickedUpLayerInterfaceFactory_Access;
   procedure setCountedPickedUpLayerInterfaceFactory (This : in out CountedLayerInterfaceFactoryPart; countedPickedUpLayerInterfaceFactory_Param : access CountedPickedUpLayerInterfaceFactory_Package.CountedPickedUpLayerInterfaceFactory'Class);

end org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;


