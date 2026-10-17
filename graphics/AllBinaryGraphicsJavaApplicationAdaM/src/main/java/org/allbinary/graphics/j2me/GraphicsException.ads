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
with org.allbinary.logic.communication.log.GuiLog_Package; use org.allbinary.logic.communication.log.GuiLog_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.graphics.j2me.Exception_Package; use org.allbinary.graphics.j2me.Exception_Package;

package org.allbinary.graphics.j2me.GraphicsException_Package is

   package GuiLog_Package renames Standard.org.allbinary.logic.communication.log.GuiLog_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type GraphicsException is tagged;
   type GraphicsException_Access is access all GraphicsException'Class;
   type GraphicsException_Access_Array is array (Natural range <>) of GraphicsException_Access;
   type GraphicsException_Access_Array_Access is access all GraphicsException_Access_Array;

   type GraphicsException is new Exception with record
      logUtil : LogUtil_Access;
      guiLog : GuiLog_Access;
   end record;

   procedure Initialize (This : in out GraphicsException'Class; msg : Unbounded_String; obj : Java_Object_Access; method : Unbounded_String);
   function Create (msg : Unbounded_String; obj : Java_Object_Access; method : Unbounded_String) return GraphicsException_Access;

end org.allbinary.graphics.j2me.GraphicsException_Package;


