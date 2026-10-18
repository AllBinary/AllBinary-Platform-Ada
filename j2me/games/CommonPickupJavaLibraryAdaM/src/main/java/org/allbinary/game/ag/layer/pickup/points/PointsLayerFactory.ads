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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

package org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

   type PointsLayerFactory is tagged;
   type PointsLayerFactory_Access is access all PointsLayerFactory'Class;
   type PointsLayerFactory_Access_Array is array (Natural range <>) of PointsLayerFactory_Access;
   type PointsLayerFactory_Access_Array_Access is access all PointsLayerFactory_Access_Array;
   type PointsLayerFactory_Access_Array_Access_Array is array (Natural range <>) of PointsLayerFactory_Access_Array_Access;
   type PointsLayerFactory_Access_Array_Access_Array_Access is access all PointsLayerFactory_Access_Array_Access_Array;

   type PointsLayerFactory is new Java_Object and AllBinaryLayerFactoryInterface with record
      points : Integer;
   end record;

   procedure Initialize (This : in out PointsLayerFactory'Class; points : Integer);
   function Create (points : Integer) return PointsLayerFactory_Access;
   function getInstance (This : in out PointsLayerFactory) return AllBinaryLayer_Access;

end org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package;


