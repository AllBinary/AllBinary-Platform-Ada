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


with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package; use org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaData_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;

package body org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DisplayInBrowserContraints_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package;
   package TwoDimensionalConstraint_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   procedure Initialize_Fields (This : in out AdvertisementAreaConstraints'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementAreaConstraints'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
      Initialize_Fields (This);
        node := DomSearchHelper_Package.getNode (AdvertisementAreaData_Package.getInstance.NAME, document.getChildNodes);
        This.displayInBrowserContraintsInterface := DisplayInBrowserContraintsInterface_Access (DisplayInBrowserContraints_Package.Create (node));
        This.twoDimensionConstraintsInterface := TwoDimensionalConstraintInterface_Access (TwoDimensionalConstraint_Package.Create (node));
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return AdvertisementAreaConstraints_Access is
      This : constant AdvertisementAreaConstraints_Access := new AdvertisementAreaConstraints;
   begin
      AdvertisementAreaConstraints_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   procedure setDisplayInBrowserContraints (This : in out AdvertisementAreaConstraints; displayInBrowserContraintsInterface_Param : access DisplayInBrowserContraintsInterface_Package.DisplayInBrowserContraintsInterface'Class) is
      displayInBrowserContraintsInterface : constant DisplayInBrowserContraintsInterface_Access := DisplayInBrowserContraintsInterface_Access (displayInBrowserContraintsInterface_Param);
   begin
        This.displayInBrowserContraintsInterface := displayInBrowserContraintsInterface;
   end setDisplayInBrowserContraints;

   procedure getTwoDimensionContraints (This : in out AdvertisementAreaConstraints; twoDimensionConstraintsInterface_Param : access TwoDimensionalConstraintInterface_Package.TwoDimensionalConstraintInterface'Class) is
      twoDimensionConstraintsInterface : constant TwoDimensionalConstraintInterface_Access := TwoDimensionalConstraintInterface_Access (twoDimensionConstraintsInterface_Param);
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


