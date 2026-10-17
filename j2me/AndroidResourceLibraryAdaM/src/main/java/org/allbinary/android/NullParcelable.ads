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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with android.os.Parcelable_Package; use android.os.Parcelable_Package;
with android.os.Parcel_Package; use android.os.Parcel_Package;

package org.allbinary.android.NullParcelable_Package is

   package Parcelable_Package renames Standard.android.os.Parcelable_Package;
   package Parcel_Package renames Standard.android.os.Parcel_Package;

   type NullParcelable is tagged;
   type NullParcelable_Access is access all NullParcelable'Class;
   type NullParcelable_Access_Array is array (Natural range <>) of NullParcelable_Access;
   type NullParcelable_Access_Array_Access is access all NullParcelable_Access_Array;

   type NullParcelable is new Parcelable with null record;
   NULL_PARCELABLE : NullParcelable_Access;

   procedure Initialize (This : in out NullParcelable'Class);
   function Create return NullParcelable_Access;
   function describeContents (This : in out NullParcelable) return Integer;
   procedure writeToParcel (This : in out NullParcelable; dest_Param : access Parcel_Package.Parcel'Class; flags : Integer);

end org.allbinary.android.NullParcelable_Package;


