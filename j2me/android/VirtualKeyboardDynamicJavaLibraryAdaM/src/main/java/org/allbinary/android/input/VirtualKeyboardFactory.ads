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
with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package; use org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package;
with org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package; use org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package;
with android.app.Activity_Package; use android.app.Activity_Package;
with org.allbinary.android.input.VirtualKeyboard_Package; use org.allbinary.android.input.VirtualKeyboard_Package;

package org.allbinary.android.input.VirtualKeyboardFactory_Package is

   package AndroidInfoFactory_Package renames Standard.org.allbinary.android.AndroidInfoFactory_Package;
   package VirtualKeyboardAPI1_Package renames Standard.org.allbinary.android.input.api1.VirtualKeyboardAPI1_Package;
   package VirtualKeyboardAPI3_Package renames Standard.org.allbinary.android.input.api3.VirtualKeyboardAPI3_Package;
   package Activity_Package renames Standard.android.app.Activity_Package;

   type VirtualKeyboardFactory is tagged;
   type VirtualKeyboardFactory_Access is access all VirtualKeyboardFactory'Class;
   type VirtualKeyboardFactory_Access_Array is array (Natural range <>) of VirtualKeyboardFactory_Access;
   type VirtualKeyboardFactory_Access_Array_Access is access all VirtualKeyboardFactory_Access_Array;

   type VirtualKeyboardFactory is new Java_Object with null record;
   virtualKeyboard : VirtualKeyboard_Access;

   procedure Initialize (This : in out VirtualKeyboardFactory'Class);
   function Create return VirtualKeyboardFactory_Access;
   procedure init (activity : Activity_Access);
   function getInstance return VirtualKeyboard_Access;

end org.allbinary.android.input.VirtualKeyboardFactory_Package;


