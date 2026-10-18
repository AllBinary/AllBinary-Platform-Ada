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

package org.allbinary.game.ag.layer.pickup.points.PointsResources_Package is


   type PointsResources is tagged;
   type PointsResources_Access is access all PointsResources'Class;
   type PointsResources_Access_Array is array (Natural range <>) of PointsResources_Access;
   type PointsResources_Access_Array_Access is access all PointsResources_Access_Array;
   type PointsResources_Access_Array_Access_Array is array (Natural range <>) of PointsResources_Access_Array_Access;
   type PointsResources_Access_Array_Access_Array_Access is access all PointsResources_Access_Array_Access_Array;

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


