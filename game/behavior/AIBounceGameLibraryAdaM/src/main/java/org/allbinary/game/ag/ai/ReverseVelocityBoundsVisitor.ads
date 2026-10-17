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
with org.allbinary.bounds.BoundsVisitorInterface_Package; use org.allbinary.bounds.BoundsVisitorInterface_Package;
with org.allbinary.game.physics.velocity.VelocityInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterface_Package;
with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package is

   package BoundsVisitorInterface_Package renames Standard.org.allbinary.bounds.BoundsVisitorInterface_Package;
   package VelocityInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterface_Package;
   package VelocityInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
   package LayerInterface_Package renames Standard.org.allbinary.layer.LayerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ReverseVelocityBoundsVisitor is tagged;
   type ReverseVelocityBoundsVisitor_Access is access all ReverseVelocityBoundsVisitor'Class;
   type ReverseVelocityBoundsVisitor_Access_Array is array (Natural range <>) of ReverseVelocityBoundsVisitor_Access;
   type ReverseVelocityBoundsVisitor_Access_Array_Access is access all ReverseVelocityBoundsVisitor_Access_Array;

   type ReverseVelocityBoundsVisitor is new BoundsVisitorInterface with record
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


