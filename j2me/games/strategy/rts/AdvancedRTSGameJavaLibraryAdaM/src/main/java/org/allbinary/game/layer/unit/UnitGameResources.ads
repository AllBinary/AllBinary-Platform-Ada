-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.layer.resources.BasicGameResources_Package; use org.allbinary.game.layer.resources.BasicGameResources_Package;

package org.allbinary.game.layer.unit.UnitGameResources_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;

   type UnitGameResources is tagged;
   type UnitGameResources_Access is access all UnitGameResources'Class;
   type UnitGameResources_Access_Array is array (Natural range <>) of UnitGameResources_Access;
   type UnitGameResources_Access_Array_Access is access all UnitGameResources_Access_Array;
   type UnitGameResources_Access_Array_Access_Array is array (Natural range <>) of UnitGameResources_Access_Array_Access;
   type UnitGameResources_Access_Array_Access_Array_Access is access all UnitGameResources_Access_Array_Access_Array;

   type UnitGameResources is new BasicGameResources with record
      NAME : Unbounded_String;
      RESOURCE_ICON_ANIMATION : Unbounded_String;
      RESOURCE_ICON_BUILD : Unbounded_String;
      RESOURCE_ICON : Unbounded_String;
      ICON_SIZE : Unbounded_String;
   end record;
   ICON : Unbounded_String;
   BUILD : Unbounded_String;
   DESTROY : Unbounded_String;
   ICON_BUILD : Unbounded_String;

   procedure Initialize (This : in out UnitGameResources'Class);
   function Create return UnitGameResources_Access;
   procedure append (This : in out UnitGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String);
   function getString (This : in out UnitGameResources) return Unbounded_String;

end org.allbinary.game.layer.unit.UnitGameResources_Package;


