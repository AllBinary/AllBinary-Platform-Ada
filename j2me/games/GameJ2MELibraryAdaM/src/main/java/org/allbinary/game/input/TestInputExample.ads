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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.input.TestInputInterface_Package; use org.allbinary.game.input.TestInputInterface_Package;

package org.allbinary.game.input.TestInputExample_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type TestInputExample is tagged;
   type TestInputExample_Access is access all TestInputExample'Class;
   type TestInputExample_Access_Array is array (Natural range <>) of TestInputExample_Access;
   type TestInputExample_Access_Array_Access is access all TestInputExample_Access_Array;

   type TestInputExample is new TestInputInterface with record
      testValue : Integer;
   end record;

   procedure Initialize (This : in out TestInputExample'Class);
   function Create return TestInputExample_Access;
   procedure up (This : in out TestInputExample);
   procedure down (This : in out TestInputExample);
   procedure left (This : in out TestInputExample);
   procedure right (This : in out TestInputExample);
   procedure strafeLeft (This : in out TestInputExample);
   procedure strafeRight (This : in out TestInputExample);
   procedure paint (This : in out TestInputExample; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out TestInputExample; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.input.TestInputExample_Package;


