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
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package; use org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.physics.movement.BasicConstantVelocityMovement_Package;
with org.allbinary.physics.movement.Movement_Package;
with org.allbinary.physics.movement.MovementInterface_Package;

package body org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package is

   package BasicVelocityProperties_Package renames Standard.org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
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
   procedure Initialize_Fields (This : in out NoBasicConstantVelocityMovement'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoBasicConstantVelocityMovement'Class) is
   begin
        BasicConstantVelocityMovement_Package.Initialize (This, BasicDecimal_Package.ZERO_BIGDECIMAL, BasicVelocityProperties_Package.Create);
   end Initialize;

   function Create return NoBasicConstantVelocityMovement_Access is
      This : constant NoBasicConstantVelocityMovement_Access := new NoBasicConstantVelocityMovement;
   begin
      NoBasicConstantVelocityMovement_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out NoBasicConstantVelocityMovement; layer_Param : access AllBinaryGameLayer_Package.AllBinaryGameLayer'Class) is
      layer : constant AllBinaryGameLayer_Access := AllBinaryGameLayer_Access (layer_Param);
   begin
        null;
   end process;

end org.allbinary.physics.movement.NoBasicConstantVelocityMovement_Package;


