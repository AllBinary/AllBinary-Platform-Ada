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

limited with org.allbinary.game.input.TestInputExample_Package;
package org.allbinary.game.input.TestInputExample_Package_References is
   type TestInputExample_Access is access all org.allbinary.game.input.TestInputExample_Package.TestInputExample'Class;
   type TestInputExample_Access_Array is array (Natural range <>) of TestInputExample_Access;
   type TestInputExample_Access_Array_Access is access all TestInputExample_Access_Array;
   type TestInputExample_Access_Array_Access_Array is array (Natural range <>) of TestInputExample_Access_Array_Access;
   type TestInputExample_Access_Array_Access_Array_Access is access all TestInputExample_Access_Array_Access_Array;
end org.allbinary.game.input.TestInputExample_Package_References;

with org.allbinary.game.input.TestInputExample_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.input.TestInputInterface_Package; use org.allbinary.game.input.TestInputInterface_Package;

package org.allbinary.game.input.TestInputExample_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TestInputExample_Access is org.allbinary.game.input.TestInputExample_Package_References.TestInputExample_Access;
   function "=" (Left, Right : TestInputExample_Access) return Boolean renames org.allbinary.game.input.TestInputExample_Package_References."=";
   subtype TestInputExample_Access_Array is org.allbinary.game.input.TestInputExample_Package_References.TestInputExample_Access_Array;
   function "=" (Left, Right : TestInputExample_Access_Array) return Boolean renames org.allbinary.game.input.TestInputExample_Package_References."=";
   subtype TestInputExample_Access_Array_Access is org.allbinary.game.input.TestInputExample_Package_References.TestInputExample_Access_Array_Access;
   function "=" (Left, Right : TestInputExample_Access_Array_Access) return Boolean renames org.allbinary.game.input.TestInputExample_Package_References."=";
   subtype TestInputExample_Access_Array_Access_Array is org.allbinary.game.input.TestInputExample_Package_References.TestInputExample_Access_Array_Access_Array;
   function "=" (Left, Right : TestInputExample_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.TestInputExample_Package_References."=";
   subtype TestInputExample_Access_Array_Access_Array_Access is org.allbinary.game.input.TestInputExample_Package_References.TestInputExample_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestInputExample_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.TestInputExample_Package_References."=";

   type TestInputExample is new Java_Object and TestInputInterface with record
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


