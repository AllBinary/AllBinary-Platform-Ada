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



package body org.allbinary.business.advertisement.product.AdvertisementProduct_Package is

   procedure Initialize_Fields (This : in out AdvertisementProduct'Class) is
   begin
      null;
      This.type_Id := Null_Unbounded_String;
      This.link := Null_Unbounded_String;
      This.number := 0;
      This.constraint := null;
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementProduct'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AdvertisementProduct_Access is
      This : constant AdvertisementProduct_Access := new AdvertisementProduct;
   begin
      AdvertisementProduct_Package.Initialize (This.all);
      return This;
   end Create;

   function getType (This : in out AdvertisementProduct) return Unbounded_String is
   begin
        return This.type_Id;
   end getType;

   function getLink (This : in out AdvertisementProduct) return Unbounded_String is
   begin
        return This.link;
   end getLink;

   function getNumber (This : in out AdvertisementProduct) return Integer is
   begin
        return This.number;
   end getNumber;

   function getTwoDimensionalConstraint (This : in out AdvertisementProduct) return TwoDimensionalConstraintInterface_Access is
   begin
        return This.constraint;
   end getTwoDimensionalConstraint;

end org.allbinary.business.advertisement.product.AdvertisementProduct_Package;


