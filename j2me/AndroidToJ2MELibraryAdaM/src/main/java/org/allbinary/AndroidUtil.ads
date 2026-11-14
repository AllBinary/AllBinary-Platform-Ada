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
limited with org.allbinary.AndroidUtil_Package;
package org.allbinary.AndroidUtil_Package_References is
   type AndroidUtil_Access is access all org.allbinary.AndroidUtil_Package.AndroidUtil'Class;
   type AndroidUtil_Access_Array is array (Natural range <>) of AndroidUtil_Access;
   type AndroidUtil_Access_Array_Access is access all AndroidUtil_Access_Array;
   type AndroidUtil_Access_Array_Access_Array is array (Natural range <>) of AndroidUtil_Access_Array_Access;
   type AndroidUtil_Access_Array_Access_Array_Access is access all AndroidUtil_Access_Array_Access_Array;
   type AndroidUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidUtil_Access_Array_Access is (if Value /= null and then Value.all in AndroidUtil_Access_Array_Object'Class then AndroidUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidUtil_Access_Array_Access_Array_Object'Class then AndroidUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.AndroidUtil_Package_References;

with org.allbinary.AndroidUtil_Package_References;
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

package org.allbinary.AndroidUtil_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype AndroidUtil_Access is org.allbinary.AndroidUtil_Package_References.AndroidUtil_Access;
   function "=" (Left, Right : AndroidUtil_Access) return Boolean renames org.allbinary.AndroidUtil_Package_References."=";
   subtype AndroidUtil_Access_Array is org.allbinary.AndroidUtil_Package_References.AndroidUtil_Access_Array;
   function "=" (Left, Right : AndroidUtil_Access_Array) return Boolean renames org.allbinary.AndroidUtil_Package_References."=";
   subtype AndroidUtil_Access_Array_Access is org.allbinary.AndroidUtil_Package_References.AndroidUtil_Access_Array_Access;
   function "=" (Left, Right : AndroidUtil_Access_Array_Access) return Boolean renames org.allbinary.AndroidUtil_Package_References."=";
   function Java_Box (Value : AndroidUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.AndroidUtil_Package_References.Java_Box;
   function Java_Unbox_AndroidUtil_Access_Array (Value : access Java_Object'Class) return AndroidUtil_Access_Array_Access renames org.allbinary.AndroidUtil_Package_References.Java_Unbox_AndroidUtil_Access_Array;
   subtype AndroidUtil_Access_Array_Access_Array is org.allbinary.AndroidUtil_Package_References.AndroidUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.AndroidUtil_Package_References."=";
   subtype AndroidUtil_Access_Array_Access_Array_Access is org.allbinary.AndroidUtil_Package_References.AndroidUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.AndroidUtil_Package_References."=";
   function Java_Box (Value : AndroidUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.AndroidUtil_Package_References.Java_Box;
   function Java_Unbox_AndroidUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidUtil_Access_Array_Access_Array_Access renames org.allbinary.AndroidUtil_Package_References.Java_Unbox_AndroidUtil_Access_Array_Access_Array;

   type AndroidUtil is new Java_Object with null record;
   NULL_ACTIVITY : Activity_Access;
   version : Integer;

   procedure Initialize (This : in out AndroidUtil'Class);
   function Create return AndroidUtil_Access;
   function isMemoryRestrictive return Boolean;
   function isAndroid return Boolean;

end org.allbinary.AndroidUtil_Package;


