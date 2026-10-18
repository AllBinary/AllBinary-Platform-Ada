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


   procedure Initialize (This : in out TwoDimensionalConstraint'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return TwoDimensionalConstraint_Access is
      This : constant TwoDimensionalConstraint_Access := new TwoDimensionalConstraint;
   begin
      TwoDimensionalConstraint_Package.Initialize (This.all, node_Param);
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

   procedure setHeight (This : in out TwoDimensionalConstraint; heightSizeConstraintInterface_Param : access SizeConstraintInterface_Package.SizeConstraintInterface'Class) is
      heightSizeConstraintInterface : constant SizeConstraintInterface_Access := SizeConstraintInterface_Access (heightSizeConstraintInterface_Param);
   begin
        This.heightSizeConstraintInterface := heightSizeConstraintInterface;
   end setHeight;

   procedure setWidth (This : in out TwoDimensionalConstraint; widthSizeConstraintInterface_Param : access SizeConstraintInterface_Package.SizeConstraintInterface'Class) is
      widthSizeConstraintInterface : constant SizeConstraintInterface_Access := SizeConstraintInterface_Access (widthSizeConstraintInterface_Param);
   begin
        This.widthSizeConstraintInterface := widthSizeConstraintInterface;
   end setWidth;

end org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;


