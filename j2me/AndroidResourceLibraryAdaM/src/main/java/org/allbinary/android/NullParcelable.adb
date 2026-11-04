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


with android.os.Parcelable_Package; use android.os.Parcelable_Package;
with android.os.Parcel_Package; use android.os.Parcel_Package;
with android.os.Parcel_Package_References;

package body org.allbinary.android.NullParcelable_Package is

   subtype Parcel_Access is android.os.Parcel_Package_References.Parcel_Access;
   function "=" (Left, Right : Parcel_Access) return Boolean renames android.os.Parcel_Package_References."=";
   subtype Parcel_Access_Array is android.os.Parcel_Package_References.Parcel_Access_Array;
   function "=" (Left, Right : Parcel_Access_Array) return Boolean renames android.os.Parcel_Package_References."=";
   subtype Parcel_Access_Array_Access is android.os.Parcel_Package_References.Parcel_Access_Array_Access;
   function "=" (Left, Right : Parcel_Access_Array_Access) return Boolean renames android.os.Parcel_Package_References."=";
   subtype Parcel_Access_Array_Access_Array is android.os.Parcel_Package_References.Parcel_Access_Array_Access_Array;
   function "=" (Left, Right : Parcel_Access_Array_Access_Array) return Boolean renames android.os.Parcel_Package_References."=";
   subtype Parcel_Access_Array_Access_Array_Access is android.os.Parcel_Package_References.Parcel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Parcel_Access_Array_Access_Array_Access) return Boolean renames android.os.Parcel_Package_References."=";
   procedure Initialize_Fields (This : in out NullParcelable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullParcelable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullParcelable_Access is
      This : constant NullParcelable_Access := new NullParcelable;
   begin
      NullParcelable_Package.Initialize (This.all);
      return This;
   end Create;


   function describeContents (This : in out NullParcelable) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end describeContents;

   procedure writeToParcel (This : in out NullParcelable; dest_Param : access Parcel_Package.Parcel'Class; flags : Integer) is
      dest : constant Parcel_Access := Parcel_Access (dest_Param);
   begin
        null;
   end writeToParcel;

begin
   null;
   NULL_PARCELABLE := NullParcelable_Package.Create;

end org.allbinary.android.NullParcelable_Package;


