-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package; use org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;

package org.allbinary.PostGameCommandFactory_Package is

   package MultiPlayerGameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;

   type PostGameCommandFactory is tagged;
   type PostGameCommandFactory_Access is access all PostGameCommandFactory'Class;
   type PostGameCommandFactory_Access_Array is array (Natural range <>) of PostGameCommandFactory_Access;
   type PostGameCommandFactory_Access_Array_Access is access all PostGameCommandFactory_Access_Array;

   type PostGameCommandFactory is new Java_Object with null record;
   instance : PostGameCommandFactory_Access;

   procedure Initialize (This : in out PostGameCommandFactory'Class);
   function Create return PostGameCommandFactory_Access;
   function getInstance return PostGameCommandFactory_Access;
   procedure getInstance;
   procedure addCommands (This : in out PostGameCommandFactory; canvas : MyCanvas_Access);

end org.allbinary.PostGameCommandFactory_Package;


