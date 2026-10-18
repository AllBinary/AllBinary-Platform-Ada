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


with org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package; use org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;

package body org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package is

   package VelocityInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface_Package;
   procedure Initialize_Fields (This : in out ReverseVelocityBoundsVisitor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out ReverseVelocityBoundsVisitor'Class; layerInterface_Param : access LayerInterface_Package.LayerInterface'Class) is
      layerInterface : constant LayerInterface_Access := LayerInterface_Access (layerInterface_Param);
      velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface_Access;
   begin
      Initialize_Fields (This);
        This.layerInterface := layerInterface;
        velocityInterfaceCompositeInterface := VelocityInterfaceCompositeInterface_Access (layerInterface);
        This.velocityInterface := VelocityInterface_Access (velocityInterfaceCompositeInterface.getVelocityProperties);
   end Initialize;

   function Create (layerInterface_Param : access LayerInterface_Package.LayerInterface'Class) return ReverseVelocityBoundsVisitor_Access is
      This : constant ReverseVelocityBoundsVisitor_Access := new ReverseVelocityBoundsVisitor;
   begin
      ReverseVelocityBoundsVisitor_Package.Initialize (This.all, layerInterface_Param);
      return This;
   end Create;

   function getX (This : in out ReverseVelocityBoundsVisitor) return Integer is
   begin
        return This.layerInterface.getXP;
   end getX;

   function getY (This : in out ReverseVelocityBoundsVisitor) return Integer is
   begin
        return This.layerInterface.getYP;
   end getY;

   procedure minX (This : in out ReverseVelocityBoundsVisitor) is
   begin
        if (This.velocityInterface.getVelocityXBasicDecimalP.getUnscaled) < (0) then
            This.velocityInterface.getVelocityXBasicDecimalP.multiplyint (-(1));
        end if;
   end minX;

   procedure maxX (This : in out ReverseVelocityBoundsVisitor) is
   begin
        if (This.velocityInterface.getVelocityXBasicDecimalP.getUnscaled) > (0) then
            This.velocityInterface.getVelocityXBasicDecimalP.multiplyint (-(1));
        end if;
   end maxX;

   procedure minY (This : in out ReverseVelocityBoundsVisitor) is
   begin
        if (This.velocityInterface.getVelocityYBasicDecimalP.getUnscaled) < (0) then
            This.velocityInterface.getVelocityYBasicDecimalP.multiplyint (-(1));
        end if;
   end minY;

   procedure maxY (This : in out ReverseVelocityBoundsVisitor) is
   begin
        if (This.velocityInterface.getVelocityYBasicDecimalP.getUnscaled) > (0) then
            This.velocityInterface.getVelocityYBasicDecimalP.multiplyint (-(1));
        end if;
   end maxY;

end org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor_Package;


