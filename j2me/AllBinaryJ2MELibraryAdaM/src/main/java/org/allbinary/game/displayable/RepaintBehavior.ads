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
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.game.displayable.RepaintBehavior_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type RepaintBehavior is tagged;
   type RepaintBehavior_Access is access all RepaintBehavior'Class;
   type RepaintBehavior_Access_Array is array (Natural range <>) of RepaintBehavior_Access;
   type RepaintBehavior_Access_Array_Access is access all RepaintBehavior_Access_Array;
   type RepaintBehavior_Access_Array_Access_Array is array (Natural range <>) of RepaintBehavior_Access_Array_Access;
   type RepaintBehavior_Access_Array_Access_Array_Access is access all RepaintBehavior_Access_Array_Access_Array;

   type RepaintBehavior is new Java_Object with record
      logUtil : LogUtil_Access;
      NAME : Unbounded_String;
   end record;
   instance : RepaintBehavior_Access;

   procedure Initialize (This : in out RepaintBehavior'Class);
   function Create return RepaintBehavior_Access;
   function getInstance return RepaintBehavior_Access;
   procedure repaint (This : in out RepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class);
   procedure onChangeRepaint (This : in out RepaintBehavior; canvas_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.game.displayable.RepaintBehavior_Package;


