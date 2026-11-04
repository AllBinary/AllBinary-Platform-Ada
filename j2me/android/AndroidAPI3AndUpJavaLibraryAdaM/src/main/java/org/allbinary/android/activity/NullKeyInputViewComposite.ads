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

limited with org.allbinary.android.activity.NullKeyInputViewComposite_Package;
package org.allbinary.android.activity.NullKeyInputViewComposite_Package_References is
   type NullKeyInputViewComposite_Access is access all org.allbinary.android.activity.NullKeyInputViewComposite_Package.NullKeyInputViewComposite'Class;
   type NullKeyInputViewComposite_Access_Array is array (Natural range <>) of NullKeyInputViewComposite_Access;
   type NullKeyInputViewComposite_Access_Array_Access is access all NullKeyInputViewComposite_Access_Array;
   type NullKeyInputViewComposite_Access_Array_Access_Array is array (Natural range <>) of NullKeyInputViewComposite_Access_Array_Access;
   type NullKeyInputViewComposite_Access_Array_Access_Array_Access is access all NullKeyInputViewComposite_Access_Array_Access_Array;
end org.allbinary.android.activity.NullKeyInputViewComposite_Package_References;

with org.allbinary.android.activity.NullKeyInputViewComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.view.View_Package;
with android.view.View_Package_References;
with org.allbinary.android.activity.KeyInputViewCompositeInterface_Package; use org.allbinary.android.activity.KeyInputViewCompositeInterface_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.android.activity.NullKeyInputViewComposite_Package is

   package View_Package renames Standard.android.view.View_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype View_Access is android.view.View_Package_References.View_Access;
   use type View_Access;
   subtype View_Access_Array is android.view.View_Package_References.View_Access_Array;
   use type View_Access_Array;
   subtype View_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access;
   use type View_Access_Array_Access;
   subtype View_Access_Array_Access_Array is android.view.View_Package_References.View_Access_Array_Access_Array;
   use type View_Access_Array_Access_Array;
   subtype View_Access_Array_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access_Array_Access;
   use type View_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullKeyInputViewComposite_Access is org.allbinary.android.activity.NullKeyInputViewComposite_Package_References.NullKeyInputViewComposite_Access;
   function "=" (Left, Right : NullKeyInputViewComposite_Access) return Boolean renames org.allbinary.android.activity.NullKeyInputViewComposite_Package_References."=";
   subtype NullKeyInputViewComposite_Access_Array is org.allbinary.android.activity.NullKeyInputViewComposite_Package_References.NullKeyInputViewComposite_Access_Array;
   function "=" (Left, Right : NullKeyInputViewComposite_Access_Array) return Boolean renames org.allbinary.android.activity.NullKeyInputViewComposite_Package_References."=";
   subtype NullKeyInputViewComposite_Access_Array_Access is org.allbinary.android.activity.NullKeyInputViewComposite_Package_References.NullKeyInputViewComposite_Access_Array_Access;
   function "=" (Left, Right : NullKeyInputViewComposite_Access_Array_Access) return Boolean renames org.allbinary.android.activity.NullKeyInputViewComposite_Package_References."=";
   subtype NullKeyInputViewComposite_Access_Array_Access_Array is org.allbinary.android.activity.NullKeyInputViewComposite_Package_References.NullKeyInputViewComposite_Access_Array_Access_Array;
   function "=" (Left, Right : NullKeyInputViewComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.NullKeyInputViewComposite_Package_References."=";
   subtype NullKeyInputViewComposite_Access_Array_Access_Array_Access is org.allbinary.android.activity.NullKeyInputViewComposite_Package_References.NullKeyInputViewComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullKeyInputViewComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.NullKeyInputViewComposite_Package_References."=";

   type NullKeyInputViewComposite is new Java_Object and KeyInputViewCompositeInterface with null record;
   NULL_KEY_INPUT_VIEW_COMPOSITE : NullKeyInputViewComposite_Access;

   procedure Initialize (This : in out NullKeyInputViewComposite'Class);
   function Create return NullKeyInputViewComposite_Access;
   procedure setKeyInputView (This : in out NullKeyInputViewComposite; keyInputView_Param : access View_Package.View'Class);
   function getRootView (This : in out NullKeyInputViewComposite) return View_Access;
   function getView (This : in out NullKeyInputViewComposite) return View_Access;
   procedure runOnUiThread (This : in out NullKeyInputViewComposite; action_Param : access Runnable_Package.Runnable'Class);

end org.allbinary.android.activity.NullKeyInputViewComposite_Package;


