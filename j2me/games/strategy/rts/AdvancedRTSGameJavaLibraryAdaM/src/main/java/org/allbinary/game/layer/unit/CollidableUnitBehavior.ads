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

limited with org.allbinary.game.layer.unit.CollidableUnitBehavior_Package;
package org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References is
   type CollidableUnitBehavior_Access is access all org.allbinary.game.layer.unit.CollidableUnitBehavior_Package.CollidableUnitBehavior'Class;
   type CollidableUnitBehavior_Access_Array is array (Natural range <>) of CollidableUnitBehavior_Access;
   type CollidableUnitBehavior_Access_Array_Access is access all CollidableUnitBehavior_Access_Array;
   type CollidableUnitBehavior_Access_Array_Access_Array is array (Natural range <>) of CollidableUnitBehavior_Access_Array_Access;
   type CollidableUnitBehavior_Access_Array_Access_Array_Access is access all CollidableUnitBehavior_Access_Array_Access_Array;
end org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References;

with org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
limited with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References;
limited with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
limited with org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package;
with org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References;

package org.allbinary.game.layer.unit.CollidableUnitBehavior_Package is

   package SteeringVisitor_Package renames Standard.org.allbinary.game.layer.SteeringVisitor_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableRTSBehavior_Package renames Standard.org.allbinary.game.layer.CollidableRTSBehavior_Package;
   package LayerPartialCellPositionsUtil_Package renames Standard.org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
   package Reference_Types is
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   use type CollidableCompositeLayer_Access;
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   use type CollidableCompositeLayer_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access;
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   use type CollidableCompositeLayer_Access_Array_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access_Array_Access;
   subtype LayerPartialCellPositionsUtil_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access;
   use type LayerPartialCellPositionsUtil_Access;
   subtype LayerPartialCellPositionsUtil_Access_Array is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array;
   use type LayerPartialCellPositionsUtil_Access_Array;
   subtype LayerPartialCellPositionsUtil_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access;
   use type LayerPartialCellPositionsUtil_Access_Array_Access;
   subtype LayerPartialCellPositionsUtil_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access_Array;
   use type LayerPartialCellPositionsUtil_Access_Array_Access_Array;
   subtype LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access;
   use type LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access;
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   use type UnitLayer_Access;
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   use type UnitLayer_Access_Array;
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   use type UnitLayer_Access_Array_Access;
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   use type UnitLayer_Access_Array_Access_Array;
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   use type UnitLayer_Access_Array_Access_Array_Access;
   subtype SimpleSteeringVisitor_Access is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access;
   use type SimpleSteeringVisitor_Access;
   subtype SimpleSteeringVisitor_Access_Array is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array;
   use type SimpleSteeringVisitor_Access_Array;
   subtype SimpleSteeringVisitor_Access_Array_Access is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array_Access;
   use type SimpleSteeringVisitor_Access_Array_Access;
   subtype SimpleSteeringVisitor_Access_Array_Access_Array is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array_Access_Array;
   use type SimpleSteeringVisitor_Access_Array_Access_Array;
   subtype SimpleSteeringVisitor_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array_Access_Array_Access;
   use type SimpleSteeringVisitor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CollidableUnitBehavior_Access is org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References.CollidableUnitBehavior_Access;
   function "=" (Left, Right : CollidableUnitBehavior_Access) return Boolean renames org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References."=";
   subtype CollidableUnitBehavior_Access_Array is org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References.CollidableUnitBehavior_Access_Array;
   function "=" (Left, Right : CollidableUnitBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References."=";
   subtype CollidableUnitBehavior_Access_Array_Access is org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References.CollidableUnitBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableUnitBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References."=";
   subtype CollidableUnitBehavior_Access_Array_Access_Array is org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References.CollidableUnitBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableUnitBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References."=";
   subtype CollidableUnitBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References.CollidableUnitBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableUnitBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References."=";

   type CollidableUnitBehavior is new CollidableRTSBehavior with record
      layerPartialCellPositionsUtil : LayerPartialCellPositionsUtil_Access;
      simpleSteeringVisitor_Var : SimpleSteeringVisitor_Access;
   end record;

   procedure Initialize (This : in out CollidableUnitBehavior'Class; collidable : Boolean);
   function Create (collidable : Boolean) return CollidableUnitBehavior_Access;
   procedure collideNone (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   function steer (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return Boolean;
   procedure steer (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure chase (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; collidableInterfaceCompositeInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class);
   procedure collideUnit (This : in out CollidableUnitBehavior; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; unitLayer_Param : access UnitLayer_Package.UnitLayer'Class);

end org.allbinary.game.layer.unit.CollidableUnitBehavior_Package;

limited with org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package;
package org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References is
   type SimpleSteeringVisitor_Access is access all org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package.SimpleSteeringVisitor'Class;
   type SimpleSteeringVisitor_Access_Array is array (Natural range <>) of SimpleSteeringVisitor_Access;
   type SimpleSteeringVisitor_Access_Array_Access is access all SimpleSteeringVisitor_Access_Array;
   type SimpleSteeringVisitor_Access_Array_Access_Array is array (Natural range <>) of SimpleSteeringVisitor_Access_Array_Access;
   type SimpleSteeringVisitor_Access_Array_Access_Array_Access is access all SimpleSteeringVisitor_Access_Array_Access_Array;
end org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References;

with org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.SteeringVisitor_Package; use org.allbinary.game.layer.SteeringVisitor_Package;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
with org.allbinary.game.layer.CollidableRTSBehavior_Package; use org.allbinary.game.layer.CollidableRTSBehavior_Package;
limited with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References;
limited with org.allbinary.game.layer.unit.UnitLayer_Package;
with org.allbinary.game.layer.unit.UnitLayer_Package_References;
with org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References;

package org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package is

   package SteeringVisitor_Package renames Standard.org.allbinary.game.layer.SteeringVisitor_Package;
   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableRTSBehavior_Package renames Standard.org.allbinary.game.layer.CollidableRTSBehavior_Package;
   package LayerPartialCellPositionsUtil_Package renames Standard.org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package;
   package Reference_Types is
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   use type CollidableCompositeLayer_Access;
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   use type CollidableCompositeLayer_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access;
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   use type CollidableCompositeLayer_Access_Array_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access_Array_Access;
   subtype LayerPartialCellPositionsUtil_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access;
   use type LayerPartialCellPositionsUtil_Access;
   subtype LayerPartialCellPositionsUtil_Access_Array is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array;
   use type LayerPartialCellPositionsUtil_Access_Array;
   subtype LayerPartialCellPositionsUtil_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access;
   use type LayerPartialCellPositionsUtil_Access_Array_Access;
   subtype LayerPartialCellPositionsUtil_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access_Array;
   use type LayerPartialCellPositionsUtil_Access_Array_Access_Array;
   subtype LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil_Package_References.LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access;
   use type LayerPartialCellPositionsUtil_Access_Array_Access_Array_Access;
   subtype UnitLayer_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access;
   use type UnitLayer_Access;
   subtype UnitLayer_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array;
   use type UnitLayer_Access_Array;
   subtype UnitLayer_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access;
   use type UnitLayer_Access_Array_Access;
   subtype UnitLayer_Access_Array_Access_Array is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array;
   use type UnitLayer_Access_Array_Access_Array;
   subtype UnitLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.UnitLayer_Package_References.UnitLayer_Access_Array_Access_Array_Access;
   use type UnitLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SimpleSteeringVisitor_Access is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access;
   function "=" (Left, Right : SimpleSteeringVisitor_Access) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";
   subtype SimpleSteeringVisitor_Access_Array is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array;
   function "=" (Left, Right : SimpleSteeringVisitor_Access_Array) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";
   subtype SimpleSteeringVisitor_Access_Array_Access is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array_Access;
   function "=" (Left, Right : SimpleSteeringVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";
   subtype SimpleSteeringVisitor_Access_Array_Access_Array is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleSteeringVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";
   subtype SimpleSteeringVisitor_Access_Array_Access_Array_Access is org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References.SimpleSteeringVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleSteeringVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package_References."=";

   type SimpleSteeringVisitor is new SteeringVisitor with record
      Java_Outer : org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References.CollidableUnitBehavior_Access;
   end record;

   procedure Initialize (This : in out SimpleSteeringVisitor'Class);
   function Create (Java_Outer_Param : org.allbinary.game.layer.unit.CollidableUnitBehavior_Package_References.CollidableUnitBehavior_Access) return SimpleSteeringVisitor_Access;
   function visit (This : in out SimpleSteeringVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access;
   procedure visit (This : in out SimpleSteeringVisitor; anyType_Param : access Java_Object'Class);
   function visit (This : in out SimpleSteeringVisitor; Value : Unbounded_String) return Java_Object_Access;
   procedure visit (This : in out SimpleSteeringVisitor; Value : Unbounded_String);

end org.allbinary.game.layer.unit.SimpleSteeringVisitor_Package;


