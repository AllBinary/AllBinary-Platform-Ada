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

limited with org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package;
package org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References is
   type ReverseVelocityBoundsVisitor_Access is access all org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package.ReverseVelocityBoundsVisitor'Class;
   type ReverseVelocityBoundsVisitor_Access_Array is array (Natural range <>) of ReverseVelocityBoundsVisitor_Access;
   type ReverseVelocityBoundsVisitor_Access_Array_Access is access all ReverseVelocityBoundsVisitor_Access_Array;
   type ReverseVelocityBoundsVisitor_Access_Array_Access_Array is array (Natural range <>) of ReverseVelocityBoundsVisitor_Access_Array_Access;
   type ReverseVelocityBoundsVisitor_Access_Array_Access_Array_Access is access all ReverseVelocityBoundsVisitor_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References;

with org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.bounds.BoundsVisitorInterface_Package; use org.allbinary.bounds.BoundsVisitorInterface_Package;
limited with org.allbinary.game.physics.velocity.VelocityInterface_Package;
with org.allbinary.game.physics.velocity.VelocityInterface_Package_References;
limited with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.LayerInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package is

   package BoundsVisitorInterface_Package renames Standard.org.allbinary.bounds.BoundsVisitorInterface_Package;
   package VelocityInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterface_Package;
   package LayerInterface_Package renames Standard.org.allbinary.layer.LayerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype VelocityInterface_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access;
   use type VelocityInterface_Access;
   subtype VelocityInterface_Access_Array is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array;
   use type VelocityInterface_Access_Array;
   subtype VelocityInterface_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access;
   use type VelocityInterface_Access_Array_Access;
   subtype VelocityInterface_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access_Array;
   use type VelocityInterface_Access_Array_Access_Array;
   subtype VelocityInterface_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityInterface_Package_References.VelocityInterface_Access_Array_Access_Array_Access;
   use type VelocityInterface_Access_Array_Access_Array_Access;
   subtype LayerInterface_Access is org.allbinary.layer.LayerInterface_Package_References.LayerInterface_Access;
   use type LayerInterface_Access;
   subtype LayerInterface_Access_Array is org.allbinary.layer.LayerInterface_Package_References.LayerInterface_Access_Array;
   use type LayerInterface_Access_Array;
   subtype LayerInterface_Access_Array_Access is org.allbinary.layer.LayerInterface_Package_References.LayerInterface_Access_Array_Access;
   use type LayerInterface_Access_Array_Access;
   subtype LayerInterface_Access_Array_Access_Array is org.allbinary.layer.LayerInterface_Package_References.LayerInterface_Access_Array_Access_Array;
   use type LayerInterface_Access_Array_Access_Array;
   subtype LayerInterface_Access_Array_Access_Array_Access is org.allbinary.layer.LayerInterface_Package_References.LayerInterface_Access_Array_Access_Array_Access;
   use type LayerInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ReverseVelocityBoundsVisitor_Access is org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References.ReverseVelocityBoundsVisitor_Access;
   function "=" (Left, Right : ReverseVelocityBoundsVisitor_Access) return Boolean renames org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References."=";
   subtype ReverseVelocityBoundsVisitor_Access_Array is org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References.ReverseVelocityBoundsVisitor_Access_Array;
   function "=" (Left, Right : ReverseVelocityBoundsVisitor_Access_Array) return Boolean renames org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References."=";
   subtype ReverseVelocityBoundsVisitor_Access_Array_Access is org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References.ReverseVelocityBoundsVisitor_Access_Array_Access;
   function "=" (Left, Right : ReverseVelocityBoundsVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References."=";
   subtype ReverseVelocityBoundsVisitor_Access_Array_Access_Array is org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References.ReverseVelocityBoundsVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : ReverseVelocityBoundsVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References."=";
   subtype ReverseVelocityBoundsVisitor_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References.ReverseVelocityBoundsVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ReverseVelocityBoundsVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package_References."=";

   type ReverseVelocityBoundsVisitor is new Java_Object and BoundsVisitorInterface with record
      logUtil : LogUtil_Access;
      velocityInterface : VelocityInterface_Access;
      layerInterface : LayerInterface_Access;
   end record;

   procedure Initialize (This : in out ReverseVelocityBoundsVisitor'Class; layerInterface_Param : access LayerInterface_Package.LayerInterface'Class);
   function Create (layerInterface_Param : access LayerInterface_Package.LayerInterface'Class) return ReverseVelocityBoundsVisitor_Access;
   function getX (This : in out ReverseVelocityBoundsVisitor) return Integer;
   function getY (This : in out ReverseVelocityBoundsVisitor) return Integer;
   procedure minX (This : in out ReverseVelocityBoundsVisitor);
   procedure maxX (This : in out ReverseVelocityBoundsVisitor);
   procedure minY (This : in out ReverseVelocityBoundsVisitor);
   procedure maxY (This : in out ReverseVelocityBoundsVisitor);

end org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package;


