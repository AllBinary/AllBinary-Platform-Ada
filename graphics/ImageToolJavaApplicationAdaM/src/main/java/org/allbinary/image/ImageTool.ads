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
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
with org.allbinary.image.gui.ImageToolJFrame_Package; use org.allbinary.image.gui.ImageToolJFrame_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.image.ImageTool_Package is

   package ARunnable_Package renames org.allbinary.thread.ARunnable_Package;
   package ImageToolJFrame_Package renames org.allbinary.image.gui.ImageToolJFrame_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ImageTool is tagged;
   type ImageTool_Access is access all ImageTool'Class;
   type ImageTool_Access_Array is array (Natural range <>) of ImageTool_Access;
   type ImageTool_Access_Array_Access is access all ImageTool_Access_Array;

   type ImageTool is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ImageTool'Class);
   function Create return ImageTool_Access;
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.image.ImageTool_Package;


