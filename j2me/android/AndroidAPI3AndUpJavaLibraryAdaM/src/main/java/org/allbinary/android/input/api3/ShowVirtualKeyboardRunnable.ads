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
limited with org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package;
package org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References is
   type ShowVirtualKeyboardRunnable_Access is access all org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package.ShowVirtualKeyboardRunnable'Class;
   type ShowVirtualKeyboardRunnable_Access_Array is array (Natural range <>) of ShowVirtualKeyboardRunnable_Access;
   type ShowVirtualKeyboardRunnable_Access_Array_Access is access all ShowVirtualKeyboardRunnable_Access_Array;
   type ShowVirtualKeyboardRunnable_Access_Array_Access_Array is array (Natural range <>) of ShowVirtualKeyboardRunnable_Access_Array_Access;
   type ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access is access all ShowVirtualKeyboardRunnable_Access_Array_Access_Array;
   type ShowVirtualKeyboardRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShowVirtualKeyboardRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : ShowVirtualKeyboardRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShowVirtualKeyboardRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShowVirtualKeyboardRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShowVirtualKeyboardRunnable_Access_Array_Access is (if Value /= null and then Value.all in ShowVirtualKeyboardRunnable_Access_Array_Object'Class then ShowVirtualKeyboardRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShowVirtualKeyboardRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Object'Class then ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References;

with org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShowVirtualKeyboardRunnable_Access is org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References.ShowVirtualKeyboardRunnable_Access;
   function "=" (Left, Right : ShowVirtualKeyboardRunnable_Access) return Boolean renames org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References."=";
   subtype ShowVirtualKeyboardRunnable_Access_Array is org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References.ShowVirtualKeyboardRunnable_Access_Array;
   function "=" (Left, Right : ShowVirtualKeyboardRunnable_Access_Array) return Boolean renames org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References."=";
   subtype ShowVirtualKeyboardRunnable_Access_Array_Access is org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References.ShowVirtualKeyboardRunnable_Access_Array_Access;
   function "=" (Left, Right : ShowVirtualKeyboardRunnable_Access_Array_Access) return Boolean renames org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References."=";
   function Java_Box (Value : ShowVirtualKeyboardRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References.Java_Box;
   function Java_Unbox_ShowVirtualKeyboardRunnable_Access_Array (Value : access Java_Object'Class) return ShowVirtualKeyboardRunnable_Access_Array_Access renames org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References.Java_Unbox_ShowVirtualKeyboardRunnable_Access_Array;
   subtype ShowVirtualKeyboardRunnable_Access_Array_Access_Array is org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References.ShowVirtualKeyboardRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ShowVirtualKeyboardRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References."=";
   subtype ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access is org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References.ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References."=";
   function Java_Box (Value : ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References.Java_Box;
   function Java_Unbox_ShowVirtualKeyboardRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return ShowVirtualKeyboardRunnable_Access_Array_Access_Array_Access renames org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package_References.Java_Unbox_ShowVirtualKeyboardRunnable_Access_Array_Access_Array;

   type ShowVirtualKeyboardRunnable is new Java_Object and Runnable with record
      logUtil : LogUtil_Access;
      activity : Activity_Access;
   end record;

   procedure Initialize (This : in out ShowVirtualKeyboardRunnable'Class; activity_Param : access Activity_Package.Activity'Class);
   function Create (activity_Param : access Activity_Package.Activity'Class) return ShowVirtualKeyboardRunnable_Access;
   procedure run (This : in out ShowVirtualKeyboardRunnable);

end org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package;


