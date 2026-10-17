--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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

package org.allbinary.game.displayable.canvas.PopupMenuInterface_Package is


   type PopupMenuInterface is interface;
   type PopupMenuInterface_Access is access all PopupMenuInterface'Class;
   type PopupMenuInterface_Access_Array is array (Natural range <>) of PopupMenuInterface_Access;
   type PopupMenuInterface_Access_Array_Access is access all PopupMenuInterface_Access_Array;
   procedure popupMenu (This : in out PopupMenuInterface) is abstract;
   procedure closeMenu (This : in out PopupMenuInterface) is abstract;
   procedure toggleMenu (This : in out PopupMenuInterface) is abstract;

end org.allbinary.game.displayable.canvas.PopupMenuInterface_Package;


