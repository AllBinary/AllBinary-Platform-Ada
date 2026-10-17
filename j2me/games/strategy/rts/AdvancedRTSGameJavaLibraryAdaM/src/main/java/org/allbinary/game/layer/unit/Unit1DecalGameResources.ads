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

package org.allbinary.game.layer.unit.Unit1DecalGameResources_Package is

   package BasicGameResources_Package renames Standard.org.allbinary.game.layer.resources.BasicGameResources_Package;
   package GameGraphicsResourceUtil_Package renames Standard.org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;
   package AndroidUtil_Package renames Standard.org.allbinary.AndroidUtil_Package;
   package GraphicsFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;

   type Unit1DecalGameResources is tagged;
   type Unit1DecalGameResources_Access is access all Unit1DecalGameResources'Class;
   type Unit1DecalGameResources_Access_Array is array (Natural range <>) of Unit1DecalGameResources_Access;
   type Unit1DecalGameResources_Access_Array_Access is access all Unit1DecalGameResources_Access_Array;

   type Unit1DecalGameResources is new BasicGameResources with null record;
   instance : Unit1DecalGameResources_Access;

   procedure Initialize (This : in out Unit1DecalGameResources'Class);
   function Create return Unit1DecalGameResources_Access;
   procedure append (This : in out Unit1DecalGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String);
   function getString (This : in out Unit1DecalGameResources) return Unbounded_String;
   procedure getString (This : in out Unit1DecalGameResources);
   function getInstance return BasicGameResources_Access;
   procedure getInstance;

end org.allbinary.game.layer.unit.Unit1DecalGameResources_Package;


