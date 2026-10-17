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


package body org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package is

   procedure Initialize_Fields (This : in out AdvertisementAreaConstraints'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementAreaConstraints'Class; document : Document_Access) is
      node : Node_Access;
   begin
      Initialize_Fields (This);
        node := DomSearchHelper_Package.getNode (AdvertisementAreaData_Package.getInstance.NAME, document.getChildNodes);
        This.displayInBrowserContraintsInterface := DisplayInBrowserContraints_Package.Create (node);
        This.twoDimensionConstraintsInterface := TwoDimensionalConstraint_Package.Create (node);
   end Initialize;

   function Create (document : Document_Access) return AdvertisementAreaConstraints_Access is
      This : constant AdvertisementAreaConstraints_Access := new AdvertisementAreaConstraints;
   begin
      AdvertisementAreaConstraints_Package.Initialize (This.all, document);
      return This;
   end Create;

   procedure setDisplayInBrowserContraints (This : in out AdvertisementAreaConstraints; displayInBrowserContraintsInterface : DisplayInBrowserContraintsInterface_Access) is
   begin
        This.displayInBrowserContraintsInterface := displayInBrowserContraintsInterface;
   end setDisplayInBrowserContraints;

   procedure getTwoDimensionContraints (This : in out AdvertisementAreaConstraints; twoDimensionConstraintsInterface : TwoDimensionalConstraintInterface_Access) is
   begin
        This.twoDimensionConstraintsInterface := twoDimensionConstraintsInterface;
   end getTwoDimensionContraints;

   function getDisplayInBrowserContraints (This : in out AdvertisementAreaConstraints) return DisplayInBrowserContraintsInterface_Access is
   begin
        return This.displayInBrowserContraintsInterface;
   end getDisplayInBrowserContraints;

   function getTwoDimensionContraints (This : in out AdvertisementAreaConstraints) return TwoDimensionalConstraintInterface_Access is
   begin
        return This.twoDimensionConstraintsInterface;
   end getTwoDimensionContraints;

end org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package;


