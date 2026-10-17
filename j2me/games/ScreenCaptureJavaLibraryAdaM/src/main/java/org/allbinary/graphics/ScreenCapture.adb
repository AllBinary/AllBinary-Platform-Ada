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


package body org.allbinary.graphics.ScreenCapture_Package is

   procedure Initialize_Fields (This : in out ScreenCapture'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ScreenCapture'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScreenCapture_Access is
      This : constant ScreenCapture_Access := new ScreenCapture;
   begin
      ScreenCapture_Package.Initialize (This.all);
      return This;
   end Create;


   procedure saveFrame (This : in out ScreenCapture) is
   begin
        null;
   end saveFrame;

   procedure startRecording (This : in out ScreenCapture) is
   begin
        null;
   end startRecording;

   procedure endRecording (This : in out ScreenCapture) is
   begin
        null;
   end endRecording;

end org.allbinary.graphics.ScreenCapture_Package;


