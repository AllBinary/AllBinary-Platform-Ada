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


with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.game.physics.acceleration.GravityUtil_Package; use org.allbinary.game.physics.acceleration.GravityUtil_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;
with org.allbinary.physics.movement.Movement_Package;
with org.allbinary.physics.movement.MovementInterface_Package;

package body org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package is

   package VelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.VelocityProperties_Package;
   subtype AllBinaryGameLayer_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access;
   function "=" (Left, Right : AllBinaryGameLayer_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype AllBinaryGameLayer_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype AllBinaryGameLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype AllBinaryGameLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype AllBinaryGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayer_Package_References.AllBinaryGameLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayer_Package_References."=";
   subtype GravityUtil_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access;
   function "=" (Left, Right : GravityUtil_Access) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
   subtype GravityUtil_Access_Array is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array;
   function "=" (Left, Right : GravityUtil_Access_Array) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
   subtype GravityUtil_Access_Array_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access;
   function "=" (Left, Right : GravityUtil_Access_Array_Access) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
   subtype GravityUtil_Access_Array_Access_Array is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GravityUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
   subtype GravityUtil_Access_Array_Access_Array_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GravityUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   function "=" (Left, Right : BasicDecimal_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   procedure Initialize_Fields (This : in out BasicGravityConstantVelocityMovement'Class) is
   begin
      null;
      This.gravityUtil := GravityUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGravityConstantVelocityMovement'Class; speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      speedBasicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (speedBasicDecimal_Param);
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, speedBasicDecimal, VelocityProperties_Package.Create (Integer (speedBasicDecimal.getUnscaled), Integer (speedBasicDecimal.getUnscaled)));
        Initialize_Fields (This);
   end Initialize;

   function Create (speedBasicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) return BasicGravityConstantVelocityMovement_Access is
      This : constant BasicGravityConstantVelocityMovement_Access := new BasicGravityConstantVelocityMovement;
   begin
      BasicGravityConstantVelocityMovement_Package.Initialize (This.all, speedBasicDecimal_Param);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out BasicGravityConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      layer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
   begin
        BasicConstantVelocityMovement (This).process (layer);
        This.gravityUtil.process (BasicGravityConstantVelocityMovement'Class (This).getVelocityProperties, This.gravityUtil.GAME_GRAVITY_VELOCITY);
   end process;

end org.allbinary.physics.movement.BasicGravityConstantVelocityMovement_Package;


