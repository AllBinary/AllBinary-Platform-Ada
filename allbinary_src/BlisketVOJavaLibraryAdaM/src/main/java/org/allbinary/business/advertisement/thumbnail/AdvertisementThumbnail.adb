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


with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References;
with org.allbinary.business.advertisement.image.AdvertisementImageInterface_Package;
with org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package;

package body org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package is

   subtype TwoDimensionalConstraintInterface_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   subtype TwoDimensionalConstraintInterface_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   subtype TwoDimensionalConstraintInterface_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   subtype TwoDimensionalConstraintInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   subtype TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   procedure Initialize_Fields (This : in out AdvertisementThumbnail'Class) is
   begin
      null;
      This.imageFileName := Null_Unbounded_String;
      This.imageUrl := Null_Unbounded_String;
      This.constraint := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementThumbnail'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvertisementThumbnail_Access is
      This : constant AdvertisementThumbnail_Access := new AdvertisementThumbnail;
   begin
      AdvertisementThumbnail_Package.Initialize (This.all);
      return This;
   end Create;

   function getFileName (This : in out AdvertisementThumbnail) return Unbounded_String is
   begin
        return This.imageFileName;
   end getFileName;

   function getUrl (This : in out AdvertisementThumbnail) return Unbounded_String is
   begin
        return This.imageUrl;
   end getUrl;

   function getTwoDimensionalConstraint (This : in out AdvertisementThumbnail) return TwoDimensionalConstraintInterface_Access is
   begin
        return This.constraint;
   end getTwoDimensionalConstraint;

end org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnail_Package;


