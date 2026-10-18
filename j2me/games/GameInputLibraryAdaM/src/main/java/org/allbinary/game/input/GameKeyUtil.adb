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

package body org.allbinary.game.input.GameKeyUtil_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   procedure Initialize_Fields (This : in out GameKeyUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameKeyUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameKeyUtil_Access is
      This : constant GameKeyUtil_Access := new GameKeyUtil;
   begin
      GameKeyUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function isDirectionKey (This : in out GameKeyUtil; key : Integer) return Boolean is
   begin
        if ((((key) = (Canvas_Package.UP)) or else ((key) = (Canvas_Package.DOWN))) or else ((key) = (Canvas_Package.LEFT))) or else ((key) = (Canvas_Package.RIGHT)) then
            return True;
        else
            return False;
        end if;
   end isDirectionKey;

   function getInstance return GameKeyUtil_Access is
   begin
        return GameKeyUtil_Package.instance;
   end getInstance;

   procedure isDirectionKey (This : in out GameKeyUtil; key : Integer) is
      Java_Result : constant Boolean := GameKeyUtil'Class (This).isDirectionKey (key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDirectionKey;

begin
   null;
   instance := GameKeyUtil_Package.Create;

end org.allbinary.game.input.GameKeyUtil_Package;


