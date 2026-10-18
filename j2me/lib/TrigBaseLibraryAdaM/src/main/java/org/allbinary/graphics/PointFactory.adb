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
with jsinterop.annotations.JsProperty_Package; use jsinterop.annotations.JsProperty_Package;

package body org.allbinary.graphics.PointFactory_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;
   package JsConstructor_Package renames Standard.jsinterop.annotations.JsConstructor_Package;
   package JsProperty_Package renames Standard.jsinterop.annotations.JsProperty_Package;
   procedure Initialize_Fields (This : in out PointFactory'Class) is
   begin
      null;
      This.ZERO_ZERO := PointFactory'Class (This).createXYZ (0, 0, 0);
   end Initialize_Fields;


   function getInstance return PointFactory_Access is
   begin
        return PointFactory_Package.instance;
   end getInstance;

   procedure init (This : in out PointFactory) is
   begin
        null;
   end init;

   procedure Initialize (This : in out PointFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PointFactory_Access is
      This : constant PointFactory_Access := new PointFactory;
   begin
      PointFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function createXY (This : in out PointFactory; x : Integer; y : Integer) return GPoint_Access is
   begin
        return GPoint_Package.Create (x, y, 0);
   end createXY;

   function createXYZ (This : in out PointFactory; x : Integer; y : Integer; z : Integer) return GPoint_Access is
   begin
        return GPoint_Package.Create (x, y, z);
   end createXYZ;

   procedure createXY (This : in out PointFactory; x : Integer; y : Integer) is
      Java_Result : constant GPoint_Access := PointFactory'Class (This).createXY (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createXY;

   procedure createXYZ (This : in out PointFactory; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant GPoint_Access := PointFactory'Class (This).createXYZ (x, y, z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createXYZ;

begin
   null;
   instance := PointFactory_Package.Create;

end org.allbinary.graphics.PointFactory_Package;


