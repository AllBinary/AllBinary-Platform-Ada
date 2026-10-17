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


package body org.allbinary.game.layer.pickup.IconLayer_Package is

   procedure Initialize_Fields (This : in out IconLayer'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out IconLayer'Class; animationInterface : Animation_Access; width : Integer; height : Integer) is
   begin
        AllBinaryLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, width, height), ViewPosition_Package.getInstanceD);
        Initialize_Fields (This);
        This.animationInterface := animationInterface;
   end Initialize;

   function Create (animationInterface : Animation_Access; width : Integer; height : Integer) return IconLayer_Access is
      This : constant IconLayer_Access := new IconLayer;
   begin
      IconLayer_Package.Initialize (This.all, animationInterface, width, height);
      return This;
   end Create;

   procedure paint (This : in out IconLayer; graphics : Graphics_Access) is
   begin
        This.animationInterface.paintXY (graphics, This.x, This.y);
   end paint;

   procedure paintThreed (This : in out IconLayer; graphics : Graphics_Access) is
   begin
        This.animationInterface.paintThreedXYZ (graphics, This.x, This.y, This.z);
   end paintThreed;

   function getAnimationInterface (This : in out IconLayer) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

begin
   null;
   NULL_ICON_LAYER := IconLayer_Package.Create (NullAnimationFactory_Package.getFactoryInstance.getInstance (0), 0, 0);

end org.allbinary.game.layer.pickup.IconLayer_Package;


