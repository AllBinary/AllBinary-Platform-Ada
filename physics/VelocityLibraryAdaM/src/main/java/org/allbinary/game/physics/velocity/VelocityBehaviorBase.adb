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


with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References;
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

package body org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package is

   subtype BasicVelocityProperties_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   subtype BasicVelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References.BasicVelocityProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicVelocityProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.BasicVelocityProperties_Package_References."=";
   procedure Initialize_Fields (This : in out VelocityBehaviorBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out VelocityBehaviorBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return VelocityBehaviorBase_Access is
      This : constant VelocityBehaviorBase_Access := new VelocityBehaviorBase;
   begin
      VelocityBehaviorBase_Package.Initialize (This.all);
      return This;
   end Create;


   procedure reduce (This : in out VelocityBehaviorBase; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
   begin
        null;
   end reduce;

   procedure reduceX (This : in out VelocityBehaviorBase; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
   begin
        null;
   end reduceX;

   procedure reduceY (This : in out VelocityBehaviorBase; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
   begin
        null;
   end reduceY;

end org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package;


