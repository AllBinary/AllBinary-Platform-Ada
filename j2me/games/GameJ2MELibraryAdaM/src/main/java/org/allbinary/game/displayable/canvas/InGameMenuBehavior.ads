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
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package; use org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;

package org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package is

   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;

   type InGameMenuBehavior is tagged;
   type InGameMenuBehavior_Access is access all InGameMenuBehavior'Class;
   type InGameMenuBehavior_Access_Array is array (Natural range <>) of InGameMenuBehavior_Access;
   type InGameMenuBehavior_Access_Array_Access is access all InGameMenuBehavior_Access_Array;

   type InGameMenuBehavior is new BaseMenuBehavior with null record;
   instanceC : InGameMenuBehavior_Access;

   procedure Initialize (This : in out InGameMenuBehavior'Class);
   function Create return InGameMenuBehavior_Access;
   function getInstance return InGameMenuBehavior_Access;
   procedure getInstance;
   procedure onDisplayChangeEvent (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access; displayChangeEvent : DisplayChangeEvent_Access);
   procedure initSpecialPaint (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure initMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure updateMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure popupMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure closeMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);

end org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package;


