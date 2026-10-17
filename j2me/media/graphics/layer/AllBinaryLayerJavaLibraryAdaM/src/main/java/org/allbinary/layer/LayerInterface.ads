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
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package; use org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.layer.NamedInterface_Package; use org.allbinary.layer.NamedInterface_Package;
with org.allbinary.layer.PositionInterface_Package; use org.allbinary.layer.PositionInterface_Package;

package org.allbinary.layer.LayerInterface_Package is

   package GroupInterfaceCompositeInterface_Package renames org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
   package PaintableInterface_Package renames org.allbinary.graphics.paint.PaintableInterface_Package;

   type LayerInterface is interface and NamedInterface and PaintableInterface and GroupInterfaceCompositeInterface and PositionInterface;
   type LayerInterface_Access is access all LayerInterface'Class;
   type LayerInterface_Access_Array is array (Natural range <>) of LayerInterface_Access;
   type LayerInterface_Access_Array_Access is access all LayerInterface_Access_Array;
   function getHeight (This : in out LayerInterface) return Integer is abstract;
   function getWidth (This : in out LayerInterface) return Integer is abstract;
   function getHalfHeight (This : in out LayerInterface) return Integer is abstract;
   function getHalfWidth (This : in out LayerInterface) return Integer is abstract;
   function getXP (This : in out LayerInterface) return Integer is abstract;
   function getYP (This : in out LayerInterface) return Integer is abstract;
   function getZP (This : in out LayerInterface) return Integer is abstract;
   function getX2 (This : in out LayerInterface) return Integer is abstract;
   function getY2 (This : in out LayerInterface) return Integer is abstract;
   function getZ2 (This : in out LayerInterface) return Integer is abstract;
   function isVisible (This : in out LayerInterface) return Boolean is abstract;
   procedure moveDXYZ (This : in out LayerInterface; dx : Integer; dy : Integer; dz : Integer) is abstract;
   procedure setVisible (This : in out LayerInterface; visible : Boolean) is abstract;
   function implmentsTickableInterface (This : in out LayerInterface) return Boolean is abstract;
   function implmentsCollidableInterface (This : in out LayerInterface) return Boolean is abstract;
   function implmentsGameInputInterface (This : in out LayerInterface) return Boolean is abstract;
   function implmentsArtificialIntelligenceCompositeInterface (This : in out LayerInterface) return Boolean is abstract;
   function getType (This : in out LayerInterface) return Integer is abstract;

end org.allbinary.layer.LayerInterface_Package;


