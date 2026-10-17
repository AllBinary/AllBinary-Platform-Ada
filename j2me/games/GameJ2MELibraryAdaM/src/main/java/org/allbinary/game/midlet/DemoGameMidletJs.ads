-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;

package org.allbinary.game.midlet.DemoGameMidletJs_Package is

   package GameCanvasRunnableInterface_Package renames Standard.org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;

   type DemoGameMidletJs is interface;
   type DemoGameMidletJs_Access is access all DemoGameMidletJs'Class;
   type DemoGameMidletJs_Access_Array is array (Natural range <>) of DemoGameMidletJs_Access;
   type DemoGameMidletJs_Access_Array_Access is access all DemoGameMidletJs_Access_Array;
   function createDemoGameCanvasRunnableInterface (This : in out DemoGameMidletJs) return GameCanvasRunnableInterface_Access is abstract;

end org.allbinary.game.midlet.DemoGameMidletJs_Package;


