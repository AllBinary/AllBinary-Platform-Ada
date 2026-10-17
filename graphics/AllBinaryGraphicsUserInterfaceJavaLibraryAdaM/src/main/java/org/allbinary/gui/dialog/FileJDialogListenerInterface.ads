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
--  with java.io.File_Package; use java.io.File_Package;

package org.allbinary.gui.dialog.FileJDialogListenerInterface_Package is


   type FileJDialogListenerInterface is interface;
   type FileJDialogListenerInterface_Access is access all FileJDialogListenerInterface'Class;
   type FileJDialogListenerInterface_Access_Array is array (Natural range <>) of FileJDialogListenerInterface_Access;
   type FileJDialogListenerInterface_Access_Array_Access is access all FileJDialogListenerInterface_Access_Array;
   procedure onFiles (This : in out FileJDialogListenerInterface; files : File_Access_Array_Access) is abstract;

end org.allbinary.gui.dialog.FileJDialogListenerInterface_Package;


