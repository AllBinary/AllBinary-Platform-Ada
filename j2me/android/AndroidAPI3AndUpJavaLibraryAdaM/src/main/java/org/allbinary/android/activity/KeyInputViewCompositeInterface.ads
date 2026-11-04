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

limited with org.allbinary.android.activity.KeyInputViewCompositeInterface_Package;
package org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References is
   type KeyInputViewCompositeInterface_Access is access all org.allbinary.android.activity.KeyInputViewCompositeInterface_Package.KeyInputViewCompositeInterface'Class;
   type KeyInputViewCompositeInterface_Access_Array is array (Natural range <>) of KeyInputViewCompositeInterface_Access;
   type KeyInputViewCompositeInterface_Access_Array_Access is access all KeyInputViewCompositeInterface_Access_Array;
   type KeyInputViewCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of KeyInputViewCompositeInterface_Access_Array_Access;
   type KeyInputViewCompositeInterface_Access_Array_Access_Array_Access is access all KeyInputViewCompositeInterface_Access_Array_Access_Array;
end org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References;

with org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References;
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
with org.allbinary.android.activity.ViewCompositeInterface_Package; use org.allbinary.android.activity.ViewCompositeInterface_Package;

package org.allbinary.android.activity.KeyInputViewCompositeInterface_Package is

   package View_Package renames Standard.android.view.View_Package;
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


   type KeyInputViewCompositeInterface is interface and ViewCompositeInterface;
   subtype KeyInputViewCompositeInterface_Access is org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References.KeyInputViewCompositeInterface_Access;
   function "=" (Left, Right : KeyInputViewCompositeInterface_Access) return Boolean renames org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References."=";
   subtype KeyInputViewCompositeInterface_Access_Array is org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References.KeyInputViewCompositeInterface_Access_Array;
   function "=" (Left, Right : KeyInputViewCompositeInterface_Access_Array) return Boolean renames org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References."=";
   subtype KeyInputViewCompositeInterface_Access_Array_Access is org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References.KeyInputViewCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : KeyInputViewCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References."=";
   subtype KeyInputViewCompositeInterface_Access_Array_Access_Array is org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References.KeyInputViewCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : KeyInputViewCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References."=";
   subtype KeyInputViewCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References.KeyInputViewCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyInputViewCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.KeyInputViewCompositeInterface_Package_References."=";
   function Java_Object_Access_From_KeyInputViewCompositeInterface (Value : KeyInputViewCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setKeyInputView (This : in out KeyInputViewCompositeInterface; keyInputView_Param : access View_Package.View'Class) is abstract;

end org.allbinary.android.activity.KeyInputViewCompositeInterface_Package;


