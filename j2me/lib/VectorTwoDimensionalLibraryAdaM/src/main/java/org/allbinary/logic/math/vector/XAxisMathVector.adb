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


package body org.allbinary.logic.math.vector.XAxisMathVector_Package is

   procedure Initialize_Fields (This : in out XAxisMathVector'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out XAxisMathVector'Class; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer) is
      magnitudeBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (magnitudeBasicDecimal_Param);
   begin
        MathVector_Package.Initialize (This, magnitudeBasicDecimal, direction);
        This.calculate;
   end Initialize;

   function Create (magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer) return XAxisMathVector_Access is
      This : constant XAxisMathVector_Access := new XAxisMathVector;
   begin
      XAxisMathVector_Package.Initialize (This.all, magnitudeBasicDecimal_Param, direction);
      return This;
   end Create;

   procedure calculate (This : in out XAxisMathVector) is
      result : Long_Long_Integer;
   begin
        result := YAxisMathVectorUtil_Package.calculate (This.getMagnitude.getUnscaled, This.getDirection);
        This.resultBasicDecimal := BasicDecimal_Package.Create (result);
   end calculate;

end org.allbinary.logic.math.vector.XAxisMathVector_Package;


