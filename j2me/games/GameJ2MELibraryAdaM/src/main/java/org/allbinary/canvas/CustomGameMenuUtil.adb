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


package body org.allbinary.canvas.CustomGameMenuUtil_Package is

   procedure Initialize_Fields (This : in out CustomGameMenuUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CustomGameMenuUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CustomGameMenuUtil_Access is
      This : constant CustomGameMenuUtil_Access := new CustomGameMenuUtil;
   begin
      CustomGameMenuUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure add (canvas_Param : access MyCanvas_Package.MyCanvas'Class) is
      canvas : constant MyCanvas_Access := MyCanvas_Access (canvas_Param);
      gameCommandsFactory : GameCommandsFactory_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        if AppletUtil_Package.isAppletLoader (canvas) then
            null;
        elsif J2MEUtil_Package.isHTML then
            null;
        else
            canvas.addCommand (gameCommandsFactory.EXIT_COMMAND);
        end if;
   end add;

end org.allbinary.canvas.CustomGameMenuUtil_Package;


