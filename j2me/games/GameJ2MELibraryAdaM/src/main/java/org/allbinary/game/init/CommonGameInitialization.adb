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


package body org.allbinary.game.init.CommonGameInitialization_Package is

   procedure Initialize_Fields (This : in out CommonGameInitialization'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out CommonGameInitialization'Class; resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer) is
   begin
        BaseGameInitialization_Package.Initialize (This, resourceInitializationArray, portion);
        Initialize_Fields (This);
   end Initialize;

   function Create (resourceInitializationArray : ResourceInitialization_Access_Array_Access; portion : Integer) return CommonGameInitialization_Access is
      This : constant CommonGameInitialization_Access := new CommonGameInitialization;
   begin
      CommonGameInitialization_Package.Initialize (This.all, resourceInitializationArray, portion);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out CommonGameInitialization; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; level : Integer) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
      progressCanvas : ProgressCanvas_Access;
   begin
        BaseGameInitialization (This).init (abeClientInformation, commandListener, level);
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        if (not (CommonGameInitialization'Class (This).isGameInitialized)) and then ((level) = (resourceLoadingLevelFactory.LOAD_ALL.getLevel)) then
            CommonGameInitialization'Class (This).setGameInitialized (True);
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            SmallIntegerSingletonFactory_Package.getInstance.init;
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Integers"));
            PointFactory_Package.getInstance.init;
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Points"));
            AngleFactory_Package.getInstance;
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Angles"));
            CommonGameInitialization'Class (This).initGame;
            This.resourceInitializationArray (This.GAME_RESOURCES).init;
        end if;
        BaseGameInitialization (This).resourceInitialization (level);
   end init;

   --  throws Exception
   procedure initGame (This : in out CommonGameInitialization) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end initGame;

end org.allbinary.game.init.CommonGameInitialization_Package;


