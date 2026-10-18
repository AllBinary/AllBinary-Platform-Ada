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
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package; use org.allbinary.game.layer.weapon.WeaponLayer_Package;

package org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type WeaponLayerArrayLayerCircularStaticPool is tagged;
   type WeaponLayerArrayLayerCircularStaticPool_Access is access all WeaponLayerArrayLayerCircularStaticPool'Class;
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array is array (Natural range <>) of WeaponLayerArrayLayerCircularStaticPool_Access;
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access is access all WeaponLayerArrayLayerCircularStaticPool_Access_Array;
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access;
   type WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array_Access is access all WeaponLayerArrayLayerCircularStaticPool_Access_Array_Access_Array;

   type WeaponLayerArrayLayerCircularStaticPool is new Java_Object with record
      MAX : Integer;
      circularIndexUtil : CircularIndexUtil_Access;
      ALL_WEAPONLAYER_ARRAY : Java_Object_Access_Array_Access_Array_Access_Array_Access;
   end record;
   instance : WeaponLayerArrayLayerCircularStaticPool_Access;

   procedure Initialize (This : in out WeaponLayerArrayLayerCircularStaticPool'Class);
   function Create return WeaponLayerArrayLayerCircularStaticPool_Access;
   function getInstance return WeaponLayerArrayLayerCircularStaticPool_Access;
   procedure init (This : in out WeaponLayerArrayLayerCircularStaticPool);
   function getInstanceArray (This : in out WeaponLayerArrayLayerCircularStaticPool; size : Integer) return WeaponLayer_Access_Array_Access;
   procedure getInstanceArray (This : in out WeaponLayerArrayLayerCircularStaticPool; size : Integer);

end org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool_Package;


