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


with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package body org.allbinary.game.ag.ai.ScrollOverAtEndAI_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
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
   procedure Initialize_Fields (This : in out ScrollOverAtEndAI'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollOverAtEndAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
   end Initialize;

   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ScrollOverAtEndAI_Access is
      This : constant ScrollOverAtEndAI_Access := new ScrollOverAtEndAI;
   begin
      ScrollOverAtEndAI_Package.Initialize (This.all, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out ScrollOverAtEndAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      ownerLayerInterface : AllBinaryLayer_Access;
      x : Integer;
      y : Integer;
      width : Integer;
      height : Integer;
      displayInfo : DisplayInfoSingleton_Access;
   begin
        ownerLayerInterface := ScrollOverAtEndAI'Class (This).getOwnerLayerInterface;
        x := ownerLayerInterface.getXP;
        y := ownerLayerInterface.getYP;
        width := ownerLayerInterface.getWidth;
        height := ownerLayerInterface.getHeight;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if (x) > (displayInfo.getLastWidth) then
            ownerLayerInterface.setPosition (0, y, ownerLayerInterface.getZP);
        end if;
        if (y) > (displayInfo.getLastHeight) then
            ownerLayerInterface.setPosition (x, 0, ownerLayerInterface.getZP);
        end if;
        if (x) < (-(width)) then
            ownerLayerInterface.setPosition ((displayInfo.getLastWidth) - (width), y, ownerLayerInterface.getZP);
        end if;
        if (y) < (-(height)) then
            ownerLayerInterface.setPosition (x, (displayInfo.getLastHeight) - (height), ownerLayerInterface.getZP);
        end if;
   end processAI;

end org.allbinary.game.ag.ai.ScrollOverAtEndAI_Package;


