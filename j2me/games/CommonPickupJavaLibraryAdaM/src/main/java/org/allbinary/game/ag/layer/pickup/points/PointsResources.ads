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

limited with org.allbinary.game.ag.layer.pickup.points.PointsResources_Package;
package org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References is
   type PointsResources_Access is access all org.allbinary.game.ag.layer.pickup.points.PointsResources_Package.PointsResources'Class;
   type PointsResources_Access_Array is array (Natural range <>) of PointsResources_Access;
   type PointsResources_Access_Array_Access is access all PointsResources_Access_Array;
   type PointsResources_Access_Array_Access_Array is array (Natural range <>) of PointsResources_Access_Array_Access;
   type PointsResources_Access_Array_Access_Array_Access is access all PointsResources_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References;

with org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.ag.layer.pickup.points.PointsResources_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PointsResources_Access is org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References.PointsResources_Access;
   function "=" (Left, Right : PointsResources_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References."=";
   subtype PointsResources_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References.PointsResources_Access_Array;
   function "=" (Left, Right : PointsResources_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References."=";
   subtype PointsResources_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References.PointsResources_Access_Array_Access;
   function "=" (Left, Right : PointsResources_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References."=";
   subtype PointsResources_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References.PointsResources_Access_Array_Access_Array;
   function "=" (Left, Right : PointsResources_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References."=";
   subtype PointsResources_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References.PointsResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PointsResources_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.points.PointsResources_Package_References."=";

   type PointsResources is new Java_Object with record
      RESOURCE : Unbounded_String;
      RESOURCE_2 : Unbounded_String;
      RESOURCE_3 : Unbounded_String;
      RESOURCE_4 : Unbounded_String;
   end record;
   SINGLETON : PointsResources_Access;

   procedure Initialize (This : in out PointsResources'Class);
   function Create return PointsResources_Access;
   function getInstance return PointsResources_Access;

end org.allbinary.game.ag.layer.pickup.points.PointsResources_Package;


