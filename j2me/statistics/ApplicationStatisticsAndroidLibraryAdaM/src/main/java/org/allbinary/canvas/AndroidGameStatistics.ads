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
limited with org.allbinary.canvas.AndroidGameStatistics_Package;
package org.allbinary.canvas.AndroidGameStatistics_Package_References is
   type AndroidGameStatistics_Access is access all org.allbinary.canvas.AndroidGameStatistics_Package.AndroidGameStatistics'Class;
   type AndroidGameStatistics_Access_Array is array (Natural range <>) of AndroidGameStatistics_Access;
   type AndroidGameStatistics_Access_Array_Access is access all AndroidGameStatistics_Access_Array;
   type AndroidGameStatistics_Access_Array_Access_Array is array (Natural range <>) of AndroidGameStatistics_Access_Array_Access;
   type AndroidGameStatistics_Access_Array_Access_Array_Access is access all AndroidGameStatistics_Access_Array_Access_Array;
   type AndroidGameStatistics_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidGameStatistics_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidGameStatistics_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidGameStatistics_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidGameStatistics_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidGameStatistics_Access_Array_Access is (if Value /= null and then Value.all in AndroidGameStatistics_Access_Array_Object'Class then AndroidGameStatistics_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidGameStatistics_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidGameStatistics_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidGameStatistics_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidGameStatistics_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidGameStatistics_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidGameStatistics_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidGameStatistics_Access_Array_Access_Array_Object'Class then AndroidGameStatistics_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.canvas.AndroidGameStatistics_Package_References;

with org.allbinary.canvas.AndroidGameStatistics_Package_References;
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
limited with org.allbinary.android.view.BaseViewWrapper_Package;
with org.allbinary.android.view.BaseViewWrapper_Package_References;
with org.allbinary.canvas.BaseGameStatistics_Package; use org.allbinary.canvas.BaseGameStatistics_Package;

package org.allbinary.canvas.AndroidGameStatistics_Package is

   package View_Package renames Standard.android.view.View_Package;
   package BaseViewWrapper_Package renames Standard.org.allbinary.android.view.BaseViewWrapper_Package;
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
   subtype BaseViewWrapper_Access is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access;
   use type BaseViewWrapper_Access;
   subtype BaseViewWrapper_Access_Array is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access_Array;
   use type BaseViewWrapper_Access_Array;
   subtype BaseViewWrapper_Access_Array_Access is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access_Array_Access;
   use type BaseViewWrapper_Access_Array_Access;
   subtype BaseViewWrapper_Access_Array_Access_Array is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access_Array_Access_Array;
   use type BaseViewWrapper_Access_Array_Access_Array;
   subtype BaseViewWrapper_Access_Array_Access_Array_Access is org.allbinary.android.view.BaseViewWrapper_Package_References.BaseViewWrapper_Access_Array_Access_Array_Access;
   use type BaseViewWrapper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AndroidGameStatistics_Access is org.allbinary.canvas.AndroidGameStatistics_Package_References.AndroidGameStatistics_Access;
   function "=" (Left, Right : AndroidGameStatistics_Access) return Boolean renames org.allbinary.canvas.AndroidGameStatistics_Package_References."=";
   subtype AndroidGameStatistics_Access_Array is org.allbinary.canvas.AndroidGameStatistics_Package_References.AndroidGameStatistics_Access_Array;
   function "=" (Left, Right : AndroidGameStatistics_Access_Array) return Boolean renames org.allbinary.canvas.AndroidGameStatistics_Package_References."=";
   subtype AndroidGameStatistics_Access_Array_Access is org.allbinary.canvas.AndroidGameStatistics_Package_References.AndroidGameStatistics_Access_Array_Access;
   function "=" (Left, Right : AndroidGameStatistics_Access_Array_Access) return Boolean renames org.allbinary.canvas.AndroidGameStatistics_Package_References."=";
   function Java_Box (Value : AndroidGameStatistics_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.AndroidGameStatistics_Package_References.Java_Box;
   function Java_Unbox_AndroidGameStatistics_Access_Array (Value : access Java_Object'Class) return AndroidGameStatistics_Access_Array_Access renames org.allbinary.canvas.AndroidGameStatistics_Package_References.Java_Unbox_AndroidGameStatistics_Access_Array;
   subtype AndroidGameStatistics_Access_Array_Access_Array is org.allbinary.canvas.AndroidGameStatistics_Package_References.AndroidGameStatistics_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidGameStatistics_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.AndroidGameStatistics_Package_References."=";
   subtype AndroidGameStatistics_Access_Array_Access_Array_Access is org.allbinary.canvas.AndroidGameStatistics_Package_References.AndroidGameStatistics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidGameStatistics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.AndroidGameStatistics_Package_References."=";
   function Java_Box (Value : AndroidGameStatistics_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.canvas.AndroidGameStatistics_Package_References.Java_Box;
   function Java_Unbox_AndroidGameStatistics_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidGameStatistics_Access_Array_Access_Array_Access renames org.allbinary.canvas.AndroidGameStatistics_Package_References.Java_Unbox_AndroidGameStatistics_Access_Array_Access_Array;

   type AndroidGameStatistics is new BaseGameStatistics with record
      view : BaseViewWrapper_Access;
      totalOnDraws : Long_Long_Integer;
      ANDROID_STRING_ARRAY : Unbounded_String_Array_Access;
      TOTAL_ONDRAWS : Unbounded_String;
      ONDRAWS_RATE : Unbounded_String;
   end record;

   procedure Initialize (This : in out AndroidGameStatistics'Class);
   function Create return AndroidGameStatistics_Access;
   procedure initView (This : in out AndroidGameStatistics; view_Param : access View_Package.View'Class);
   procedure process (This : in out AndroidGameStatistics);
   procedure nextOnDraw (This : in out AndroidGameStatistics);
   function toStringArray (This : in out AndroidGameStatistics) return Unbounded_String_Array_Access;
   function toString (This : in out AndroidGameStatistics) return Unbounded_String;

end org.allbinary.canvas.AndroidGameStatistics_Package;


