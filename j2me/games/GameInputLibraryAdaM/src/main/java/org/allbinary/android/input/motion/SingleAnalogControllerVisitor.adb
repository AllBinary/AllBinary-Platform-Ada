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


package body org.allbinary.android.input.motion.SingleAnalogControllerVisitor_Package is

   procedure Initialize_Fields (This : in out SingleAnalogControllerVisitor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SingleAnalogControllerVisitor'Class; playerInputId : Integer) is
   begin
      AnalogControllerVisitor_Package.Initialize (This);
      Initialize_Fields (This);
        This.playerInputId := playerInputId;
   end Initialize;

   function Create (playerInputId : Integer) return SingleAnalogControllerVisitor_Access is
      This : constant SingleAnalogControllerVisitor_Access := new SingleAnalogControllerVisitor;
   begin
      SingleAnalogControllerVisitor_Package.Initialize (This.all, playerInputId);
      return This;
   end Create;

   procedure process (This : in out SingleAnalogControllerVisitor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; analogLocationInputProcessor_Param : access AnalogLocationInputProcessor'Class) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      analogLocationInputProcessor : AnalogLocationInputProcessor_Access := AnalogLocationInputProcessor_Access (analogLocationInputProcessor_Param);
      analogLocationInput : AnalogLocationInput_Access;
   begin
        analogLocationInput := AnalogLocationInputFactory_Package.getInstance.getInstanceForPlayer (This.playerInputId);
        analogLocationInputProcessor.process (allbinaryLayerManager, analogLocationInput);
   end process;

end org.allbinary.android.input.motion.SingleAnalogControllerVisitor_Package;


