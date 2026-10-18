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


with org.allbinary.logic.math.ScaleFactorFactory_Package; use org.allbinary.logic.math.ScaleFactorFactory_Package;

package body org.allbinary.logic.math.BasicDecimal_Package is

   procedure Initialize_Fields (This : in out BasicDecimal'Class) is
   begin
      null;
      
      This.scaled := 0;
      This.factor := ScaleFactorFactory_Package.getInstance.DEFAULT_SCALE_FACTOR;
      This.factorValue := ScaleFactorFactory_Package.getInstance.DEFAULT_SCALE_VALUE;
   end Initialize_Fields;


   function createBigDecimal (bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) return BasicDecimal_Access is
      bigDecimal : constant BasicDecimal_Access := BasicDecimal_Access (bigDecimal_Param);
   begin
        return BasicDecimal_Package.Create (bigDecimal.getUnscaled);
   end createBigDecimal;

   procedure Initialize (This : in out BasicDecimal'Class; units : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.units := units;
        BasicDecimal'Class (This).updateScaled;
   end Initialize;

   function Create (units : Long_Long_Integer) return BasicDecimal_Access is
      This : constant BasicDecimal_Access := new BasicDecimal;
   begin
      BasicDecimal_Package.Initialize (This.all, units);
      return This;
   end Create;

   procedure setint (This : in out BasicDecimal; value : Integer) is
   begin
        This.units := Long_Long_Integer (value);
        BasicDecimal'Class (This).updateScaled;
   end setint;

   procedure setlong (This : in out BasicDecimal; value : Long_Long_Integer) is
   begin
        This.units := value;
        BasicDecimal'Class (This).updateScaled;
   end setlong;

   procedure set (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      bigDecimal : constant BasicDecimal_Access := BasicDecimal_Access (bigDecimal_Param);
   begin
        This.units := bigDecimal.getUnscaled;
        BasicDecimal'Class (This).updateScaled;
   end set;

   procedure addint (This : in out BasicDecimal; value : Integer) is
   begin
        This.units := (This.units) + (Long_Long_Integer (value));
        BasicDecimal'Class (This).updateScaled;
   end addint;

   procedure addlong (This : in out BasicDecimal; value : Long_Long_Integer) is
   begin
        This.units := (This.units) + (value);
        BasicDecimal'Class (This).updateScaled;
   end addlong;

   procedure add (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      bigDecimal : constant BasicDecimal_Access := BasicDecimal_Access (bigDecimal_Param);
   begin
        This.units := (This.units) + (bigDecimal.getUnscaled);
        BasicDecimal'Class (This).updateScaled;
   end add;

   procedure subtractint (This : in out BasicDecimal; value : Integer) is
   begin
        This.units := (This.units) - (Long_Long_Integer (value));
        BasicDecimal'Class (This).updateScaled;
   end subtractint;

   procedure subtractlong (This : in out BasicDecimal; value : Long_Long_Integer) is
   begin
        This.units := (This.units) - (value);
        BasicDecimal'Class (This).updateScaled;
   end subtractlong;

   procedure subtract (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      bigDecimal : constant BasicDecimal_Access := BasicDecimal_Access (bigDecimal_Param);
   begin
        This.units := (This.units) - (bigDecimal.getUnscaled);
        BasicDecimal'Class (This).updateScaled;
   end subtract;

   procedure multiplyint (This : in out BasicDecimal; value : Integer) is
   begin
        This.units := (This.units) * (Long_Long_Integer (value));
        BasicDecimal'Class (This).updateScaled;
   end multiplyint;

   procedure multiplylong (This : in out BasicDecimal; value : Long_Long_Integer) is
   begin
        This.units := (This.units) * (value);
        BasicDecimal'Class (This).updateScaled;
   end multiplylong;

   procedure multiply (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      bigDecimal : constant BasicDecimal_Access := BasicDecimal_Access (bigDecimal_Param);
   begin
        This.units := (This.units) * (bigDecimal.getUnscaled);
        BasicDecimal'Class (This).updateScaled;
   end multiply;

   procedure divideint (This : in out BasicDecimal; value : Integer) is
   begin
        This.units := (This.units) / (Long_Long_Integer (value));
        BasicDecimal'Class (This).updateScaled;
   end divideint;

   procedure dividelong (This : in out BasicDecimal; value : Long_Long_Integer) is
   begin
        This.units := (This.units) / (value);
        BasicDecimal'Class (This).updateScaled;
   end dividelong;

   procedure divide (This : in out BasicDecimal; bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      bigDecimal : constant BasicDecimal_Access := BasicDecimal_Access (bigDecimal_Param);
   begin
        This.units := (This.units) / (bigDecimal.getUnscaled);
        BasicDecimal'Class (This).updateScaled;
   end divide;

   function getUnscaled (This : in out BasicDecimal) return Long_Long_Integer is
   begin
        return This.units;
   end getUnscaled;

   procedure updateScaled (This : in out BasicDecimal) is
   begin
        This.scaled := Integer (((This.units) / (Long_Long_Integer (This.factorValue))));
   end updateScaled;

   function getScaled (This : in out BasicDecimal) return Integer is
   begin
        return This.scaled;
   end getScaled;

   function toString (This : in out BasicDecimal) return Unbounded_String is
   begin
        return To_Unbounded_String (Java_Image (This.units));
   end toString;

   function getScaledFactor (This : in out BasicDecimal) return Integer is
   begin
        return This.factor;
   end getScaledFactor;

   function getScaledFactorValue (This : in out BasicDecimal) return Integer is
   begin
        return This.factorValue;
   end getScaledFactorValue;

   procedure createBigDecimal (bigDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      Java_Result : constant BasicDecimal_Access := createBigDecimal (bigDecimal_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBigDecimal;

begin
   null;
   ZERO_BIGDECIMAL := BasicDecimal_Package.Create (0);

end org.allbinary.logic.math.BasicDecimal_Package;


