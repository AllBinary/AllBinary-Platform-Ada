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
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;

package org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package is

   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;

   type BaseMenuBehavior is tagged;
   type BaseMenuBehavior_Access is access all BaseMenuBehavior'Class;
   type BaseMenuBehavior_Access_Array is array (Natural range <>) of BaseMenuBehavior_Access;
   type BaseMenuBehavior_Access_Array_Access is access all BaseMenuBehavior_Access_Array;

   type BaseMenuBehavior is new Java_Object with null record;
   instance : BaseMenuBehavior_Access;

   procedure Initialize (This : in out BaseMenuBehavior'Class);
   function Create return BaseMenuBehavior_Access;
   function getInstance return BaseMenuBehavior_Access;
   procedure getInstance;
   procedure onDisplayChangeEvent (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access; displayChangeEvent : DisplayChangeEvent_Access);
   procedure initSpecialPaint (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure initMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure updateMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure popupMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);
   procedure closeMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access);

end org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;


