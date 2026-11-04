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

limited with org.allbinary.android.activity.SimpleProgressActivityInterface_Package;
package org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References is
   type SimpleProgressActivityInterface_Access is access all org.allbinary.android.activity.SimpleProgressActivityInterface_Package.SimpleProgressActivityInterface'Class;
   type SimpleProgressActivityInterface_Access_Array is array (Natural range <>) of SimpleProgressActivityInterface_Access;
   type SimpleProgressActivityInterface_Access_Array_Access is access all SimpleProgressActivityInterface_Access_Array;
   type SimpleProgressActivityInterface_Access_Array_Access_Array is array (Natural range <>) of SimpleProgressActivityInterface_Access_Array_Access;
   type SimpleProgressActivityInterface_Access_Array_Access_Array_Access is access all SimpleProgressActivityInterface_Access_Array_Access_Array;
end org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References;

with org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.android.activity.SimpleProgressActivityInterface_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type SimpleProgressActivityInterface is interface;
   subtype SimpleProgressActivityInterface_Access is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   subtype SimpleProgressActivityInterface_Access_Array is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access_Array) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   subtype SimpleProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array_Access;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access_Array_Access) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   subtype SimpleProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   subtype SimpleProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleProgressActivityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References."=";
   function Java_Object_Access_From_SimpleProgressActivityInterface (Value : SimpleProgressActivityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure runOnUiThread (This : in out SimpleProgressActivityInterface; action_Param : access Runnable_Package.Runnable'Class) is abstract;
   procedure onSetProgress (This : in out SimpleProgressActivityInterface; value : Integer; text : Unbounded_String) is abstract;
   procedure onDismissProgress (This : in out SimpleProgressActivityInterface; animationSequence : Integer_Array_Access) is abstract;
   procedure onShowProgress (This : in out SimpleProgressActivityInterface; indeterminate : Boolean; animationSequence : Integer_Array_Access) is abstract;

end org.allbinary.android.activity.SimpleProgressActivityInterface_Package;


