-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.math.Angle_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.physics.velocity.BasicVelocityInterface_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NoDecimalTrigTable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.physics.velocity.NoDragVelocityBehavior_Package is

   procedure Initialize_Fields (This : in out NoDragVelocityBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoDragVelocityBehavior'Class) is
   begin
      VelocityBehaviorBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NoDragVelocityBehavior_Access is
      This : constant NoDragVelocityBehavior_Access := new NoDragVelocityBehavior;
   begin
      NoDragVelocityBehavior_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   instance := NoDragVelocityBehavior_Package.Create;

end org.allbinary.game.physics.velocity.NoDragVelocityBehavior_Package;


