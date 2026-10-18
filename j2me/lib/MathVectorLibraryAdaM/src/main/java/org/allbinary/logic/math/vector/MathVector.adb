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



package body org.allbinary.logic.math.vector.MathVector_Package is

   procedure Initialize_Fields (This : in out MathVector'Class) is
   begin
      null;
      
      
      This.resultBasicDecimal := null;
   end Initialize_Fields;


   procedure Initialize (This : in out MathVector'Class; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer) is
      magnitudeBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (magnitudeBasicDecimal_Param);
   begin
      Initialize_Fields (This);
        This.magnitudeBasicDecimal := magnitudeBasicDecimal;
        This.direction := direction;
   end Initialize;

   function Create (magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer) return MathVector_Access is
      This : constant MathVector_Access := new MathVector;
   begin
      MathVector_Package.Initialize (This.all, magnitudeBasicDecimal_Param, direction);
      return This;
   end Create;

   function getMagnitude (This : in out MathVector) return BasicDecimal_Access is
   begin
        return This.magnitudeBasicDecimal;
   end getMagnitude;

   function getDirection (This : in out MathVector) return Integer is
   begin
        return This.direction;
   end getDirection;

   function getResult (This : in out MathVector) return BasicDecimal_Access is
   begin
        return This.resultBasicDecimal;
   end getResult;

end org.allbinary.logic.math.vector.MathVector_Package;


