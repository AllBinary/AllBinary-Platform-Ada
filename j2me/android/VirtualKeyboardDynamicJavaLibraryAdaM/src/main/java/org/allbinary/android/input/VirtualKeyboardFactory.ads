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

with AllBinary_Java;
limited with org.allbinary.android.input.VirtualKeyboardFactory_Package;
package org.allbinary.android.input.VirtualKeyboardFactory_Package_References is
   type VirtualKeyboardFactory_Access is access all org.allbinary.android.input.VirtualKeyboardFactory_Package.VirtualKeyboardFactory'Class;
   type VirtualKeyboardFactory_Access_Array is array (Natural range <>) of VirtualKeyboardFactory_Access;
   type VirtualKeyboardFactory_Access_Array_Access is access all VirtualKeyboardFactory_Access_Array;
   type VirtualKeyboardFactory_Access_Array_Access_Array is array (Natural range <>) of VirtualKeyboardFactory_Access_Array_Access;
   type VirtualKeyboardFactory_Access_Array_Access_Array_Access is access all VirtualKeyboardFactory_Access_Array_Access_Array;
   type VirtualKeyboardFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VirtualKeyboardFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : VirtualKeyboardFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VirtualKeyboardFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VirtualKeyboardFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VirtualKeyboardFactory_Access_Array_Access is (if Value /= null and then Value.all in VirtualKeyboardFactory_Access_Array_Object'Class then VirtualKeyboardFactory_Access_Array_Object'Class (Value.all).Value else null);
   type VirtualKeyboardFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VirtualKeyboardFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VirtualKeyboardFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VirtualKeyboardFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VirtualKeyboardFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VirtualKeyboardFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VirtualKeyboardFactory_Access_Array_Access_Array_Object'Class then VirtualKeyboardFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.VirtualKeyboardFactory_Package_References;

with org.allbinary.android.input.VirtualKeyboardFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;
limited with org.allbinary.android.input.VirtualKeyboard_Package;
with org.allbinary.android.input.VirtualKeyboard_Package_References;

package org.allbinary.android.input.VirtualKeyboardFactory_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package Reference_Types is
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   use type Activity_Access;
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   use type Activity_Access_Array;
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   use type Activity_Access_Array_Access;
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   use type Activity_Access_Array_Access_Array;
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   use type Activity_Access_Array_Access_Array_Access;
   subtype VirtualKeyboard_Access is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access;
   use type VirtualKeyboard_Access;
   subtype VirtualKeyboard_Access_Array is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array;
   use type VirtualKeyboard_Access_Array;
   subtype VirtualKeyboard_Access_Array_Access is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array_Access;
   use type VirtualKeyboard_Access_Array_Access;
   subtype VirtualKeyboard_Access_Array_Access_Array is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array_Access_Array;
   use type VirtualKeyboard_Access_Array_Access_Array;
   subtype VirtualKeyboard_Access_Array_Access_Array_Access is org.allbinary.android.input.VirtualKeyboard_Package_References.VirtualKeyboard_Access_Array_Access_Array_Access;
   use type VirtualKeyboard_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype VirtualKeyboardFactory_Access is org.allbinary.android.input.VirtualKeyboardFactory_Package_References.VirtualKeyboardFactory_Access;
   function "=" (Left, Right : VirtualKeyboardFactory_Access) return Boolean renames org.allbinary.android.input.VirtualKeyboardFactory_Package_References."=";
   subtype VirtualKeyboardFactory_Access_Array is org.allbinary.android.input.VirtualKeyboardFactory_Package_References.VirtualKeyboardFactory_Access_Array;
   function "=" (Left, Right : VirtualKeyboardFactory_Access_Array) return Boolean renames org.allbinary.android.input.VirtualKeyboardFactory_Package_References."=";
   subtype VirtualKeyboardFactory_Access_Array_Access is org.allbinary.android.input.VirtualKeyboardFactory_Package_References.VirtualKeyboardFactory_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardFactory_Access_Array_Access) return Boolean renames org.allbinary.android.input.VirtualKeyboardFactory_Package_References."=";
   function Java_Box (Value : VirtualKeyboardFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.VirtualKeyboardFactory_Package_References.Java_Box;
   function Java_Unbox_VirtualKeyboardFactory_Access_Array (Value : access Java_Object'Class) return VirtualKeyboardFactory_Access_Array_Access renames org.allbinary.android.input.VirtualKeyboardFactory_Package_References.Java_Unbox_VirtualKeyboardFactory_Access_Array;
   subtype VirtualKeyboardFactory_Access_Array_Access_Array is org.allbinary.android.input.VirtualKeyboardFactory_Package_References.VirtualKeyboardFactory_Access_Array_Access_Array;
   function "=" (Left, Right : VirtualKeyboardFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.VirtualKeyboardFactory_Package_References."=";
   subtype VirtualKeyboardFactory_Access_Array_Access_Array_Access is org.allbinary.android.input.VirtualKeyboardFactory_Package_References.VirtualKeyboardFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VirtualKeyboardFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.VirtualKeyboardFactory_Package_References."=";
   function Java_Box (Value : VirtualKeyboardFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.VirtualKeyboardFactory_Package_References.Java_Box;
   function Java_Unbox_VirtualKeyboardFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return VirtualKeyboardFactory_Access_Array_Access_Array_Access renames org.allbinary.android.input.VirtualKeyboardFactory_Package_References.Java_Unbox_VirtualKeyboardFactory_Access_Array_Access_Array;

   type VirtualKeyboardFactory is new Java_Object with null record;
   virtualKeyboard : VirtualKeyboard_Access;

   procedure Initialize (This : in out VirtualKeyboardFactory'Class);
   function Create return VirtualKeyboardFactory_Access;
   procedure init (activity_Param : access Activity_Package.Activity'Class);
   function getInstance return VirtualKeyboard_Access;

end org.allbinary.android.input.VirtualKeyboardFactory_Package;


