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
limited with org.allbinary.android.AndroidInfoFactory_Package;
package org.allbinary.android.AndroidInfoFactory_Package_References is
   type AndroidInfoFactory_Access is access all org.allbinary.android.AndroidInfoFactory_Package.AndroidInfoFactory'Class;
   type AndroidInfoFactory_Access_Array is array (Natural range <>) of AndroidInfoFactory_Access;
   type AndroidInfoFactory_Access_Array_Access is access all AndroidInfoFactory_Access_Array;
   type AndroidInfoFactory_Access_Array_Access_Array is array (Natural range <>) of AndroidInfoFactory_Access_Array_Access;
   type AndroidInfoFactory_Access_Array_Access_Array_Access is access all AndroidInfoFactory_Access_Array_Access_Array;
   type AndroidInfoFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidInfoFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidInfoFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidInfoFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidInfoFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidInfoFactory_Access_Array_Access is (if Value /= null and then Value.all in AndroidInfoFactory_Access_Array_Object'Class then AndroidInfoFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AndroidInfoFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AndroidInfoFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AndroidInfoFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AndroidInfoFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AndroidInfoFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AndroidInfoFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AndroidInfoFactory_Access_Array_Access_Array_Object'Class then AndroidInfoFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.AndroidInfoFactory_Package_References;

with org.allbinary.android.AndroidInfoFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.android.AndroidInfoFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AndroidInfoFactory_Access is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access;
   function "=" (Left, Right : AndroidInfoFactory_Access) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";
   subtype AndroidInfoFactory_Access_Array is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access_Array;
   function "=" (Left, Right : AndroidInfoFactory_Access_Array) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";
   subtype AndroidInfoFactory_Access_Array_Access is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access_Array_Access;
   function "=" (Left, Right : AndroidInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";
   function Java_Box (Value : AndroidInfoFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.AndroidInfoFactory_Package_References.Java_Box;
   function Java_Unbox_AndroidInfoFactory_Access_Array (Value : access Java_Object'Class) return AndroidInfoFactory_Access_Array_Access renames org.allbinary.android.AndroidInfoFactory_Package_References.Java_Unbox_AndroidInfoFactory_Access_Array;
   subtype AndroidInfoFactory_Access_Array_Access_Array is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AndroidInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";
   subtype AndroidInfoFactory_Access_Array_Access_Array_Access is org.allbinary.android.AndroidInfoFactory_Package_References.AndroidInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AndroidInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.AndroidInfoFactory_Package_References."=";
   function Java_Box (Value : AndroidInfoFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.AndroidInfoFactory_Package_References.Java_Box;
   function Java_Unbox_AndroidInfoFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AndroidInfoFactory_Access_Array_Access_Array_Access renames org.allbinary.android.AndroidInfoFactory_Package_References.Java_Unbox_AndroidInfoFactory_Access_Array_Access_Array;

   type AndroidInfoFactory is new Java_Object with record
      version : Integer;
   end record;
   instance : AndroidInfoFactory_Access;

   procedure Initialize (This : in out AndroidInfoFactory'Class);
   function Create return AndroidInfoFactory_Access;
   function getInstance return AndroidInfoFactory_Access;
   function getVersion (This : in out AndroidInfoFactory) return Integer;

end org.allbinary.android.AndroidInfoFactory_Package;


