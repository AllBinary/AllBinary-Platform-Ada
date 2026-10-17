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
with android.view.View_Package; use android.view.View_Package;
with org.allbinary.android.activity.ViewCompositeInterface_Package; use org.allbinary.android.activity.ViewCompositeInterface_Package;

package org.allbinary.android.activity.KeyInputViewCompositeInterface_Package is

   package View_Package renames Standard.android.view.View_Package;

   type KeyInputViewCompositeInterface is interface and ViewCompositeInterface;
   type KeyInputViewCompositeInterface_Access is access all KeyInputViewCompositeInterface'Class;
   type KeyInputViewCompositeInterface_Access_Array is array (Natural range <>) of KeyInputViewCompositeInterface_Access;
   type KeyInputViewCompositeInterface_Access_Array_Access is access all KeyInputViewCompositeInterface_Access_Array;
   procedure setKeyInputView (This : in out KeyInputViewCompositeInterface; keyInputView : View_Access) is abstract;

end org.allbinary.android.activity.KeyInputViewCompositeInterface_Package;


