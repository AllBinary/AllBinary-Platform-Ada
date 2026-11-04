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


with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.RotationAnimationInterface_Package; use org.allbinary.animation.RotationAnimationInterface_Package;
with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
with org.allbinary.game.ag.ai.tactical.LurchAI_Package; use org.allbinary.game.ag.ai.tactical.LurchAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.math.AngleIncrementInfo_Package; use org.allbinary.math.AngleIncrementInfo_Package;

package body org.allbinary.game.ag.ai.LurchRotationAI_Package is

   package RotationAnimationInterface_Package renames Standard.org.allbinary.animation.RotationAnimationInterface_Package;
   package RotationAnimationInterfaceCompositeInterface_Package renames Standard.org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
   package AngleIncrementInfo_Package renames Standard.org.allbinary.math.AngleIncrementInfo_Package;
   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   function "=" (Left, Right : IndexedAnimation_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   function "=" (Left, Right : IndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   function "=" (Left, Right : GameInput_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   procedure Initialize_Fields (This : in out LurchRotationAI'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LurchRotationAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
   begin
        LurchAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (LurchRotationAI'Class (This).getOwnerLayerInterface);
        This.rotationAnimationInterface := rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface;
        LurchRotationAI'Class (This).update;
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return LurchRotationAI_Access is
      This : constant LurchRotationAI_Access := new LurchRotationAI;
   begin
      LurchRotationAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   procedure reverse_Id (This : in out LurchRotationAI) is
   begin
        LurchAI (This).reverse_Id;
        LurchRotationAI'Class (This).update;
   end reverse_Id;

   procedure update (This : in out LurchRotationAI) is
      rotationAnimationInterface : RotationAnimationInterface_Access;
      angleIncrementInfo : AngleIncrementInfo_Access;
      rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface_Access;
   begin
        if (This.currentRelativeAngle) = (0) then
            rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
            angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
            rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (LurchRotationAI'Class (This).getOwnerLayerInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame (angleIncrementInfo.RIGHT_FRAME.intValue);
        elsif (This.currentRelativeAngle) = (180) then
            rotationAnimationInterface := RotationAnimationInterface_Access (This.rotationAnimationInterface);
            angleIncrementInfo := rotationAnimationInterface.getAngleInfoP.getAngleIncrementInfo;
            rotationAnimationInterfaceCompositeInterface := RotationAnimationInterfaceCompositeInterface_Access (LurchRotationAI'Class (This).getOwnerLayerInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame (angleIncrementInfo.LEFT_FRAME.intValue);
        end if;
   end update;

end org.allbinary.game.ag.ai.LurchRotationAI_Package;


