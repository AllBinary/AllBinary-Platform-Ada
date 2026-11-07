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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.ag.ai.InputProbability_Package; use org.allbinary.game.ag.ai.InputProbability_Package;
with org.allbinary.game.ag.ai.InputProbability_Package_References;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   subtype InputProbability_Access is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access;
   function "=" (Left, Right : InputProbability_Access) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";
   subtype InputProbability_Access_Array is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array;
   function "=" (Left, Right : InputProbability_Access_Array) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";
   subtype InputProbability_Access_Array_Access is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array_Access;
   function "=" (Left, Right : InputProbability_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";
   subtype InputProbability_Access_Array_Access_Array is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array_Access_Array;
   function "=" (Left, Right : InputProbability_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";
   subtype InputProbability_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.InputProbability_Package_References.InputProbability_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputProbability_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.InputProbability_Package_References."=";
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
   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   function "=" (Left, Right : MyRandomFactory_Access) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   function "=" (Left, Right : MyRandomFactory_Access_Array) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   function "=" (Left, Right : MyRandomFactory_Access_Array_Access) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MyRandomFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyRandomFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.rand.MyRandomFactory_Package_References."=";
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
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   function "=" (Left, Right : Visitor_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Visitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.visitor.Visitor_Package_References."=";
   procedure Initialize_Fields (This : in out BasicRandomAI'Class) is
   begin
      null;
      This.i_random := 0;
      
      
      This.keyArray := new Integer_Array'(Canvas_Package.UP, Canvas_Package.DOWN, Canvas_Package.LEFT, Canvas_Package.RIGHT, Canvas_Package.KEY_NUM1, Canvas_Package.KEY_NUM7, Canvas_Package.KEY_NUM9);
      This.myRandomFactory := MyRandomFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicRandomAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class; inputProbability_Param : access InputProbability_Package.InputProbability'Class; visitor_Param : access Visitor_Package.Visitor'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
      inputProbability : constant InputProbability_Access := InputProbability_Access (inputProbability_Param);
      visitor : constant Visitor_Access := Visitor_Access (visitor_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.inputProbability := inputProbability;
        This.visitor := visitor;
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class; inputProbability_Param : access InputProbability_Package.InputProbability'Class; visitor_Param : access Visitor_Package.Visitor'Class) return BasicRandomAI_Access is
      This : constant BasicRandomAI_Access := new BasicRandomAI;
   begin
      BasicRandomAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param, inputProbability_Param, visitor_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out BasicRandomAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      repeat : Boolean;
      repeatLikelyhoodIntegerArray : Integer_Array_Access;
      likelyhoodIntegerArray : Integer_Array_Access_Array_Access;
      size : Integer;
      likelyhoodIntegerKeyArray : Integer_Array_Access;
      key : Integer;
      index : Integer;
   begin
        if This.inputProbability.getTimeDelayHelper.isTime (GameTickTimeDelayHelperFactory_Package.getInstance.startTime) then
            This.i_random := This.myRandomFactory.getAbsoluteNextInt (This.inputProbability.getMax);
            repeat := False;
            repeatLikelyhoodIntegerArray := This.inputProbability.getRepeatLikelyhoodIntegerArray;
            if ((BasicRandomAI'Class (This).getLastKey) /= (-(1))) and then ((Integer (repeatLikelyhoodIntegerArray (BasicRandomAI'Class (This).getLastKey))) >= (This.i_random)) then
                repeat := True;
            end if;
            if not (repeat) then
                likelyhoodIntegerArray := This.inputProbability.getLikelyhoodIntegerArray;
                This.i_random := This.myRandomFactory.getAbsoluteNextInt (This.inputProbability.getMax);
                size := This.keyArray'Length;
                likelyhoodIntegerKeyArray := null;
                for index in 0 .. (size) - 1 loop
                    key := This.keyArray (index);
                    likelyhoodIntegerKeyArray := likelyhoodIntegerArray (key);
                    if ((likelyhoodIntegerArray'Length) >= (key)) and then ((likelyhoodIntegerKeyArray (0)) /= (0)) then
                        if ((This.i_random) >= (Integer (likelyhoodIntegerKeyArray (0)))) and then ((This.i_random) < (Integer (likelyhoodIntegerKeyArray (1)))) then
                            BasicRandomAI'Class (This).setLastKey (key);
                            exit;
                        end if;
                    end if;
                end loop;
            end if;
            This.visitor.visit (BasicRandomAI_Access'(This'Unchecked_Access));
        end if;
   end processAI;

end org.allbinary.game.ag.ai.tactical.BasicRandomAI_Package;


