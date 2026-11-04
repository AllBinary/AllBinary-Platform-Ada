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
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package; use org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package;
with org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaData_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;
with org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package;

package body org.allbinary.business.advertisement.area.AdvertisementAreaConstraints_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DisplayInBrowserContraints_Package renames Standard.org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints_Package;
   package TwoDimensionalConstraint_Package renames Standard.org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   subtype DisplayInBrowserContraintsInterface_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
   subtype DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References.DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInBrowserContraintsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface_Package_References."=";
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
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


