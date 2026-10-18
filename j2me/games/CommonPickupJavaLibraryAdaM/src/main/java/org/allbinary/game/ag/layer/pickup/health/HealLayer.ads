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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthVisitorInterface_Package; use org.allbinary.game.health.HealthVisitorInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.ag.layer.pickup.health.HealLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package HealthInterface_Package renames Standard.org.allbinary.game.health.HealthInterface_Package;
   package HealthVisitorInterface_Package renames Standard.org.allbinary.game.health.HealthVisitorInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type HealLayer is tagged;
   type HealLayer_Access is access all HealLayer'Class;
   type HealLayer_Access_Array is array (Natural range <>) of HealLayer_Access;
   type HealLayer_Access_Array_Access is access all HealLayer_Access_Array;
   type HealLayer_Access_Array_Access_Array is array (Natural range <>) of HealLayer_Access_Array_Access;
   type HealLayer_Access_Array_Access_Array_Access is access all HealLayer_Access_Array_Access_Array;

   type HealLayer is new AllBinaryLayer and HealthVisitorInterface with null record;

   procedure Initialize (This : in out HealLayer'Class);
   function Create return HealLayer_Access;
   procedure paint (This : in out HealLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure visit (This : in out HealLayer; healthInterface_Param : access HealthInterface_Package.HealthInterface'Class);

end org.allbinary.game.ag.layer.pickup.health.HealLayer_Package;


