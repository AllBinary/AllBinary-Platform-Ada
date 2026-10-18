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


with org.allbinary.game.graphics.hud.BasicHudFactory_Package; use org.allbinary.game.graphics.hud.BasicHudFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package is

   package BasicHudFactory_Package renames Standard.org.allbinary.game.graphics.hud.BasicHudFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out NumberStringHudFactory'Class) is
   begin
      null;
      This.NULL_NUMBER_STRING_HUD := NumberStringHudFactory'Class (This).createHud;
   end Initialize_Fields;

   procedure Initialize (This : in out NumberStringHudFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NumberStringHudFactory_Access is
      This : constant NumberStringHudFactory_Access := new NumberStringHudFactory;
   begin
      NumberStringHudFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return NumberStringHudFactory_Access is
   begin
        if (NumberStringHudFactory_Package.instance) = (NullUtil_Package.getInstance) then
            NumberStringHudFactory_Package.instance := NumberStringHudFactory_Package.Create;
        end if;
        return NumberStringHudFactory_Access (NumberStringHudFactory_Package.instance);
   end getInstance;

   function createHud (This : in out NumberStringHudFactory) return NumberStringHud_Access is
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            return NumberStringHud_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, 9, BasicHudFactory_Package.getInstance.ABSOLUTE, 1, 0, BasicColorFactory_Package.getInstance.NULL_COLOR);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, NumberStringHudFactory_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
            Java_Throw (Java_New_Exception ("RuntimeException"));
                end;
        end;
   end createHud;

begin
   null;
   instance := NullUtil_Package.getInstance;

end org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory_Package;


