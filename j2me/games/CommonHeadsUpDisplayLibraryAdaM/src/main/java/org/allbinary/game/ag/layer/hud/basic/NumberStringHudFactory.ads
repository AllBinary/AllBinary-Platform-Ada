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
with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package is

   package BasicHudFactory_Package renames org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type NumberStringHudFactory is tagged;
   type NumberStringHudFactory_Access is access all NumberStringHudFactory'Class;
   type NumberStringHudFactory_Access_Array is array (Natural range <>) of NumberStringHudFactory_Access;
   type NumberStringHudFactory_Access_Array_Access is access all NumberStringHudFactory_Access_Array;

   type NumberStringHudFactory is new Java_Object with record
      NULL_NUMBER_STRING_HUD : NumberStringHud_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out NumberStringHudFactory'Class);
   function Create return NumberStringHudFactory_Access;
   function getInstance return NumberStringHudFactory_Access;
   procedure getInstance;
   function createHud (This : in out NumberStringHudFactory) return NumberStringHud_Access;
   procedure createHud (This : in out NumberStringHudFactory);

end org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;


