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


with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.game.physics.velocity.BasicVelocityInterface_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityBehaviorBase_Package;

package body org.allbinary.game.physics.velocity.DragVelocityBehavior_Package is

   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
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
      DragVelocityBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   procedure reduce (This : in out DragVelocityBehavior; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
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

   procedure reduceX (This : in out DragVelocityBehavior; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
      basicDecimal : BasicDecimal_Access;
   begin
        basicDecimal := velocityProperties.getVelocityXBasicDecimalP;
        if (basicDecimal.getUnscaled) /= (0) then
            basicDecimal.multiplyint (nominator);
            basicDecimal.divideint (denominator);
        end if;
   end reduceX;

   procedure reduceY (This : in out DragVelocityBehavior; velocityProperties_Param : access BasicVelocityProperties_Package.BasicVelocityProperties'Class; nominator : Integer; denominator : Integer) is
      velocityProperties : constant BasicVelocityProperties_Access := BasicVelocityProperties_Access (velocityProperties_Param);
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


