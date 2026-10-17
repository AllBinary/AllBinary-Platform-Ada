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


package body org.allbinary.business.advertisement.image.AdvertisementImage_Package is

   procedure Initialize_Fields (This : in out AdvertisementImage'Class) is
   begin
      null;
      This.imageFileName := Null_Unbounded_String;
      This.imageUrl := Null_Unbounded_String;
      This.constraint := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementImage'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvertisementImage_Access is
      This : constant AdvertisementImage_Access := new AdvertisementImage;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getFileName (This : in out AdvertisementImage) return Unbounded_String is
   begin
        return This.imageFileName;
   end getFileName;

   function getUrl (This : in out AdvertisementImage) return Unbounded_String is
   begin
        return This.imageUrl;
   end getUrl;

   function getTwoDimensionalConstraint (This : in out AdvertisementImage) return TwoDimensionalConstraintInterface_Access is
   begin
        return This.constraint;
   end getTwoDimensionalConstraint;

   procedure getFileName (This : in out AdvertisementImage) is
      Java_Result : constant Unbounded_String := AdvertisementImage'Class (This).getFileName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileName;

   procedure getUrl (This : in out AdvertisementImage) is
      Java_Result : constant Unbounded_String := AdvertisementImage'Class (This).getUrl;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUrl;

   procedure getTwoDimensionalConstraint (This : in out AdvertisementImage) is
      Java_Result : constant TwoDimensionalConstraintInterface_Access := AdvertisementImage'Class (This).getTwoDimensionalConstraint;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTwoDimensionalConstraint;

end org.allbinary.business.advertisement.image.AdvertisementImage_Package;


