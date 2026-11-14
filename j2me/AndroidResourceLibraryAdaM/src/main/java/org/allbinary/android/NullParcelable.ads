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

with AllBinary_Java;
limited with org.allbinary.android.NullParcelable_Package;
package org.allbinary.android.NullParcelable_Package_References is
   type NullParcelable_Access is access all org.allbinary.android.NullParcelable_Package.NullParcelable'Class;
   type NullParcelable_Access_Array is array (Natural range <>) of NullParcelable_Access;
   type NullParcelable_Access_Array_Access is access all NullParcelable_Access_Array;
   type NullParcelable_Access_Array_Access_Array is array (Natural range <>) of NullParcelable_Access_Array_Access;
   type NullParcelable_Access_Array_Access_Array_Access is access all NullParcelable_Access_Array_Access_Array;
   type NullParcelable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullParcelable_Access_Array_Access;
   end record;
   function Java_Box (Value : NullParcelable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullParcelable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullParcelable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullParcelable_Access_Array_Access is (if Value /= null and then Value.all in NullParcelable_Access_Array_Object'Class then NullParcelable_Access_Array_Object'Class (Value.all).Value else null);
   type NullParcelable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullParcelable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullParcelable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullParcelable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullParcelable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullParcelable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullParcelable_Access_Array_Access_Array_Object'Class then NullParcelable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.NullParcelable_Package_References;

with org.allbinary.android.NullParcelable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.os.Parcelable_Package; use android.os.Parcelable_Package;
limited with android.os.Parcel_Package;
with android.os.Parcel_Package_References;

package org.allbinary.android.NullParcelable_Package is

   package Parcelable_Package renames Standard.android.os.Parcelable_Package;
   package Parcel_Package renames Standard.android.os.Parcel_Package;
   package Reference_Types is
   subtype Parcel_Access is android.os.Parcel_Package_References.Parcel_Access;
   use type Parcel_Access;
   subtype Parcel_Access_Array is android.os.Parcel_Package_References.Parcel_Access_Array;
   use type Parcel_Access_Array;
   subtype Parcel_Access_Array_Access is android.os.Parcel_Package_References.Parcel_Access_Array_Access;
   use type Parcel_Access_Array_Access;
   subtype Parcel_Access_Array_Access_Array is android.os.Parcel_Package_References.Parcel_Access_Array_Access_Array;
   use type Parcel_Access_Array_Access_Array;
   subtype Parcel_Access_Array_Access_Array_Access is android.os.Parcel_Package_References.Parcel_Access_Array_Access_Array_Access;
   use type Parcel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullParcelable_Access is org.allbinary.android.NullParcelable_Package_References.NullParcelable_Access;
   function "=" (Left, Right : NullParcelable_Access) return Boolean renames org.allbinary.android.NullParcelable_Package_References."=";
   subtype NullParcelable_Access_Array is org.allbinary.android.NullParcelable_Package_References.NullParcelable_Access_Array;
   function "=" (Left, Right : NullParcelable_Access_Array) return Boolean renames org.allbinary.android.NullParcelable_Package_References."=";
   subtype NullParcelable_Access_Array_Access is org.allbinary.android.NullParcelable_Package_References.NullParcelable_Access_Array_Access;
   function "=" (Left, Right : NullParcelable_Access_Array_Access) return Boolean renames org.allbinary.android.NullParcelable_Package_References."=";
   function Java_Box (Value : NullParcelable_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.NullParcelable_Package_References.Java_Box;
   function Java_Unbox_NullParcelable_Access_Array (Value : access Java_Object'Class) return NullParcelable_Access_Array_Access renames org.allbinary.android.NullParcelable_Package_References.Java_Unbox_NullParcelable_Access_Array;
   subtype NullParcelable_Access_Array_Access_Array is org.allbinary.android.NullParcelable_Package_References.NullParcelable_Access_Array_Access_Array;
   function "=" (Left, Right : NullParcelable_Access_Array_Access_Array) return Boolean renames org.allbinary.android.NullParcelable_Package_References."=";
   subtype NullParcelable_Access_Array_Access_Array_Access is org.allbinary.android.NullParcelable_Package_References.NullParcelable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullParcelable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.NullParcelable_Package_References."=";
   function Java_Box (Value : NullParcelable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.NullParcelable_Package_References.Java_Box;
   function Java_Unbox_NullParcelable_Access_Array_Access_Array (Value : access Java_Object'Class) return NullParcelable_Access_Array_Access_Array_Access renames org.allbinary.android.NullParcelable_Package_References.Java_Unbox_NullParcelable_Access_Array_Access_Array;

   type NullParcelable is new Java_Object and Parcelable with null record;
   NULL_PARCELABLE : NullParcelable_Access;

   procedure Initialize (This : in out NullParcelable'Class);
   function Create return NullParcelable_Access;
   function describeContents (This : in out NullParcelable) return Integer;
   procedure writeToParcel (This : in out NullParcelable; dest_Param : access Parcel_Package.Parcel'Class; flags : Integer);

end org.allbinary.android.NullParcelable_Package;


