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

limited with org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package;
package org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References is
   type PointsLayerFactory_Access is access all org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package.PointsLayerFactory'Class;
   type PointsLayerFactory_Access_Array is array (Natural range <>) of PointsLayerFactory_Access;
   type PointsLayerFactory_Access_Array_Access is access all PointsLayerFactory_Access_Array;
   type PointsLayerFactory_Access_Array_Access_Array is array (Natural range <>) of PointsLayerFactory_Access_Array_Access;
   type PointsLayerFactory_Access_Array_Access_Array_Access is access all PointsLayerFactory_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References;

with org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

package org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype PointsLayerFactory_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References.PointsLayerFactory_Access;
   function "=" (Left, Right : PointsLayerFactory_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References."=";
   subtype PointsLayerFactory_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References.PointsLayerFactory_Access_Array;
   function "=" (Left, Right : PointsLayerFactory_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References."=";
   subtype PointsLayerFactory_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References.PointsLayerFactory_Access_Array_Access;
   function "=" (Left, Right : PointsLayerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References."=";
   subtype PointsLayerFactory_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References.PointsLayerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PointsLayerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References."=";
   subtype PointsLayerFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References.PointsLayerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PointsLayerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package_References."=";

   type PointsLayerFactory is new Java_Object and AllBinaryLayerFactoryInterface with record
      points : Integer;
   end record;

   procedure Initialize (This : in out PointsLayerFactory'Class; points : Integer);
   function Create (points : Integer) return PointsLayerFactory_Access;
   function getInstance (This : in out PointsLayerFactory) return AllBinaryLayer_Access;

end org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package;


