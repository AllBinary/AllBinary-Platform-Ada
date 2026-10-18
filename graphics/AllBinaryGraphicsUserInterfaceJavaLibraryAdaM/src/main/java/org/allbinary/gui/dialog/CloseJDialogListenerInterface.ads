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

package org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package is


   type CloseJDialogListenerInterface is interface;
   type CloseJDialogListenerInterface_Access is access all CloseJDialogListenerInterface'Class;
   type CloseJDialogListenerInterface_Access_Array is array (Natural range <>) of CloseJDialogListenerInterface_Access;
   type CloseJDialogListenerInterface_Access_Array_Access is access all CloseJDialogListenerInterface_Access_Array;
   type CloseJDialogListenerInterface_Access_Array_Access_Array is array (Natural range <>) of CloseJDialogListenerInterface_Access_Array_Access;
   type CloseJDialogListenerInterface_Access_Array_Access_Array_Access is access all CloseJDialogListenerInterface_Access_Array_Access_Array;
   procedure onClose (This : in out CloseJDialogListenerInterface) is abstract;

end org.allbinary.gui.dialog.CloseJDialogListenerInterface_Package;


