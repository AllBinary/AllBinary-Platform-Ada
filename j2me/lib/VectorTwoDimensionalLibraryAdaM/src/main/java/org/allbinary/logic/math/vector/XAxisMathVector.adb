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


with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
with org.allbinary.logic.math.vector.YAxisMathVectorUtil_Package; use org.allbinary.logic.math.vector.YAxisMathVectorUtil_Package;

package body org.allbinary.logic.math.vector.XAxisMathVector_Package is

   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   function "=" (Left, Right : BasicDecimal_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   procedure Initialize_Fields (This : in out XAxisMathVector'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out XAxisMathVector'Class; magnitudeBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class; direction : Integer) is
      magnitudeBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (magnitudeBasicDecimal_Param);
   begin
        MathVector_Package.Initialize (This, magnitudeBasicDecimal, direction);
        XAxisMathVector'Class (This).calculate;
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
        result := YAxisMathVectorUtil_Package.calculate (XAxisMathVector'Class (This).getMagnitude.getUnscaled, XAxisMathVector'Class (This).getDirection);
        This.resultBasicDecimal := BasicDecimal_Package.Create (result);
   end calculate;

end org.allbinary.logic.math.vector.XAxisMathVector_Package;


