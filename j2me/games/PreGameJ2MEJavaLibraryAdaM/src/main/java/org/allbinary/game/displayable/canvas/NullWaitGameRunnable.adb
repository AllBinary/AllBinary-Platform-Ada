-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package is

   procedure Initialize_Fields (This : in out NullWaitGameRunnable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullWaitGameRunnable'Class) is
   begin
      GameRunnable_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NullWaitGameRunnable_Access is
      This : constant NullWaitGameRunnable_Access := new NullWaitGameRunnable;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameRunnable_Access is
   begin
        return NullWaitGameRunnable_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant GameRunnable_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullWaitGameRunnable_Package.Create;

end org.allbinary.game.displayable.canvas.NullWaitGameRunnable_Package;


