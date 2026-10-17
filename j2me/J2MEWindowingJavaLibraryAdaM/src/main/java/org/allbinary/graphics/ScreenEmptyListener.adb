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


package body org.allbinary.graphics.ScreenEmptyListener_Package is

   procedure Initialize_Fields (This : in out ScreenEmptyListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ScreenEmptyListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScreenEmptyListener_Access is
      This : constant ScreenEmptyListener_Access := new ScreenEmptyListener;
   begin
      ScreenEmptyListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onFullScreen (This : in out ScreenEmptyListener; isFullScreen : Boolean) is
   begin
        null;
   end onFullScreen;

   procedure onFullScreenDisplay (This : in out ScreenEmptyListener) is
   begin
        null;
   end onFullScreenDisplay;

end org.allbinary.graphics.ScreenEmptyListener_Package;


