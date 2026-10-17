-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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

package org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package is

   package BasicGameResources_Package renames org.allbinary.game.layer.resources.BasicGameResources_Package;
   package GameGraphicsResourceUtil_Package renames org.allbinary.game.layer.resources.GameGraphicsResourceUtil_Package;
   package AndroidUtil_Package renames org.allbinary.AndroidUtil_Package;
   package GraphicsFeatureFactory_Package renames org.allbinary.game.configuration.feature.GraphicsFeatureFactory_Package;

   type GeologicalGameResources is tagged;
   type GeologicalGameResources_Access is access all GeologicalGameResources'Class;
   type GeologicalGameResources_Access_Array is array (Natural range <>) of GeologicalGameResources_Access;
   type GeologicalGameResources_Access_Array_Access is access all GeologicalGameResources_Access_Array;

   type GeologicalGameResources is new BasicGameResources with null record;
   instance : GeologicalGameResources_Access;

   procedure Initialize (This : in out GeologicalGameResources'Class);
   function Create return GeologicalGameResources_Access;
   procedure append (This : in out GeologicalGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String);
   function getString (This : in out GeologicalGameResources) return Unbounded_String;
   procedure getString (This : in out GeologicalGameResources);
   function getInstance return BasicGameResources_Access;
   procedure getInstance;

end org.allbinary.game.layer.geological.resources.GeologicalGameResources_Package;


