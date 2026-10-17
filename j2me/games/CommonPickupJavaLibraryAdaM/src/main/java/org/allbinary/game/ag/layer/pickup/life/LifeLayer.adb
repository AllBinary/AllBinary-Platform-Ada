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


package body org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package is

   procedure Initialize_Fields (This : in out LifeLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LifeLayer'Class) is
   begin
        AllBinaryLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 0, 0), ViewPosition_Package.getInstanceD);
   end Initialize;

   function Create return LifeLayer_Access is
      This : constant LifeLayer_Access := new LifeLayer;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure paint (This : in out LifeLayer; graphics : Graphics_Access) is
   begin
        null;
   end paint;

   procedure visit (This : in out LifeLayer; lifeInterface : Life_Access) is
   begin
        lifeInterface.add (Short_Integer (1));
   end visit;

end org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package;


