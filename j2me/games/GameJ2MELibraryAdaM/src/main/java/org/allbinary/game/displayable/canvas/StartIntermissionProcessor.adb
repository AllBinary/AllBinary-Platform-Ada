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


package body org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package is

   procedure Initialize_Fields (This : in out StartIntermissionProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.WAIT := 5000;
   end Initialize_Fields;


   procedure Initialize (This : in out StartIntermissionProcessor'Class; gameCanvas : AllBinaryGameCanvas_Access) is
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameCanvas := gameCanvas;
   end Initialize;

   function Create (gameCanvas : AllBinaryGameCanvas_Access) return StartIntermissionProcessor_Access is
      This : constant StartIntermissionProcessor_Access := new StartIntermissionProcessor;
   begin
      StartIntermissionProcessor_Package.Initialize (This.all, gameCanvas);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out StartIntermissionProcessor) is
   begin
        if This.gameCanvas.getStartIntermissionInterface.getTimeDelayHelper.isElapsedTNT (This.WAIT) then
            This.logUtil.putF (To_Unbounded_String ("Intermission End"), This'Unchecked_Access, This.commonStrings.PROCESS);
            This.gameCanvas.getStartIntermissionInterface.setEnabled (False);
        end if;
   end process;

end org.allbinary.game.displayable.canvas.StartIntermissionProcessor_Package;


