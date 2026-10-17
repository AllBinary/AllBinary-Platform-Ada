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
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package; use org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;

package org.allbinary.game.displayable.canvas.NullDemoPaintable_Package is


   type NullDemoPaintable is tagged;
   type NullDemoPaintable_Access is access all NullDemoPaintable'Class;
   type NullDemoPaintable_Access_Array is array (Natural range <>) of NullDemoPaintable_Access;
   type NullDemoPaintable_Access_Array_Access is access all NullDemoPaintable_Access_Array;

   type NullDemoPaintable is new DemoPaintableInterface with null record;
   NULL_DEMO_PAINTABLE : NullDemoPaintable_Access;

   procedure Initialize (This : in out NullDemoPaintable'Class);
   function Create return NullDemoPaintable_Access;
   procedure showGamePaintable (This : in out NullDemoPaintable);

end org.allbinary.game.displayable.canvas.NullDemoPaintable_Package;


