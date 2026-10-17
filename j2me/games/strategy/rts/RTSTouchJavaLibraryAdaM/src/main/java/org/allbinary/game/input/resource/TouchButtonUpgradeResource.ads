-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package is

   package TouchButtonResource_Package renames org.allbinary.input.motion.button.TouchButtonResource_Package;

   type TouchButtonUpgradeResource is tagged;
   type TouchButtonUpgradeResource_Access is access all TouchButtonUpgradeResource'Class;
   type TouchButtonUpgradeResource_Access_Array is array (Natural range <>) of TouchButtonUpgradeResource_Access;
   type TouchButtonUpgradeResource_Access_Array_Access is access all TouchButtonUpgradeResource_Access_Array;

   type TouchButtonUpgradeResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonUpgradeResource'Class);
   function Create return TouchButtonUpgradeResource_Access;
   function getInstance return TouchButtonResource_Access;
   procedure getInstance;

end org.allbinary.game.input.resource.TouchButtonUpgradeResource_Package;


