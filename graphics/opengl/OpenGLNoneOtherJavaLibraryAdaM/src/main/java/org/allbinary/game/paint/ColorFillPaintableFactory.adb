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


package body org.allbinary.game.paint.ColorFillPaintableFactory_Package is

   procedure Initialize_Fields (This : in out ColorFillPaintableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ColorFillPaintableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ColorFillPaintableFactory_Access is
      This : constant ColorFillPaintableFactory_Access := new ColorFillPaintableFactory;
   begin
      ColorFillPaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ColorFillPaintableFactory_Access is
   begin
        return ColorFillPaintableFactory_Package.instance;
   end getInstance;

   function getInstance (This : in out ColorFillPaintableFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class; forThreedCanvas : Boolean) return ColorFillBasePaintable_Access is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      operatingSystem : GenericOperatingSystem_Access;
   begin
        operatingSystem := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
        if operatingSystem.isOverScan then
            return OverScanColorFillPaintable_Package.Create (basicColor);
        else
            return ColorFillPaintable_Package.Create (basicColor);
        end if;
   end getInstance;

   procedure getInstance (This : in out ColorFillPaintableFactory; basicColor_Param : access BasicColor_Package.BasicColor'Class; forThreedCanvas : Boolean) is
      Java_Result : constant ColorFillBasePaintable_Access := ColorFillPaintableFactory'Class (This).getInstance (basicColor_Param, forThreedCanvas);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ColorFillPaintableFactory_Package.Create;

end org.allbinary.game.paint.ColorFillPaintableFactory_Package;


