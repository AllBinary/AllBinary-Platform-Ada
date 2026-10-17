-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


package body org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package is

   procedure Initialize_Fields (This : in out ProgressEndListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ProgressEndListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ProgressEndListener_Access is
      This : constant ProgressEndListener_Access := new ProgressEndListener;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure onEndEvent (This : in out ProgressEndListener) is
   begin
        null;
   end onEndEvent;

begin
   null;
   instance := ProgressEndListener_Package.Create;

end org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;


