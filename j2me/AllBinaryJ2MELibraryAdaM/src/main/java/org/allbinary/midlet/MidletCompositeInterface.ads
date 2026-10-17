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
--  with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
--  with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package; use org.allbinary.midlet.AllBinaryMidlet_Package;

package org.allbinary.midlet.MidletCompositeInterface_Package is


   type MidletCompositeInterface is interface;
   type MidletCompositeInterface_Access is access all MidletCompositeInterface'Class;
   type MidletCompositeInterface_Access_Array is array (Natural range <>) of MidletCompositeInterface_Access;
   type MidletCompositeInterface_Access_Array_Access is access all MidletCompositeInterface_Access_Array;
   procedure setMidlet (This : in out MidletCompositeInterface; midlet_Param : access MIDlet_Package.MIDlet'Class) is abstract;
   function getMidlet (This : in out MidletCompositeInterface) return AllBinaryMidlet_Access is abstract;
   function getDisplayable (This : in out MidletCompositeInterface) return Displayable_Access is abstract;

end org.allbinary.midlet.MidletCompositeInterface_Package;


