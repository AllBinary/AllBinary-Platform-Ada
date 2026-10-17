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
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package; use org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package;

package org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package is

   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

   type PointsLayerCircularStaticPool is tagged;
   type PointsLayerCircularStaticPool_Access is access all PointsLayerCircularStaticPool'Class;
   type PointsLayerCircularStaticPool_Access_Array is array (Natural range <>) of PointsLayerCircularStaticPool_Access;
   type PointsLayerCircularStaticPool_Access_Array_Access is access all PointsLayerCircularStaticPool_Access_Array;

   type PointsLayerCircularStaticPool is new AllBinaryLayerCircularPool with null record;

   procedure Initialize (This : in out PointsLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface_Access; total : Integer);
   function Create (allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface_Access; total : Integer) return PointsLayerCircularStaticPool_Access;
   procedure visit (This : in out PointsLayerCircularStaticPool; sourceLayerInterface : AllBinaryLayer_Access);

end org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package;


