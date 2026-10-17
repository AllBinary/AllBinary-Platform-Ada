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


package body org.allbinary.game.ag.layer.pickup.health.HealLayer_Package is

   procedure Initialize_Fields (This : in out HealLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out HealLayer'Class) is
   begin
        AllBinaryLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 0, 0), ViewPosition_Package.getInstanceD);
   end Initialize;

   function Create return HealLayer_Access is
      This : constant HealLayer_Access := new HealLayer;
   begin
      HealLayer_Package.Initialize (This.all);
      return This;
   end Create;

   procedure paint (This : in out HealLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paint;

   procedure visit (This : in out HealLayer; healthInterface_Param : access HealthInterface_Package.HealthInterface'Class) is
      healthInterface : constant HealthInterface_Access := HealthInterface_Access (healthInterface_Param);
   begin
        if healthInterface.isAlive then
            healthInterface.healMax;
        else
            This.logUtil.putF (To_Unbounded_String ("Heal attempt on dead: Does not currently occur"), HealLayer_Access'(This'Unchecked_Access), To_Unbounded_String ("visit"));
        end if;
   end visit;

end org.allbinary.game.ag.layer.pickup.health.HealLayer_Package;


