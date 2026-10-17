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


package body org.allbinary.game.physics.velocity.DragVelocityBehavior_Package is

   procedure Initialize_Fields (This : in out DragVelocityBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DragVelocityBehavior'Class) is
   begin
      VelocityBehaviorBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return DragVelocityBehavior_Access is
      This : constant DragVelocityBehavior_Access := new DragVelocityBehavior;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure reduce (This : in out DragVelocityBehavior; velocityProperties : BasicVelocityProperties_Access; nominator : Integer; denominator : Integer) is
      basicDecimal : BasicDecimal_Access;
   begin
        if (velocityProperties.getVelocityXBasicDecimalP.getUnscaled) /= (0) then
            basicDecimal := velocityProperties.getVelocityXBasicDecimalP;
            basicDecimal.multiplyint (nominator);
            basicDecimal.divideint (denominator);
        end if;
        if (velocityProperties.getVelocityYBasicDecimalP.getUnscaled) /= (0) then
            basicDecimal := velocityProperties.getVelocityYBasicDecimalP;
            basicDecimal.multiplyint (nominator);
            basicDecimal.divideint (denominator);
        end if;
   end reduce;

   procedure reduceX (This : in out DragVelocityBehavior; velocityProperties : BasicVelocityProperties_Access; nominator : Integer; denominator : Integer) is
      basicDecimal : BasicDecimal_Access;
   begin
        basicDecimal := velocityProperties.getVelocityXBasicDecimalP;
        if (basicDecimal.getUnscaled) /= (0) then
            basicDecimal.multiplyint (nominator);
            basicDecimal.divideint (denominator);
        end if;
   end reduceX;

   procedure reduceY (This : in out DragVelocityBehavior; velocityProperties : BasicVelocityProperties_Access; nominator : Integer; denominator : Integer) is
      basicDecimal : BasicDecimal_Access;
   begin
        if (velocityProperties.getVelocityYBasicDecimalP.getUnscaled) /= (0) then
            basicDecimal := velocityProperties.getVelocityYBasicDecimalP;
            basicDecimal.multiplyint (nominator);
            basicDecimal.divideint (denominator);
        end if;
   end reduceY;

begin
   null;
   instance := DragVelocityBehavior_Package.Create;

end org.allbinary.game.physics.velocity.DragVelocityBehavior_Package;


