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


package body org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package is

   procedure Initialize_Fields (This : in out TwoDimensionalConstraint'Class) is
   begin
      null;
      This.widthSizeConstraintInterface := null;
      This.heightSizeConstraintInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TwoDimensionalConstraint'Class; node : Node_Access) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (node : Node_Access) return TwoDimensionalConstraint_Access is
      This : constant TwoDimensionalConstraint_Access := new TwoDimensionalConstraint;
   begin
      TwoDimensionalConstraint_Package.Initialize (This.all, node);
      return This;
   end Create;

   function getHeight (This : in out TwoDimensionalConstraint) return SizeConstraintInterface_Access is
   begin
        return This.heightSizeConstraintInterface;
   end getHeight;

   function getWidth (This : in out TwoDimensionalConstraint) return SizeConstraintInterface_Access is
   begin
        return This.widthSizeConstraintInterface;
   end getWidth;

   procedure setHeight (This : in out TwoDimensionalConstraint; heightSizeConstraintInterface : SizeConstraintInterface_Access) is
   begin
        This.heightSizeConstraintInterface := heightSizeConstraintInterface;
   end setHeight;

   procedure setWidth (This : in out TwoDimensionalConstraint; widthSizeConstraintInterface : SizeConstraintInterface_Access) is
   begin
        This.widthSizeConstraintInterface := widthSizeConstraintInterface;
   end setWidth;

end org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;


