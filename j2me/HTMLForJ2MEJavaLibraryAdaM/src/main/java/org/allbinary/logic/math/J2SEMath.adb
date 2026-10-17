-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.logic.math.J2SEMath_Package is

   procedure Initialize_Fields (This : in out J2SEMath'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out J2SEMath'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return J2SEMath_Access is
      This : constant J2SEMath_Access := new J2SEMath;
   begin
      J2SEMath_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return J2SEMath_Access is
   begin
        return J2SEMath_Package.instance;
   end getInstance;

   function round (This : in out J2SEMath; value : Float) return Integer is
   begin
        return Long_Long_Integer (Long_Float'Rounding (value));
   end round;

   function abs_Id (This : in out J2SEMath; value : Float) return Float is
   begin
        return (if ((value) < (0.0)) then -(value) else value);
   end abs_Id;

   function absdouble (This : in out J2SEMath; value : Long_Float) return Long_Float is
   begin
        return (if ((value) < (0.0)) then -(value) else value);
   end absdouble;

   procedure round (This : in out J2SEMath; value : Float) is
      Java_Result : constant Integer := J2SEMath'Class (This).round (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end round;

   procedure abs_Id (This : in out J2SEMath; value : Float) is
      Java_Result : constant Float := J2SEMath'Class (This).abs_Id (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end abs_Id;

   procedure absdouble (This : in out J2SEMath; value : Long_Float) is
      Java_Result : constant Long_Float := J2SEMath'Class (This).absdouble (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end absdouble;

begin
   null;
   instance := J2SEMath_Package.Create;

end org.allbinary.logic.math.J2SEMath_Package;


