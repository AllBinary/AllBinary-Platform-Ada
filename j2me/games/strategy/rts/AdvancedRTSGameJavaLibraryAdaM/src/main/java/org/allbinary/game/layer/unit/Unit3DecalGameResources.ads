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
with org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package; use org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;
with org.allbinary.AndroidUtil_Package; use org.allbinary.AndroidUtil_Package;
with org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package; use org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;

package org.allbinary.game.layer.unit.Unit3DecalGameResources_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package GameGraphicsResourceUtil_Package renames Standard.org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;
   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package GraphicsFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;

   type Unit3DecalGameResources is tagged;
   type Unit3DecalGameResources_Access is access all Unit3DecalGameResources'Class;
   type Unit3DecalGameResources_Access_Array is array (Natural range <>) of Unit3DecalGameResources_Access;
   type Unit3DecalGameResources_Access_Array_Access is access all Unit3DecalGameResources_Access_Array;

   type Unit3DecalGameResources is new BasicGameResources with null record;
   instance : Unit3DecalGameResources_Access;

   procedure Initialize (This : in out Unit3DecalGameResources'Class);
   function Create return Unit3DecalGameResources_Access;
   procedure append (This : in out Unit3DecalGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String);
   function getString (This : in out Unit3DecalGameResources) return Unbounded_String;
   function getInstance return BasicGameResources_Access;

end org.allbinary.game.layer.unit.Unit3DecalGameResources_Package;


