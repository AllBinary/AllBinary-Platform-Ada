-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package; use org.allbinary.game.ag.layer.hud.basic.NumberStringHud_Package;

package org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package is


   type NumberStringHudFactory is tagged;
   type NumberStringHudFactory_Access is access all NumberStringHudFactory'Class;
   type NumberStringHudFactory_Access_Array is array (Natural range <>) of NumberStringHudFactory_Access;
   type NumberStringHudFactory_Access_Array_Access is access all NumberStringHudFactory_Access_Array;
   type NumberStringHudFactory_Access_Array_Access_Array is array (Natural range <>) of NumberStringHudFactory_Access_Array_Access;
   type NumberStringHudFactory_Access_Array_Access_Array_Access is access all NumberStringHudFactory_Access_Array_Access_Array;

   type NumberStringHudFactory is new Java_Object with record
      NULL_NUMBER_STRING_HUD : NumberStringHud_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out NumberStringHudFactory'Class);
   function Create return NumberStringHudFactory_Access;
   function getInstance return NumberStringHudFactory_Access;
   function createHud (This : in out NumberStringHudFactory) return NumberStringHud_Access;

end org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;


