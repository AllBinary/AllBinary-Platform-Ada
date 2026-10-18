-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package; use org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;

package org.allbinary.game.layer.unit.CollidableUnitBehavior_Package is

   package SteeringVisitor_Package renames Standard.org.allbinary.game.layer.SteeringVisitor_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableRTSBehavior_Package renames Standard.org.allbinary.game.layer.CollidableRTSBehavior_Package;
   package LayerPartialCellPositionsUtil_Package renames Standard.org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;

   type CollidableUnitBehavior is tagged;
   type CollidableUnitBehavior_Access is access all CollidableUnitBehavior'Class;
   type CollidableUnitBehavior_Access_Array is array (Natural range <>) of CollidableUnitBehavior_Access;
   type CollidableUnitBehavior_Access_Array_Access is access all CollidableUnitBehavior_Access_Array;
   type CollidableUnitBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableUnitBehavior_Access_Array_Access;
   type CollidableUnitBehavior_Access_Array_Access_Array_Access is access all CollidableUnitBehavior_Access_Array_Access_Array;

   type CollidableUnitBehavior is new CollidableRTSBehavior with record
      layerPartialCellPositionsUtil : LayerPartialCellPositionsUtil_Access;
      simpleSteeringVisitor : SimpleSteeringVisitor_Access;
   end record;

   procedure Initialize (This : in out CollidableUnitBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableUnitBehavior_Access;
   procedure collideNone (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function steer (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure steer (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure chase (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collideUnit (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class);

end org.allbinary.game.layer.unit.CollidableUnitBehavior_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package; use org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package; use org.allbinary.game.layer.unit.UnitLayer_Package;

package org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package is

   package SteeringVisitor_Package renames Standard.org.allbinary.game.layer.SteeringVisitor_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableRTSBehavior_Package renames Standard.org.allbinary.game.layer.CollidableRTSBehavior_Package;
   package LayerPartialCellPositionsUtil_Package renames Standard.org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;

   type SimpleSteeringVisitor is tagged;
   type SimpleSteeringVisitor_Access is access all SimpleSteeringVisitor'Class;
   type SimpleSteeringVisitor_Access_Array is array (Natural range <>) of SimpleSteeringVisitor_Access;
   type SimpleSteeringVisitor_Access_Array_Access is access all SimpleSteeringVisitor_Access_Array;
   type SimpleSteeringVisitor_Access_Array_Access_Array is array (Natural range <>) of SimpleSteeringVisitor_Access_Array_Access;
   type SimpleSteeringVisitor_Access_Array_Access_Array_Access is access all SimpleSteeringVisitor_Access_Array_Access_Array;

   type SimpleSteeringVisitor is new SteeringVisitor with null record;

   procedure Initialize (This : in out SimpleSteeringVisitor'Class);
   function Create return SimpleSteeringVisitor_Access;
   function visit (This : in out SimpleSteeringVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out SimpleSteeringVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out SimpleSteeringVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out SimpleSteeringVisitor; Value : Unbounded_String);

end org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package;


