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
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;

package org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package is

   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;

   type GenericTrackingLayerCircularStaticPool is tagged;
   type GenericTrackingLayerCircularStaticPool_Access is access all GenericTrackingLayerCircularStaticPool'Class;
   type GenericTrackingLayerCircularStaticPool_Access_Array is array (Natural range <>) of GenericTrackingLayerCircularStaticPool_Access;
   type GenericTrackingLayerCircularStaticPool_Access_Array_Access is access all GenericTrackingLayerCircularStaticPool_Access_Array;

   type GenericTrackingLayerCircularStaticPool is new AllBinaryLayerCircularPool with null record;
   SINGLETON : GenericTrackingLayerCircularStaticPool_Access;

   procedure Initialize (This : in out GenericTrackingLayerCircularStaticPool'Class);
   function Create return GenericTrackingLayerCircularStaticPool_Access;
   function getInstance return GenericTrackingLayerCircularStaticPool_Access;
   procedure getInstance;

end org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package;


