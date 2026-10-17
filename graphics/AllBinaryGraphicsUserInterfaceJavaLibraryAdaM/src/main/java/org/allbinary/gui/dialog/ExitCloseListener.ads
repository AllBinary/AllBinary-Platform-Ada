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
with org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package; use org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package;

package org.allbinary.gui.dialog.ExitCloseListener_Package is


   type ExitCloseListener is tagged;
   type ExitCloseListener_Access is access all ExitCloseListener'Class;
   type ExitCloseListener_Access_Array is array (Natural range <>) of ExitCloseListener_Access;
   type ExitCloseListener_Access_Array_Access is access all ExitCloseListener_Access_Array;

   type ExitCloseListener is new CloseJDialogListenerInterface with null record;

   procedure Initialize (This : in out ExitCloseListener'Class);
   function Create return ExitCloseListener_Access;
   procedure onClose (This : in out ExitCloseListener);

end org.allbinary.gui.dialog.ExitCloseListener_Package;


