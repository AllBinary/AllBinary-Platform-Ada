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
with org.allbinary.input.motion.button.TouchButtonBlankResource_Package; use org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package; use org.allbinary.input.motion.button.TouchButtonResource_Package;

package org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package is

   package TouchButtonBlankResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
   package TouchButtonResource_Package renames Standard.org.allbinary.input.motion.button.TouchButtonResource_Package;

   type TouchButtonDowngradeResource is tagged;
   type TouchButtonDowngradeResource_Access is access all TouchButtonDowngradeResource'Class;
   type TouchButtonDowngradeResource_Access_Array is array (Natural range <>) of TouchButtonDowngradeResource_Access;
   type TouchButtonDowngradeResource_Access_Array_Access is access all TouchButtonDowngradeResource_Access_Array;

   type TouchButtonDowngradeResource is new TouchButtonResource with null record;
   instance : TouchButtonResource_Access;

   procedure Initialize (This : in out TouchButtonDowngradeResource'Class);
   function Create return TouchButtonDowngradeResource_Access;
   function getInstance return TouchButtonResource_Access;
   procedure getInstance;

end org.allbinary.game.input.resource.TouchButtonDowngradeResource_Package;


