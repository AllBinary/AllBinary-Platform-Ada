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


package body org.allbinary.android.NullParcelable_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function describeContents (This : in out NullParcelable) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end describeContents;

   procedure writeToParcel (This : in out NullParcelable; dest : Parcel_Access; flags : Integer) is
   begin
        null;
   end writeToParcel;

   procedure describeContents (This : in out NullParcelable) is
      Java_Result : constant Integer := NullParcelable'Class (This).describeContents;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end describeContents;

begin
   null;
   NULL_PARCELABLE := NullParcelable_Package.Create;

end org.allbinary.android.NullParcelable_Package;


