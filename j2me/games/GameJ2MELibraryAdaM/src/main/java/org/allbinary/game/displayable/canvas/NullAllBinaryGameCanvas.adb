-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package is

   procedure Initialize_Fields (This : in out NullAllBinaryGameCanvas'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullAllBinaryGameCanvas'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullAllBinaryGameCanvas_Access is
      This : constant NullAllBinaryGameCanvas_Access := new NullAllBinaryGameCanvas;
   begin
      NullAllBinaryGameCanvas_Package.Initialize (This.all);
      return This;
   end Create;


   function getLayerManager (This : in out NullAllBinaryGameCanvas) return AllBinaryGameLayerManager_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getLayerManager;

   procedure addCommand (This : in out NullAllBinaryGameCanvas; cmd_Param : access Command_Package.Command'Class) is
      cmd : constant Command_Access := Command_Access (cmd_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end addCommand;

   function getHeight (This : in out NullAllBinaryGameCanvas) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getHeight;

   function getWidth (This : in out NullAllBinaryGameCanvas) return Integer is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getWidth;

   procedure removeCommand (This : in out NullAllBinaryGameCanvas; cmd_Param : access Command_Package.Command'Class) is
      cmd : constant Command_Access := Command_Access (cmd_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end removeCommand;

   procedure setCommandListener (This : in out NullAllBinaryGameCanvas; l_Param : access CommandListener_Package.CommandListener'Class) is
      l : constant CommandListener_Access := CommandListener_Access (l_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end setCommandListener;

begin
   null;
   NULL_ALLBINARY_GAME_CANVAS := NullAllBinaryGameCanvas_Package.Create;

end org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas_Package;


