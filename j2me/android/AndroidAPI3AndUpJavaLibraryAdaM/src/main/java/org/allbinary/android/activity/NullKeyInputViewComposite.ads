-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.android.activity.KeyInputViewCompositeInterface_Package; use org.allbinary.android.activity.KeyInputViewCompositeInterface_Package;

package org.allbinary.android.activity.NullKeyInputViewComposite_Package is

   package View_Package renames Standard.android.view.View_Package;

   type NullKeyInputViewComposite is tagged;
   type NullKeyInputViewComposite_Access is access all NullKeyInputViewComposite'Class;
   type NullKeyInputViewComposite_Access_Array is array (Natural range <>) of NullKeyInputViewComposite_Access;
   type NullKeyInputViewComposite_Access_Array_Access is access all NullKeyInputViewComposite_Access_Array;

   type NullKeyInputViewComposite is new KeyInputViewCompositeInterface with null record;
   NULL_KEY_INPUT_VIEW_COMPOSITE : NullKeyInputViewComposite_Access;

   procedure Initialize (This : in out NullKeyInputViewComposite'Class);
   function Create return NullKeyInputViewComposite_Access;
   procedure setKeyInputView (This : in out NullKeyInputViewComposite; keyInputView_Param : access View_Package.View'Class);
   function getRootView (This : in out NullKeyInputViewComposite) return View_Access;
   function getView (This : in out NullKeyInputViewComposite) return View_Access;
   procedure runOnUiThread (This : in out NullKeyInputViewComposite; action_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.android.activity.NullKeyInputViewComposite_Package;


