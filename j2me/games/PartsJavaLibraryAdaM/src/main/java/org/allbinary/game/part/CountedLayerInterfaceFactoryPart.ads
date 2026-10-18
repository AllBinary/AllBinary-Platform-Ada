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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.math.PrimitiveLongUtil_Package; use org.allbinary.logic.math.PrimitiveLongUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
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

   type CountedLayerInterfaceFactoryPart is tagged;
   type CountedLayerInterfaceFactoryPart_Access is access all CountedLayerInterfaceFactoryPart'Class;
   type CountedLayerInterfaceFactoryPart_Access_Array is array (Natural range <>) of CountedLayerInterfaceFactoryPart_Access;
   type CountedLayerInterfaceFactoryPart_Access_Array_Access is access all CountedLayerInterfaceFactoryPart_Access_Array;
   type CountedLayerInterfaceFactoryPart_Access_Array_Access_Array is array (Natural range <>) of CountedLayerInterfaceFactoryPart_Access_Array_Access;
   type CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access is access all CountedLayerInterfaceFactoryPart_Access_Array_Access_Array;

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


