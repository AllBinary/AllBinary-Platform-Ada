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


with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with jsinterop.annotations.JsConstructor_Package; use jsinterop.annotations.JsConstructor_Package;

package body org.allbinary.math.Angle_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   procedure Initialize_Fields (This : in out Angle'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Angle'Class; angle_Var : Short_Integer) is
   begin
      Initialize_Fields (This);
        This.value := angle_Var;
   end Initialize;

   function Create (angle_Var : Short_Integer) return Angle_Access is
      This : constant Angle_Access := new Angle;
   begin
      Angle_Package.Initialize (This.all, angle_Var);
      return This;
   end Create;

   function getValue (This : in out Angle) return Short_Integer is
   begin
        return This.value;
   end getValue;

end org.allbinary.math.Angle_Package;


