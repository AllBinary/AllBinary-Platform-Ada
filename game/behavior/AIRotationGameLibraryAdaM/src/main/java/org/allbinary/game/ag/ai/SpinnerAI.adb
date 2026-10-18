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

package body org.allbinary.game.ag.ai.SpinnerAI_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   procedure Initialize_Fields (This : in out SpinnerAI'Class) is
   begin
      null;
      This.isEven := False;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SpinnerAI'Class; direction : Integer_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        BasicAI_Package.Initialize (This, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        This.direction := direction;
   end Initialize;

   function Create (direction : Integer_Array_Access; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return SpinnerAI_Access is
      This : constant SpinnerAI_Access := new SpinnerAI;
   begin
      SpinnerAI_Package.Initialize (This.all, direction, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processAI (This : in out SpinnerAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        if This.isEven then
            BasicAI (This).processKeyAI (This.direction (0));
            This.isEven := False;
        else
            BasicAI (This).processKeyAI (Canvas_Package.KEY_NUM1);
            This.isEven := True;
        end if;
   end processAI;

end org.allbinary.game.ag.ai.SpinnerAI_Package;


