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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.combat.damage.DamageFloaters_Package is

   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type DamageFloaters is tagged;
   type DamageFloaters_Access is access all DamageFloaters'Class;
   type DamageFloaters_Access_Array is array (Natural range <>) of DamageFloaters_Access;
   type DamageFloaters_Access_Array_Access is access all DamageFloaters_Access_Array;

   type DamageFloaters is new Paintable with null record;
   SINGLETON : DamageFloaters_Access;

   procedure Initialize (This : in out DamageFloaters'Class);
   function Create return DamageFloaters_Access;
   function getInstance return DamageFloaters_Access;
   procedure getInstance;
   procedure add (This : in out DamageFloaters; damage : Integer);

end org.allbinary.game.combat.damage.DamageFloaters_Package;


