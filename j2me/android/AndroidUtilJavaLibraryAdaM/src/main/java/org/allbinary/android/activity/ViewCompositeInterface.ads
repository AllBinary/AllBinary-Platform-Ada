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
limited with org.allbinary.android.activity.ViewCompositeInterface_Package;
package org.allbinary.android.activity.ViewCompositeInterface_Package_References is
   type ViewCompositeInterface_Access is access all org.allbinary.android.activity.ViewCompositeInterface_Package.ViewCompositeInterface'Class;
   type ViewCompositeInterface_Access_Array is array (Natural range <>) of ViewCompositeInterface_Access;
   type ViewCompositeInterface_Access_Array_Access is access all ViewCompositeInterface_Access_Array;
   type ViewCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of ViewCompositeInterface_Access_Array_Access;
   type ViewCompositeInterface_Access_Array_Access_Array_Access is access all ViewCompositeInterface_Access_Array_Access_Array;
   type ViewCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in ViewCompositeInterface_Access_Array_Object'Class then ViewCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ViewCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ViewCompositeInterface_Access_Array_Access_Array_Object'Class then ViewCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.activity.ViewCompositeInterface_Package_References;

with org.allbinary.android.activity.ViewCompositeInterface_Package_References;
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
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.android.activity.ViewCompositeInterface_Package is

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


   type ViewCompositeInterface is interface;
   subtype ViewCompositeInterface_Access is org.allbinary.android.activity.ViewCompositeInterface_Package_References.ViewCompositeInterface_Access;
   function "=" (Left, Right : ViewCompositeInterface_Access) return Boolean renames org.allbinary.android.activity.ViewCompositeInterface_Package_References."=";
   subtype ViewCompositeInterface_Access_Array is org.allbinary.android.activity.ViewCompositeInterface_Package_References.ViewCompositeInterface_Access_Array;
   function "=" (Left, Right : ViewCompositeInterface_Access_Array) return Boolean renames org.allbinary.android.activity.ViewCompositeInterface_Package_References."=";
   subtype ViewCompositeInterface_Access_Array_Access is org.allbinary.android.activity.ViewCompositeInterface_Package_References.ViewCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : ViewCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ViewCompositeInterface_Package_References."=";
   function Java_Box (Value : ViewCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.activity.ViewCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_ViewCompositeInterface_Access_Array (Value : access Java_Object'Class) return ViewCompositeInterface_Access_Array_Access renames org.allbinary.android.activity.ViewCompositeInterface_Package_References.Java_Unbox_ViewCompositeInterface_Access_Array;
   subtype ViewCompositeInterface_Access_Array_Access_Array is org.allbinary.android.activity.ViewCompositeInterface_Package_References.ViewCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ViewCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.ViewCompositeInterface_Package_References."=";
   subtype ViewCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.ViewCompositeInterface_Package_References.ViewCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.ViewCompositeInterface_Package_References."=";
   function Java_Box (Value : ViewCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.activity.ViewCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_ViewCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ViewCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.android.activity.ViewCompositeInterface_Package_References.Java_Unbox_ViewCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ViewCompositeInterface (Value : ViewCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getRootView (This : in out ViewCompositeInterface) return View_Access is abstract;
   function getView (This : in out ViewCompositeInterface) return View_Access is abstract;
   procedure runOnUiThread (This : in out ViewCompositeInterface; action_Param : access Runnable_Package.Runnable'Class) is abstract;

end org.allbinary.android.activity.ViewCompositeInterface_Package;


