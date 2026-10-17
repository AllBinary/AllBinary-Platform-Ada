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

package org.allbinary.game.ag.layer.hud.basic.HudResources_Package is


   type HudResources is tagged;
   type HudResources_Access is access all HudResources'Class;
   type HudResources_Access_Array is array (Natural range <>) of HudResources_Access;
   type HudResources_Access_Array_Access is access all HudResources_Access_Array;

   type HudResources is new Java_Object with record
      RESOURCE_LIFE : Unbounded_String;
      RESOURCE_HEALTH : Unbounded_String;
   end record;
   instance : HudResources_Access;

   procedure Initialize (This : in out HudResources'Class);
   function Create return HudResources_Access;
   function getInstance return HudResources_Access;

end org.allbinary.game.ag.layer.hud.basic.HudResources_Package;


